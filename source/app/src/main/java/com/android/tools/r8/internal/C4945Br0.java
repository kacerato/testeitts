package com.android.tools.r8.internal;

public final class C4945Br0 {

    public final StringBuilder f39028a;

    public final StringBuilder f39029b = new StringBuilder();

    public boolean f39030c = false;

    public C4945Br0(StringBuilder sb2) {
        this.f39028a = sb2;
    }

    public final void a(CharSequence charSequence) {
        if (this.f39030c) {
            this.f39030c = false;
            this.f39028a.append((CharSequence) this.f39029b);
        }
        this.f39028a.append(charSequence);
    }

    public final void a() {
        this.f39028a.append((CharSequence) "\n");
        this.f39030c = true;
    }
}
