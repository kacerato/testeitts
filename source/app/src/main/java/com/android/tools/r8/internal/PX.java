package com.android.tools.r8.internal;

import java.util.ArrayList;
import org.objectweb.asm.Opcodes;

public final class PX extends TX {

    public ArrayList f43252b;

    public ArrayList f43253c;

    public ArrayList f43254d;

    public ArrayList f43255e;

    public ArrayList f43256f;

    public ArrayList f43257g;

    public PX() {
        super(Opcodes.ASM9, null);
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b(String str) {
        if (this.f43252b == null) {
            this.f43252b = new ArrayList(5);
        }
        this.f43252b.add(str);
    }

    @Override
    public final void c(String str) {
        if (this.f43256f == null) {
            this.f43256f = new ArrayList(5);
        }
        this.f43256f.add(str);
    }

    @Override
    public final void a(String str) {
    }

    @Override
    public final void a(int i10, String str, String str2) {
        if (this.f43253c == null) {
            this.f43253c = new ArrayList(5);
        }
        this.f43253c.add(new SX());
    }

    @Override
    public final void b(int i10, String str, String... strArr) {
        if (this.f43255e == null) {
            this.f43255e = new ArrayList(5);
        }
        ArrayList arrayList = this.f43255e;
        AbstractC9839uw0.a(strArr);
        arrayList.add(new QX());
    }

    @Override
    public final void a(int i10, String str, String... strArr) {
        if (this.f43254d == null) {
            this.f43254d = new ArrayList(5);
        }
        ArrayList arrayList = this.f43254d;
        AbstractC9839uw0.a(strArr);
        arrayList.add(new MX());
    }

    @Override
    public final void a(String str, String... strArr) {
        if (this.f43257g == null) {
            this.f43257g = new ArrayList(5);
        }
        ArrayList arrayList = this.f43257g;
        AbstractC9839uw0.a(strArr);
        arrayList.add(new RX());
    }
}
