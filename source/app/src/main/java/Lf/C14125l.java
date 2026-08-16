package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13720p;

public class C14125l extends Mesh {

    public static final int f96423g = 3;

    public static final int f96425i = 3;

    public static final boolean f96428l = false;

    public final float f96429b;

    public int f96430c;

    public final List<Float> f96431d;

    public final List<Vector3f> f96432e;

    public final Map<Long, Integer> f96433f;

    public static final int[] f96424h = {6, 2, 8, 1, 4, 3, 0, 3, 9, 1, 5, 2, 6, 7, 2, 1, 3, 5, 0, 10, 3, 1, 2, 4};

    public static final Logger f96426j = Logger.getLogger(C14125l.class.getName());

    public static final Vector3f[] f96427k = {new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(0.0f, 0.0f, 1.0f)};

    public C14125l() {
        this.f96430c = 0;
        this.f96431d = new ArrayList(305);
        this.f96432e = new ArrayList(305);
        this.f96433f = new HashMap(294);
        this.f96429b = 1.0f;
    }

    public static float b(Vector3f vector3f) {
        if (vector3f.length() > 0.0f) {
            return (float) Math.asin(vector3f.f81613z / r0);
        }
        return 0.0f;
    }

    public static float c(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        if (f10 == 0.0f && vector3f.f81612y == 0.0f) {
            return 0.0f;
        }
        return -FastMath.atan2(vector3f.f81612y, f10);
    }

    private int d(int i10, int i11) {
        boolean z10 = i10 < i11;
        long j10 = ((z10 ? i10 : i11) << 32) + (z10 ? i11 : i10);
        Integer num = this.f96433f.get(Long.valueOf(j10));
        if (num != null) {
            return num.intValue();
        }
        Vector3f M10 = jf.h.M(this.f96432e.get(i10), this.f96432e.get(i11), null);
        int a10 = a(M10, M10.f81612y == 0.0f ? this.f96431d.get(i10) : null);
        this.f96433f.put(Long.valueOf(j10), Integer.valueOf(a10));
        return a10;
    }

    public final int a(Vector3f vector3f, Float f10) {
        this.f96432e.add(vector3f.mult(this.f96429b / vector3f.length()));
        this.f96431d.add(f10);
        int i10 = this.f96430c;
        this.f96430c = i10 + 1;
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14125l(int i10, float f10) {
        int i11 = 0;
        this.f96430c = 0;
        this.f96431d = new ArrayList(305);
        this.f96432e = new ArrayList(305);
        this.f96433f = new HashMap(294);
        C13702E.i(i10, "number of refinement steps", 0, 13);
        C13702E.E(f10, TestVFXEffect.f77524P);
        this.f96429b = f10;
        Vector3f[] vector3fArr = f96427k;
        Vector3f vector3f = vector3fArr[0];
        Float valueOf = Float.valueOf(0.0f);
        a(vector3f, valueOf);
        Vector3f vector3f2 = vector3fArr[1];
        Float valueOf2 = Float.valueOf(0.5f);
        a(vector3f2, valueOf2);
        a(vector3fArr[2], null);
        a(vector3fArr[3], null);
        int i12 = 4;
        a(vector3fArr[4], valueOf2);
        a(vector3fArr[5], valueOf2);
        Vector3f vector3f3 = vector3fArr[0];
        Float valueOf3 = Float.valueOf(1.0f);
        a(vector3f3, valueOf3);
        a(vector3fArr[4], valueOf3);
        a(vector3fArr[5], valueOf3);
        a(vector3fArr[4], valueOf);
        a(vector3fArr[5], valueOf);
        ArrayList arrayList = new ArrayList(24);
        for (int i13 : f96424h) {
            arrayList.add(Integer.valueOf(i13));
        }
        int i14 = 0;
        while (i14 < i10) {
            ArrayList arrayList2 = new ArrayList(arrayList.size() * i12);
            for (int i15 = i11; i15 < arrayList.size(); i15 += 3) {
                Integer num = (Integer) arrayList.get(i15);
                int intValue = num.intValue();
                Integer num2 = (Integer) arrayList.get(i15 + 1);
                int intValue2 = num2.intValue();
                Integer num3 = (Integer) arrayList.get(i15 + 2);
                int intValue3 = num3.intValue();
                int d10 = d(intValue, intValue2);
                int d11 = d(intValue2, intValue3);
                int d12 = d(intValue3, intValue);
                arrayList2.add(num);
                arrayList2.add(Integer.valueOf(d10));
                arrayList2.add(Integer.valueOf(d12));
                arrayList2.add(num2);
                arrayList2.add(Integer.valueOf(d11));
                arrayList2.add(Integer.valueOf(d10));
                arrayList2.add(num3);
                arrayList2.add(Integer.valueOf(d12));
                arrayList2.add(Integer.valueOf(d11));
                arrayList2.add(Integer.valueOf(d10));
                arrayList2.add(Integer.valueOf(d11));
                arrayList2.add(Integer.valueOf(d12));
            }
            i14++;
            arrayList = arrayList2;
            i11 = 0;
            i12 = 4;
        }
        this.f96433f.clear();
        int size = this.f96432e.size();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(size * 3);
        for (Vector3f vector3f4 : this.f96432e) {
            createFloatBuffer.put(vector3f4.f81611x).put(vector3f4.f81612y).put(vector3f4.f81613z);
        }
        createFloatBuffer.flip();
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(size, arrayList.size());
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            createIndexBuffer.put(((Integer) it.next()).intValue());
        }
        VertexBuffer.Format format = createIndexBuffer.getFormat();
        Buffer buffer = createIndexBuffer.getBuffer();
        buffer.flip();
        setBuffer(VertexBuffer.Type.Index, 3, format, buffer);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(size * 2);
        for (int i16 = 0; i16 < size; i16++) {
            Vector3f vector3f5 = this.f96432e.get(i16);
            createFloatBuffer2.put(vector3f5.f81612y == 0.0f ? this.f96431d.get(i16).floatValue() : (c(vector3f5) / 6.2831855f) + 0.5f).put((b(vector3f5) / 3.1415927f) + 0.5f);
        }
        createFloatBuffer2.flip();
        setBuffer(VertexBuffer.Type.TexCoord, 2, createFloatBuffer2);
        this.f96432e.clear();
        this.f96431d.clear();
        C13720p.b(this);
        updateBound();
        setStatic();
    }
}
