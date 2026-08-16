package Gb;

import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import vc.q;

public class c {

    public double f7729a;

    public double f7730b;

    public int f7731c;

    public int f7732d;

    public final Vertex f7733e;

    public enum a {
        VERTICAL,
        HORIZONTAL_X,
        HORIZONTAL_Z
    }

    public c(double length, double radius, int stacks, int slices) {
        this(length, radius, stacks, slices, a.VERTICAL);
    }

    public Vertex a() {
        return this.f7733e;
    }

    public c(double length, double radius, int stacks, int slices, a orientation) {
        this.f7733e = new Vertex();
        double L10 = Nc.b.L(radius * 2.0d, length);
        this.f7730b = L10;
        this.f7729a = radius;
        this.f7731c = stacks;
        this.f7732d = slices;
        Vertex c10 = new e(radius, stacks, slices).c();
        q qVar = new q(c10.i1());
        NativeIntBuffer V02 = c10.V0();
        int j12 = c10.j1();
        int W02 = c10.W0();
        int i10 = W02 * 3;
        int i11 = j12 * 2;
        q qVar2 = new q(i11);
        int i12 = W02 * 6;
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i12);
        q qVar3 = new q((slices + 1) * 2);
        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(slices * 6);
        float f10 = Float.POSITIVE_INFINITY;
        for (int i13 = 0; i13 < j12; i13++) {
            Vector3 h10 = qVar.h(i13);
            if (h10.getY() < f10) {
                f10 = h10.getY();
            }
        }
        float f11 = (float) ((L10 / 2.0d) - radius);
        int i14 = 0;
        int i15 = 0;
        while (i14 < j12) {
            Vector3 h11 = qVar.h(i14);
            float x10 = h11.getX();
            float y10 = h11.getY() + f11;
            NativeIntBuffer nativeIntBuffer3 = nativeIntBuffer2;
            float z10 = h11.getZ();
            qVar2.s(x10, y10, z10);
            if (Math.abs(h11.getY() - f10) <= 1.0E-4f) {
                qVar3.s(x10, y10, z10);
                i15++;
            }
            i14++;
            nativeIntBuffer2 = nativeIntBuffer3;
        }
        NativeIntBuffer nativeIntBuffer4 = nativeIntBuffer2;
        for (int i16 = 0; i16 < j12; i16++) {
            Vector3 h12 = qVar.h(i16);
            float x11 = h12.getX();
            float f12 = (-h12.getY()) - f11;
            float z11 = h12.getZ();
            qVar2.s(x11, f12, z11);
            if (Math.abs(h12.getY() - f10) <= 1.0E-4f) {
                qVar3.s(x11, f12, z11);
                i15++;
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            nativeIntBuffer.put(V02.get(i17));
        }
        for (int i18 = 0; i18 < W02; i18++) {
            int i19 = i18 * 3;
            int i20 = V02.get(i19);
            int i21 = V02.get(i19 + 1);
            nativeIntBuffer.put(V02.get(i19 + 2) + j12);
            nativeIntBuffer.put(i21 + j12);
            nativeIntBuffer.put(i20 + j12);
        }
        int i22 = i15 / 2;
        int i23 = i22 - 1;
        for (int i24 = 0; i24 < i23; i24++) {
            int i25 = i11 + i24;
            int i26 = i25 + 1;
            int i27 = i11 + i22 + i24;
            nativeIntBuffer4.put(i27);
            nativeIntBuffer4.put(i26);
            nativeIntBuffer4.put(i25);
            nativeIntBuffer4.put(i27);
            nativeIntBuffer4.put(i27 + 1);
            nativeIntBuffer4.put(i26);
        }
        int i28 = i23 * 6;
        int i29 = i11 + i15;
        q qVar4 = new q(i29);
        NativeIntBuffer nativeIntBuffer5 = new NativeIntBuffer(i12 + i28);
        for (int i30 = 0; i30 < i11; i30++) {
            qVar4.u(qVar2.h(i30));
        }
        for (int i31 = 0; i31 < i15; i31++) {
            qVar4.u(qVar3.h(i31));
        }
        for (int i32 = 0; i32 < i12; i32++) {
            nativeIntBuffer5.put(nativeIntBuffer.get(i32));
        }
        for (int i33 = 0; i33 < i28; i33++) {
            nativeIntBuffer5.put(nativeIntBuffer4.get(i33));
        }
        int ordinal = orientation.ordinal();
        if (ordinal == 1) {
            Quaternion n10 = Quaternion.n(0.0f, 0.0f, 90.0f);
            for (int i34 = 0; i34 < i29; i34++) {
                Vector3 h13 = qVar4.h(i34);
                n10.q0(h13, h13);
                qVar4.C(i34, h13);
            }
        } else if (ordinal == 2) {
            Quaternion n11 = Quaternion.n(90.0f, 0.0f, 0.0f);
            for (int i35 = 0; i35 < i29; i35++) {
                Vector3 h14 = qVar4.h(i35);
                n11.q0(h14, h14);
                qVar4.C(i35, h14);
            }
        }
        this.f7733e.r2(qVar4);
        this.f7733e.i2(nativeIntBuffer5);
        this.f7733e.F(true, true);
    }
}
