#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <linux/ioport.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/mutex.h>
	
#define LED_ADDRESS		 	0x05000020
#define LED_ADDRESS_RANGE	0x1000

#define DEVICE_NAME			"fpga_led_cjh"

static int led_usage = 0;
static unsigned long int *led_ioremap;

static int fpga_led_cjh_open(struct inode * inode, struct file * file){
	if (led_usage == -1)
			return -EBUSY;

		led_ioremap = ioremap(LED_ADDRESS, LED_ADDRESS_RANGE);

		if (check_mem_region((unsigned long int) led_ioremap, LED_ADDRESS_RANGE))
		{
			printk(KERN_WARNING "Can't get IO Region 0x%xn",(unsigned int) led_ioremap);
			return -1;
		}

		request_mem_region((unsigned long int) led_ioremap, LED_ADDRESS_RANGE, DEVICE_NAME);
		led_usage = 1;

		return 0;
	
	return 0;
}

static int fpga_led_cjh_release(struct inode * inode, struct file * file){
	release_mem_region((unsigned long int) led_ioremap, LED_ADDRESS_RANGE);
		iounmap(led_ioremap);

		led_usage = 0;
		return 0;
	
	return 0;
}
/*
static ssize_t fpga_led_cjh_read(struct file * file, char * buf, size_t length, loff_t * ofs){
	printk("fpga_led_cjh_read, \n");
	
	return 0;
}*/

static ssize_t fpga_led_cjh_write(struct file * file, const char * buf, size_t length, loff_t * ofs){
	unsigned char value ;
	unsigned char inv_value;

		get_user(value,buf);

		inv_value =(value >> 7 & 0x01)|(value >> 5 & 0x02)|(value >> 3 & 0x04) | (value >> 1 & 0x08) | (value << 1 & 0x10) | (value << 3 & 0x20) | (value << 5 & 0x40) |  (value << 7 & 0x80);

		*(unsigned short int *)led_ioremap = inv_value;

		return length;
}
/*
static DEFINE_MUTEX(fpga_led_cjh_mutex);
static long fpga_led_cjh_ioctl(struct file * file, unsigned int cmd, unsigned long arg){
	printk("fpga_led_cjh_ioctl, \n");
	
	switch(cmd){
		default:
			mutex_unlock(&fpga_led_cjh_mutex);
			return ENOTTY;
	}
	
	mutex_unlock(&fpga_led_cjh_mutex);
	return 0;
}
*/
static struct file_operations fpga_led_cjh_fops = {
	.owner = THIS_MODULE,
	.open = fpga_led_cjh_open,
	.release = fpga_led_cjh_release,
	//.read = fpga_led_cjh_read,
	.write = fpga_led_cjh_write,
	//.unlocked_ioctl = fpga_led_cjh_ioctl,
};

static struct miscdevice fpga_led_cjh_driver = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "fpga_led_cjh",
	.fops = &fpga_led_cjh_fops,
};

static int fpga_led_cjh_init(void){
	printk("fpga_led_cjh_init, \n");
	
	return misc_register(&fpga_led_cjh_driver);
}

static void fpga_led_cjh_exit(void){
	printk("fpga_led_cjh_exit, \n");

	misc_deregister(&fpga_led_cjh_driver);
	
}

module_init(fpga_led_cjh_init);
module_exit(fpga_led_cjh_exit);

MODULE_AUTHOR("Hanback");
MODULE_DESCRIPTION("fpga_led_driver test");
MODULE_LICENSE("Dual BSD/GPL");
