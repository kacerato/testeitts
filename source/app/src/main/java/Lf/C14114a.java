package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14114a extends Mesh {

    public static final int f96364e = 3;

    public static final int f96366g = 3;

    public static final boolean f96369j = false;

    public int f96370b = 0;

    public final List<Vector3f> f96371c = new ArrayList(258);

    public final Map<Long, Integer> f96372d = new HashMap(252);

    public static final int[] f96365f = {0, 2, 5, 1, 4, 3, 0, 3, 4, 1, 5, 2, 0, 4, 2, 1, 3, 5, 0, 5, 3, 1, 2, 4};

    public static final Logger f96367h = Logger.getLogger(C14114a.class.getName());

    public static final Vector3f[] f96368i = {new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(0.0f, 0.0f, 1.0f)};

    public class C1871a implements Comparator<Integer> {
        public C1871a() {
        }

        @Override
        public int compare(Integer num, Integer num2) {
            Vector3f vector3f = (Vector3f) C14114a.this.f96371c.get(num.intValue());
            double atan2 = Math.atan2(vector3f.f81611x, vector3f.f81613z);
            Vector3f vector3f2 = (Vector3f) C14114a.this.f96371c.get(num2.intValue());
            return Double.compare(atan2, Math.atan2(vector3f2.f81611x, vector3f2.f81613z));
        }
    }

    public C14114a() {
    }

    public final int b(Vector3f vector3f) {
        this.f96371c.add(vector3f.mult(1.0f / vector3f.length()));
        int i10 = this.f96370b;
        this.f96370b = i10 + 1;
        return i10;
    }

    public final int c(int i10, int i11) {
        boolean z10 = i10 < i11;
        long j10 = ((z10 ? i10 : i11) << 32) + (z10 ? i11 : i10);
        Integer num = this.f96372d.get(Long.valueOf(j10));
        if (num != null) {
            return num.intValue();
        }
        int b10 = b(jf.h.M(this.f96371c.get(i10), this.f96371c.get(i11), null));
        this.f96372d.put(Long.valueOf(j10), Integer.valueOf(b10));
        return b10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14114a(int i10, float f10, float f11) {
        boolean z10;
        int i11 = 0;
        C13702E.i(i10, "number of refinement steps", 0, 13);
        C13702E.E(f10, TestVFXEffect.f77524P);
        C13702E.E(f11, "height");
        Vector3f[] vector3fArr = f96368i;
        b(vector3fArr[0]);
        b(vector3fArr[1]);
        int i12 = 2;
        b(vector3fArr[2]);
        b(vector3fArr[3]);
        int i13 = 4;
        b(vector3fArr[4]);
        b(vector3fArr[5]);
        ArrayList arrayList = new ArrayList(24);
        for (int i14 : f96365f) {
            arrayList.add(Integer.valueOf(i14));
        }
        int i15 = 0;
        while (i15 < i10) {
            ArrayList arrayList2 = new ArrayList(arrayList.size() * i13);
            for (int i16 = i11; i16 < arrayList.size(); i16 += 3) {
                Integer num = (Integer) arrayList.get(i16);
                int intValue = num.intValue();
                Integer num2 = (Integer) arrayList.get(i16 + 1);
                int intValue2 = num2.intValue();
                Integer num3 = (Integer) arrayList.get(i16 + 2);
                int intValue3 = num3.intValue();
                int c10 = c(intValue, intValue2);
                int c11 = c(intValue2, intValue3);
                int c12 = c(intValue3, intValue);
                arrayList2.add(num);
                arrayList2.add(Integer.valueOf(c10));
                arrayList2.add(Integer.valueOf(c12));
                arrayList2.add(num2);
                arrayList2.add(Integer.valueOf(c11));
                arrayList2.add(Integer.valueOf(c10));
                arrayList2.add(num3);
                arrayList2.add(Integer.valueOf(c12));
                arrayList2.add(Integer.valueOf(c11));
                arrayList2.add(Integer.valueOf(c10));
                arrayList2.add(Integer.valueOf(c11));
                arrayList2.add(Integer.valueOf(c12));
            }
            i15++;
            arrayList = arrayList2;
            i11 = 0;
            i13 = 4;
        }
        this.f96372d.clear();
        Iterator<Vector3f> it = this.f96371c.iterator();
        int i17 = 0;
        while (it.hasNext()) {
            if (it.next().f81612y == 0.0f) {
                i17++;
            }
        }
        HashMap hashMap = new HashMap(i17);
        int size = this.f96371c.size() + i17;
        int i18 = size * 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i18);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(i18);
        float f12 = f11 / 2.0f;
        for (Vector3f vector3f : this.f96371c) {
            createFloatBuffer.put(vector3f.f81611x * f10);
            float f13 = vector3f.f81612y;
            if (f13 >= 0.0f) {
                createFloatBuffer.put((f13 * f10) + f12);
            } else {
                createFloatBuffer.put((-f12) + (f13 * f10));
            }
            createFloatBuffer.put(vector3f.f81613z * f10);
            createFloatBuffer2.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
        }
        for (int i19 = 0; i19 < this.f96371c.size(); i19++) {
            Vector3f vector3f2 = this.f96371c.get(i19);
            if (vector3f2.f81612y == 0.0f) {
                hashMap.put(Integer.valueOf(i19), Integer.valueOf(createFloatBuffer.position() / 3));
                createFloatBuffer.put(vector3f2.f81611x * f10);
                createFloatBuffer.put(-f12);
                createFloatBuffer.put(vector3f2.f81613z * f10);
                createFloatBuffer2.put(vector3f2.f81611x);
                createFloatBuffer2.put(0.0f);
                createFloatBuffer2.put(vector3f2.f81613z);
            }
        }
        createFloatBuffer.flip();
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        createFloatBuffer2.flip();
        setBuffer(VertexBuffer.Type.Normal, 3, createFloatBuffer2);
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(size, arrayList.size() + (i17 * 6));
        int size2 = arrayList.size() / 3;
        int i20 = 0;
        while (i20 < size2) {
            int i21 = i20 * 3;
            Integer num4 = (Integer) arrayList.get(i21);
            int intValue4 = num4.intValue();
            Integer num5 = (Integer) arrayList.get(i21 + 1);
            int intValue5 = num5.intValue();
            Integer num6 = (Integer) arrayList.get(i21 + i12);
            int intValue6 = num6.intValue();
            float f14 = this.f96371c.get(intValue4).f81612y;
            float f15 = this.f96371c.get(intValue5).f81612y;
            float f16 = this.f96371c.get(intValue6).f81612y;
            if ((f14 == 0.0f || f15 == 0.0f || f16 == 0.0f) && (f14 < 0.0f || f15 < 0.0f || f16 < 0.0f)) {
                intValue4 = f14 == 0.0f ? ((Integer) hashMap.get(num4)).intValue() : intValue4;
                z10 = false;
                intValue5 = f15 == 0.0f ? ((Integer) hashMap.get(num5)).intValue() : intValue5;
                if (f16 == 0.0f) {
                    intValue6 = ((Integer) hashMap.get(num6)).intValue();
                }
            } else {
                z10 = false;
            }
            createIndexBuffer.put(intValue4);
            createIndexBuffer.put(intValue5);
            createIndexBuffer.put(intValue6);
            i20++;
            i12 = 2;
        }
        Integer[] numArr = (Integer[]) hashMap.o().toArray(new Integer[0]);
        Arrays.sort(numArr, new C1871a());
        this.f96371c.clear();
        int i22 = 0;
        while (true) {
            int i23 = i17 - 1;
            if (i22 < i23) {
                Integer num7 = numArr[i22];
                int intValue7 = num7.intValue();
                i22++;
                Integer num8 = numArr[i22];
                int intValue8 = num8.intValue();
                int intValue9 = ((Integer) hashMap.get(num7)).intValue();
                createIndexBuffer.put(intValue9).put(((Integer) hashMap.get(num8)).intValue()).put(intValue8);
                createIndexBuffer.put(intValue9).put(intValue8).put(intValue7);
            } else {
                Integer num9 = numArr[i23];
                int intValue10 = num9.intValue();
                Integer num10 = numArr[0];
                int intValue11 = num10.intValue();
                int intValue12 = ((Integer) hashMap.get(num9)).intValue();
                int intValue13 = ((Integer) hashMap.get(num10)).intValue();
                hashMap.clear();
                createIndexBuffer.put(intValue12).put(intValue13).put(intValue11);
                createIndexBuffer.put(intValue12).put(intValue11).put(intValue10);
                VertexBuffer.Format format = createIndexBuffer.getFormat();
                Buffer buffer = createIndexBuffer.getBuffer();
                buffer.flip();
                setBuffer(VertexBuffer.Type.Index, 3, format, buffer);
                updateBound();
                setStatic();
                return;
            }
        }
    }
}
