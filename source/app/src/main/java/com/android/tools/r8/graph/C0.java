package com.android.tools.r8.graph;

import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.List;

public final class C0 {

    public static final boolean f36186c = true;

    public ByteArrayOutputStream f36187a;

    public ObjectOutputStream f36188b;

    public C0(D0 d02) {
    }

    public final void a(L2 l22) {
        this.f36188b.writeInt(l22.f36561e);
        this.f36188b.write(l22.f36562f);
    }

    public final void a(C2 c22) {
        this.f36188b.writeShort(c22.f36190e.f36158b);
        if (c22.f36190e.a()) {
            C4554l1 l02 = c22.l0();
            a(l02.f38297f.f36592f);
            a(l02.f37449i.f36592f);
            a(l02.f38298g);
            return;
        }
        A2 m02 = c22.m0();
        a(m02.f38297f.f36592f);
        a(m02.f36127i);
        a(m02.f38298g);
    }

    public final void a(I2 i22) {
        a(i22.f36440e.f36592f);
        M2[] m2Arr = i22.f36441f.f36675b;
        this.f36188b.writeInt(m2Arr.length);
        for (M2 m22 : m2Arr) {
            a(m22.f36592f);
        }
    }

    public final void a(List list) {
        this.f36188b.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            R2 r22 = (R2) it.next();
            this.f36188b.writeByte(r22.G0().f36904b);
            switch (r22.G0().ordinal()) {
                case 3:
                    this.f36188b.writeInt(r22.w0().f36754d);
                    break;
                case 4:
                    this.f36188b.writeLong(r22.x0().f36756d);
                    break;
                case 5:
                    this.f36188b.writeFloat(r22.v0().f36752d);
                    break;
                case 6:
                    this.f36188b.writeDouble(r22.s0().f36750d);
                    break;
                case 7:
                    a((I2) r22.A0().f36759d);
                    break;
                case 8:
                    a((C2) r22.z0().f36759d);
                    break;
                case 9:
                    a((L2) r22.D0().f36759d);
                    break;
                case 10:
                    a(((M2) r22.E0().f36759d).f36592f);
                    break;
                default:
                    if (!f36186c) {
                        throw new AssertionError();
                    }
                    break;
            }
        }
    }
}
