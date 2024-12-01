@nogc nothrow:

extern(C) @system
{
	enum CYW43_WL_GPIO_LED_PIN = 0;
	enum LED_DELAY_MS = 250;

	int cyw43_arch_init();
	void cyw43_arch_gpio_put(uint wl_gpio, bool value);
	void sleep_ms(uint ms);
}

/** 
 * Main entry point of the application.
 */
extern(C) void main()
{
    cast(void)cyw43_arch_init();
    while (true) {
        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, true);
        sleep_ms(LED_DELAY_MS);
        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, false);
        sleep_ms(LED_DELAY_MS);
    }
}
