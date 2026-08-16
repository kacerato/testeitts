package com.android.tools.r8.internal;

public abstract class R2 extends Q2 {

    public final I50 f43784b;

    public R2(I50 i50) {
        super(null);
        this.f43784b = i50;
    }

    @Override
    public void a(Object obj, String str) {
        I50 i50 = this.f43784b;
        String str2 = "Unexpected value for property " + str + " with value " + obj;
        i50.getClass();
        throw new FM(i50, str2);
    }

    @Override
    public Q2 a(String str, String str2) {
        I50 i50 = this.f43784b;
        String str3 = "Unexpected annotation for property " + str + " of annotation type " + C9663tt0.a(str2, 0, str2.length()).a();
        i50.getClass();
        throw new FM(i50, str3);
    }

    @Override
    public void a(String str, String str2, String str3) {
        I50 i50 = this.f43784b;
        String str4 = "Unexpected enum for property " + str + " of enum type " + C9663tt0.a(str2, 0, str2.length()).a() + " with value " + str3;
        i50.getClass();
        throw new FM(i50, str4);
    }

    @Override
    public Q2 a(String str) {
        I50 i50 = this.f43784b;
        String str2 = "Unexpected array for property " + str;
        i50.getClass();
        throw new FM(i50, str2);
    }
}
