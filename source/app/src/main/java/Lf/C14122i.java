package lf;

import android.util.DisplayMetrics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
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

public class C14122i extends Mesh {

    public static final float f96409f;

    public static final int f96410g = 3;

    public static final int f96411h = 3;

    public static final int[] f96412i;

    public static final Logger f96413j;

    public static final Vector3f[] f96414k;

    public final float f96415b;

    public int f96416c;

    public final List<Vector3f> f96417d;

    public final Map<Long, Integer> f96418e;

    static {
        float f10 = jf.f.f92905b;
        f96409f = f10;
        f96412i = new int[]{0, 11, 5, 0, 5, 1, 0, 1, 7, 0, 7, 10, 0, 10, 11, 1, 5, 9, 5, 11, 4, 11, 10, 2, 10, 7, 6, 7, 1, 8, 3, 9, 4, 3, 4, 2, 3, 2, 6, 3, 6, 8, 3, 8, 9, 4, 9, 5, 2, 4, 11, 6, 2, 10, 8, 6, 7, 9, 8, 1};
        f96413j = Logger.getLogger(C14122i.class.getName());
        f96414k = new Vector3f[]{new Vector3f(-1.0f, f10, 0.0f), new Vector3f(1.0f, f10, 0.0f), new Vector3f(-1.0f, -f10, 0.0f), new Vector3f(1.0f, -f10, 0.0f), new Vector3f(0.0f, -1.0f, f10), new Vector3f(0.0f, 1.0f, f10), new Vector3f(0.0f, -1.0f, -f10), new Vector3f(0.0f, 1.0f, -f10), new Vector3f(f10, 0.0f, -1.0f), new Vector3f(f10, 0.0f, 1.0f), new Vector3f(-f10, 0.0f, -1.0f), new Vector3f(-f10, 0.0f, 1.0f)};
    }

    public C14122i() {
        this.f96416c = 0;
        this.f96417d = new ArrayList(162);
        this.f96418e = new HashMap(DisplayMetrics.DENSITY_XXHIGH);
        this.f96415b = 1.0f;
    }

    private int a(Vector3f vector3f) {
        this.f96417d.add(vector3f.mult(this.f96415b / vector3f.length()));
        int i10 = this.f96416c;
        this.f96416c = i10 + 1;
        return i10;
    }

    public static Vector2f b(Vector3f vector3f) {
        Vector2f vector2f = new Vector2f();
        float length = vector3f.length();
        float f10 = vector3f.f81611x;
        if (f10 == 0.0f && vector3f.f81612y == 0.0f) {
            vector2f.f81609x = 0.0f;
        } else {
            vector2f.f81609x = -FastMath.atan2(vector3f.f81612y, f10);
        }
        if (length > 0.0f) {
            vector2f.f81610y = FastMath.asin(vector3f.f81613z / length);
        } else {
            vector2f.f81610y = 0.0f;
        }
        return vector2f;
    }

    private int c(int i10, int i11) {
        boolean z10 = i10 < i11;
        long j10 = ((z10 ? i10 : i11) << 32) + (z10 ? i11 : i10);
        Integer num = this.f96418e.get(Long.valueOf(j10));
        if (num != null) {
            return num.intValue();
        }
        int a10 = a(jf.h.M(this.f96417d.get(i10), this.f96417d.get(i11), null));
        this.f96418e.put(Long.valueOf(j10), Integer.valueOf(a10));
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14122i(int i10, float f10) {
        this.f96416c = 0;
        this.f96417d = new ArrayList(162);
        this.f96418e = new HashMap(DisplayMetrics.DENSITY_XXHIGH);
        C13702E.q(i10, "number of refinement steps");
        C13702E.E(f10, TestVFXEffect.f77524P);
        this.f96415b = f10;
        for (Vector3f vector3f : f96414k) {
            a(vector3f);
        }
        ArrayList arrayList = new ArrayList(60);
        for (int i11 : f96412i) {
            arrayList.add(Integer.valueOf(i11));
        }
        int i12 = 0;
        while (i12 < i10) {
            ArrayList arrayList2 = new ArrayList(arrayList.size() * 4);
            for (int i13 = 0; i13 < arrayList.size(); i13 += 3) {
                Integer num = (Integer) arrayList.get(i13);
                int intValue = num.intValue();
                Integer num2 = (Integer) arrayList.get(i13 + 1);
                int intValue2 = num2.intValue();
                Integer num3 = (Integer) arrayList.get(i13 + 2);
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
            i12++;
            arrayList = arrayList2;
        }
        this.f96418e.clear();
        int size = this.f96417d.size();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(size * 3);
        for (Vector3f vector3f2 : this.f96417d) {
            createFloatBuffer.put(vector3f2.f81611x).put(vector3f2.f81612y).put(vector3f2.f81613z);
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
        Iterator<Vector3f> it2 = this.f96417d.iterator();
        while (it2.hasNext()) {
            Vector2f b10 = b(it2.next());
            createFloatBuffer2.put((b10.f81609x / 6.2831855f) + 0.5f).put((b10.f81610y / 3.1415927f) + 0.5f);
        }
        createFloatBuffer2.flip();
        setBuffer(VertexBuffer.Type.TexCoord, 2, createFloatBuffer2);
        C13720p.b(this);
        this.f96417d.clear();
        updateBound();
        setStatic();
    }
}
