package kf;

import android.content.Context;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import java.util.BitSet;
import java.util.List;
import java.util.Random;
import java.util.logging.Logger;
import jf.g;
import jf.h;
import p000if.C13702E;

public class C13974a extends Random {

    public static final Logger f95066b = Logger.getLogger(C13974a.class.getName());

    public static final long f95067c = 37705297950129619L;

    public static final boolean f95068d = false;

    public C13974a() {
    }

    public int a(double d10) {
        double exp = Math.exp(-d10);
        double d11 = 1.0d;
        int i10 = -1;
        do {
            i10++;
            d11 *= nextDouble();
        } while (d11 > exp);
        return i10;
    }

    public Quaternion b() {
        return c(null);
    }

    public Quaternion c(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        double d10 = 0.0d;
        while (true) {
            if (d10 >= 0.1d && d10 <= 1.0d) {
                quaternion.multLocal((float) (1.0d / Math.sqrt(d10)));
                return quaternion;
            }
            quaternion.set(nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f));
            d10 = g.l(quaternion);
        }
    }

    public Vector3f d() {
        return e(null);
    }

    public Vector3f e(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        double d10 = 0.0d;
        while (true) {
            if (d10 >= 0.1d && d10 <= 1.0d) {
                vector3f.multLocal((float) (1.0d / Math.sqrt(d10)));
                return vector3f;
            }
            vector3f.set(nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f));
            d10 = h.F(vector3f);
        }
    }

    public Vector3f f() {
        return g(null);
    }

    public Vector3f g(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        for (double d10 = 2.0d; d10 > 1.0d; d10 = h.F(vector3f)) {
            vector3f.set(nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f), nextFloat(-1.0f, 1.0f));
        }
        return vector3f;
    }

    public Vector3f h(Vector3f vector3f) {
        C13702E.A(vector3f, Context.INPUT_SERVICE);
        Vector3f normalize = vector3f.normalize();
        Vector3f vector3f2 = new Vector3f();
        double d10 = 0.0d;
        while (d10 < 0.1d) {
            normalize.cross(d(), vector3f2);
            d10 = h.F(vector3f2);
        }
        vector3f2.multLocal((float) (1.0d / Math.sqrt(d10)));
        return vector3f2;
    }

    public int i(BitSet bitSet, int i10, boolean z10) {
        int nextClearBit;
        int previousClearBit;
        C13702E.t(bitSet, "bit set");
        C13702E.i(i10, "max index", 0, bitSet.size() - 1);
        if (z10) {
            nextClearBit = bitSet.nextSetBit(0);
            previousClearBit = bitSet.previousSetBit(i10);
        } else {
            nextClearBit = bitSet.nextClearBit(0);
            previousClearBit = bitSet.previousClearBit(i10);
        }
        if (nextClearBit == -1) {
            return -1;
        }
        if (nextClearBit == previousClearBit) {
            return nextClearBit;
        }
        int i11 = (previousClearBit - nextClearBit) + 1;
        int nextInt = nextInt(i11);
        while (true) {
            int i12 = nextInt + nextClearBit;
            if (bitSet.get(i12) == z10) {
                return i12;
            }
            nextInt = nextInt(i11);
        }
    }

    public <E> E j(List<E> list) {
        C13702E.t(list, "list");
        int size = list.size();
        if (size == 0) {
            return null;
        }
        return list.get(nextInt(size));
    }

    public <E> E k(E[] eArr) {
        C13702E.t(eArr, "array");
        int length = eArr.length;
        if (length == 0) {
            return null;
        }
        return eArr[nextInt(length)];
    }

    public float nextFloat(float f10, float f11) {
        return f10 + (nextFloat() * (f11 - f10));
    }

    public int nextInt(int i10, int i11) {
        int max = Math.max(i10, i11);
        int min = Math.min(i10, i11);
        return min + nextInt((max - min) + 1);
    }

    public C13974a(long j10) {
        super(j10);
    }
}
