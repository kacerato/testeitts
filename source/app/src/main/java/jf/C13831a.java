package jf;

import com.jme3.math.Vector3f;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;
import p000if.C13702E;

public class C13831a {

    public static final Logger f92885f = Logger.getLogger(C13831a.class.getName());

    public static final boolean f92886g = false;

    public final int f92887a;

    public final int f92888b;

    public final int[] f92889c;

    public final Map<Vector3f, Integer> f92890d;

    public final Vector3f f92891e = new Vector3f();

    public C13831a(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "whole number of vectors");
        int i13 = i12 / 3;
        this.f92888b = i13;
        this.f92890d = new HashMap(i13);
        int[] iArr = new int[i13];
        this.f92889c = iArr;
        Arrays.fill(iArr, -1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.f92888b; i15++) {
            Vector3f vector3f = new Vector3f();
            d.g(floatBuffer, (i15 * 3) + i10, vector3f);
            h.U(vector3f, this.f92891e);
            Integer num = this.f92890d.get(this.f92891e);
            if (num == null) {
                num = Integer.valueOf(i14);
                i14++;
                this.f92890d.put(vector3f, num);
            }
            this.f92889c[i15] = num.intValue();
        }
        this.f92887a = i14;
    }

    public int a() {
        return this.f92887a;
    }

    public int b(int i10) {
        C13702E.q(i10, "vector index");
        return this.f92889c[i10];
    }

    public C13831a(FloatBuffer floatBuffer, int i10, int i11, float f10) {
        int i12;
        int i13;
        C13702E.t(floatBuffer, "buffer");
        int i14 = 0;
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i15 = i11 - i10;
        C13702E.H(i15 % 3 == 0, "whole number of vectors");
        C13702E.E(f10, "tolerance");
        int i16 = i15 / 3;
        this.f92888b = i16;
        this.f92890d = new HashMap(i16);
        int[] iArr = new int[i16];
        this.f92889c = iArr;
        Arrays.fill(iArr, -1);
        double d10 = f10;
        double d11 = d10 * d10;
        int i17 = 0;
        while (i14 < this.f92888b) {
            Vector3f vector3f = new Vector3f();
            d.g(floatBuffer, (i14 * 3) + i10, vector3f);
            Iterator<Map.Entry<Vector3f, Integer>> it = this.f92890d.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    i12 = -1;
                    break;
                }
                Map.Entry<Vector3f, Integer> next = it.next();
                if (h.q(next.getKey(), vector3f, d11)) {
                    i12 = next.getValue().intValue();
                    break;
                }
            }
            if (i12 == -1) {
                i13 = i17 + 1;
                this.f92890d.put(vector3f, Integer.valueOf(i17));
            } else {
                int i18 = i12;
                i13 = i17;
                i17 = i18;
            }
            this.f92889c[i14] = i17;
            i14++;
            i17 = i13;
        }
        this.f92887a = i17;
    }
}
