// SPDX-FileCopyrightText: 2024 Noeliel
//
// SPDX-License-Identifier: GPL-2.0-only

const c = @cImport(@cInclude("printk.h"));

export const __UNIQUE_ID_license250 linksection(".modinfo") = [_:0]u8{ 'l', 'i', 'c', 'e', 'n', 's', 'e', '=', 'G', 'P', 'L' };

export fn init_module() linksection(".init.text") callconv(.C) c_int {
    _ = c._printk("hello, kernel!");
    return 0;
}

export fn cleanup_module() linksection(".exit.text") callconv(.C) void {
    _ = c._printk("so long, kernel!");
}
