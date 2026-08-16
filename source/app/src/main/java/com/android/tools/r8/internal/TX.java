package com.android.tools.r8.internal;

public abstract class TX {

    public final TX f44496a;

    public TX(int i10, TX tx) {
        if (i10 != 589824 && i10 != 524288 && i10 != 458752 && i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 17432576) {
            throw new IllegalArgumentException(T60.a(i10, "Unsupported api "));
        }
        if (i10 == 17432576) {
            AbstractC5040Dh.a(this);
        }
        this.f44496a = tx;
    }

    public abstract void a();

    public abstract void a(int i10, String str, String str2);

    public abstract void a(int i10, String str, String... strArr);

    public abstract void a(String str);

    public abstract void a(String str, String... strArr);

    public abstract void b(int i10, String str, String... strArr);

    public abstract void b(String str);

    public abstract void c(String str);
}
