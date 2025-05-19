var _totalram = ((memory_totalram(human_readable) != "(null)") ? (memory_totalram(human_readable) + ((human_readable) ? "" : " B")) : "(null)");
swprev = string_width(text);
shprev = string_height(text);
text = 
  "OS DEVICE NAME: " + os_device_name() + "\n" +
  "OS PRODUCT NAME: " + os_product_name() + "\n" +
  "OS KERNEL NAME: " + os_kernel_name() + "\n" +
  "OS KERNEL RELEASE: " + os_kernel_release() + "\n" +
  "OS ARCHITECTURE: " + os_architecture() + "\n" +
  "CPU PROCESSOR: " + cpu_processor() + "\n" +
  "CPU VENDOR: " + cpu_vendor() + "\n" +
  "CPU CORE COUNT: " + cpu_core_count() + "\n" +
  "CPU PROCESSOR COUNT: " + cpu_processor_count() + "\n" +
  "RANDOM-ACCESS MEMORY TOTAL: " + _totalram + "\n" +
  "RANDOM-ACCESS MEMORY USED: " + ((memory_usedram(human_readable) != "(null)") ? (memory_usedram(human_readable) + ((human_readable) ? "" : " B")) : "(null)") + "\n" +
  "RANDOM-ACCESS MEMORY FREE: " + ((memory_freeram(human_readable) != "(null)") ? (memory_freeram(human_readable) + ((human_readable) ? "" : " B")) : "(null)") + "\n" +
  "SWAP MEMORY TOTAL: " + ((memory_totalswap(human_readable) != "(null)") ? (memory_totalswap(human_readable) + ((human_readable) ? "" : " B")) : "(null)") + "\n" +
  "SWAP MEMORY USED: " + ((memory_usedswap(human_readable) != "(null)") ? (memory_usedswap(human_readable) + ((human_readable) ? "" : " B")) : "(null)") + "\n" +
  "SWAP MEMORY FREE: " + ((memory_freeswap(human_readable) != "(null)") ? (memory_freeswap(human_readable) + ((human_readable) ? "" : " B")) : "(null)") + "\n" +
  "GPU MANUFACTURER: " + gpu_manufacturer() + "\n" +
  "GPU RENDERER: " + gpu_renderer() + "\n" +
  "GPU MEMORY: " + ((memory_totalvram(human_readable) != "(null)") ? (memory_totalvram(human_readable) + ((human_readable) ? "" : " B")) : _totalram);
if (swprev != string_width(text) || shprev != string_height(text)) {
  window_set_rectangle(
  window_get_x() + ((window_get_width() - (string_width(text) + 16)) / 2),
  window_get_y() + ((window_get_height() - (string_height(text) + 16)) / 2),
  string_width(text) + 16, string_height(text) + 16);
}

display_set_gui_size(window_get_width(), window_get_height());
draw_set_color(c_white);
draw_set_font(fnt_example);
draw_text(8, 8, text);