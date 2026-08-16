package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import ei.C13155a;
import java.nio.ShortBuffer;
import kotlin.jvm.internal.C14021s;

public abstract class AbstractC5635Np implements InterfaceC5426Ka, InterfaceC5580Mq0<AbstractC5635Np> {

    public static final AbstractC5635Np[] f42702c = new AbstractC5635Np[0];

    public static final int[] f42703d = new int[0];

    public static final boolean f42704e = true;

    public int f42705b;

    public AbstractC5635Np(InterfaceC10042w8 interfaceC10042w8) {
        this.f42705b = ((C5693Op) interfaceC10042w8).f43050d - 1;
    }

    public static int e(int i10, int i11) {
        return ((i10 & 15) << 4) | (i11 & 15);
    }

    public int[] A() {
        return null;
    }

    public boolean B() {
        return false;
    }

    public boolean C() {
        return false;
    }

    public boolean D() {
        return false;
    }

    @Override
    public final AbstractC5635Np E() {
        return this;
    }

    public boolean G() {
        return false;
    }

    public boolean H() {
        return this instanceof C9987vq;
    }

    public boolean I() {
        return false;
    }

    public boolean J() {
        return false;
    }

    public boolean K() {
        return false;
    }

    public boolean L() {
        return this instanceof C5460Ko;
    }

    public boolean M() {
        return !L() && (this instanceof C8154kr);
    }

    public boolean N() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public abstract int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf);

    public abstract String a(C9970vk0 c9970vk0);

    public void a(AbstractC4446f6 abstractC4446f6) {
    }

    public abstract void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer);

    public abstract void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr);

    public abstract void a(C6382aB c6382aB);

    public com.android.tools.r8.graph.A2 b() {
        return null;
    }

    public abstract String b(C9970vk0 c9970vk0);

    public abstract void b(AbstractC9213rA abstractC9213rA);

    public C5516Ln c() {
        return null;
    }

    public C7479go d() {
        return null;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public C8312lo f() {
        return null;
    }

    public C7145eo g() {
        return null;
    }

    public C4554l1 getField() {
        return null;
    }

    public InterfaceC5404Jp h() {
        return null;
    }

    public abstract int hashCode();

    public C5577Mp i() {
        return null;
    }

    public InterfaceC6984dq j() {
        return null;
    }

    public C7821ir k() {
        return null;
    }

    public boolean l() {
        return false;
    }

    @Override
    public final InterfaceC5638Nq0<AbstractC5635Np> m() {
        throw new C5417Jv0();
    }

    public com.android.tools.r8.graph.D0 n() {
        return null;
    }

    @Override
    public final boolean o() {
        return l();
    }

    public int p() {
        return v();
    }

    @Override
    public final W9 r() {
        return null;
    }

    @Override
    public final AbstractC5635Np s() {
        return this;
    }

    public abstract String t();

    public String toString() {
        return b(C9970vk0.f53318b);
    }

    public int u() {
        return this.f42705b;
    }

    public abstract int v();

    public int w() {
        return 0;
    }

    public abstract int y();

    public abstract String z();

    public static short d(int i10, int i11) {
        return (short) (((i10 & 255) << 8) | (i11 & 255));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        AbstractC5635Np abstractC5635Np2 = abstractC5635Np;
        int a10 = abstractC8953pf.a(p(), abstractC5635Np2.p());
        if (a10 != 0) {
            return a10;
        }
        int a11 = abstractC8953pf.a(u(), abstractC5635Np2.u());
        return a11 != 0 ? a11 : a(abstractC5635Np2, abstractC8953pf);
    }

    public final String b(int i10) {
        return C10656zq0.a(u() + i10, 2) + " (" + a(i10) + ")";
    }

    public C8145ko e() {
        return null;
    }

    public void e(int i10) {
        this.f42705b = i10;
    }

    public AbstractC5635Np() {
        this.f42705b = -1;
    }

    public final String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, C10656zq0.a(u(), 2), 6);
        sb2.append(": ");
        C10656zq0.b(sb2, t(), 20);
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }

    public static char a(InterfaceC10042w8 interfaceC10042w8) {
        return (char) (((C5693Op) interfaceC10042w8).b() & 65535);
    }

    public static int a(C5693Op c5693Op) {
        return ((((char) (c5693Op.b() & 65535)) << 16) & (-65536)) | (((char) (c5693Op.b() & 65535)) & C14021s.f95775c);
    }

    public static void a(int i10, int i11, ShortBuffer shortBuffer) {
        shortBuffer.put((short) (((i10 & 255) << 8) | (i11 & 255)));
    }

    public static void a(int i10, int i11, ShortBuffer shortBuffer, int i12) {
        shortBuffer.put((short) (((i10 & 15) << 12) | ((i11 & 15) << 8) | (i12 & 255)));
    }

    public static void a(long j10, ShortBuffer shortBuffer) {
        shortBuffer.put((short) (j10 & Sg.b.f23266s));
        shortBuffer.put((short) ((j10 >> 16) & Sg.b.f23266s));
    }

    public static void a(AbstractC4406d4 abstractC4406d4, ShortBuffer shortBuffer, C4766w5 c4766w5) {
        int a10 = abstractC4406d4.a(c4766w5);
        if (!f42704e && a10 != (65535 & a10)) {
            throw new AssertionError();
        }
        shortBuffer.put((short) a10);
    }

    public String b(AbstractC5635Np abstractC5635Np) {
        throw new C6570bJ("Instruction " + ((Object) abstractC5635Np) + " is not a payload user");
    }

    public static String a(int i10) {
        if (i10 < 0) {
            return Integer.toString(i10);
        }
        return "+" + i10;
    }

    public final String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(C13155a.f85806a);
        if (str != null) {
            C10656zq0.b(sb2, z(), 20);
            sb2.append(str);
        } else {
            sb2.append(z());
        }
        return sb2.toString();
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.f52553a.a(p());
        c9547tA.f52553a.a(u());
        b(abstractC9213rA);
    }

    public String a(AbstractC5635Np abstractC5635Np) {
        throw new C6570bJ("Instruction " + ((Object) abstractC5635Np) + " is not a payload user");
    }
}
