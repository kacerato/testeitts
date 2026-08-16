package Ic;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.bounding.BoundingBox;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.bih.BIHNode;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Eigen3f;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.scene.Spatial;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class M {

    public static final int f9036Q = 5;

    public static final ThreadLocal<b> f9037R = new a();

    public boolean f9054a = false;

    public final IntBuffer f9055b = BufferUtils.createIntBuffer(1);

    public final IntBuffer f9056c = BufferUtils.createIntBuffer(16);

    public final FloatBuffer f9057d = BufferUtils.createFloatBuffer(16);

    public final BoundingBox f9058e = new BoundingBox();

    public final float[] f9059f = new float[1536];

    public final float[] f9060g = new float[1536];

    public final float[] f9061h = new float[2048];

    public final Triangle f9062i = new Triangle();

    public final ColorRGBA f9063j = new ColorRGBA();

    public final Vector3f f9064k = new Vector3f();

    public final Vector3f f9065l = new Vector3f();

    public final Vector3f f9066m = new Vector3f();

    public final Vector3f f9067n = new Vector3f();

    public final Vector3f f9068o = new Vector3f();

    public final Vector3f f9069p = new Vector3f();

    public final Vector3f f9070q = new Vector3f();

    public final Vector3f f9071r = new Vector3f();

    public final Vector3f f9072s = new Vector3f();

    public final Vector3f f9073t = new Vector3f();

    public final Vector4f f9074u = new Vector4f();

    public final Vector4f f9075v = new Vector4f();

    public final Vector3f[] f9076w = {new Vector3f(), new Vector3f(), new Vector3f()};

    public final Vector2f f9077x = new Vector2f();

    public final Vector2f f9078y = new Vector2f();

    public final Matrix3f f9079z = new Matrix3f();

    public final Matrix4f f9038A = new Matrix4f();

    public final Matrix4f f9039B = new Matrix4f();

    public final Quaternion f9040C = new Quaternion();

    public final Quaternion f9041D = new Quaternion();

    public final Eigen3f f9042E = new Eigen3f();

    public final Plane f9043F = new Plane();

    public final float[] f9044G = new float[3];

    public final float[] f9045H = new float[3];

    public final float[] f9046I = new float[3];

    public final float[] f9047J = new float[3];

    public final float[] f9048K = new float[3];

    public final Spatial[] f9049L = new Spatial[32];

    public final float[] f9050M = new float[16];

    public final CollisionResults f9051N = new CollisionResults();

    public final float[] f9052O = new float[9];

    public final SteppedArrayList<BIHNode.BIHStackData> f9053P = new SteppedArrayList<>();

    public class a extends ThreadLocal<b> {
        @Override
        public b initialValue() {
            return new b(null);
        }
    }

    public static M a() {
        b bVar = f9037R.get();
        M m10 = bVar.f9081b[bVar.f9080a];
        if (m10 == null) {
            m10 = new M();
            bVar.f9081b[bVar.f9080a] = m10;
        }
        bVar.f9080a++;
        m10.f9054a = true;
        return m10;
    }

    public void b() {
        if (!this.f9054a) {
            throw new IllegalStateException("This instance of TempVars was already released!");
        }
        this.f9054a = false;
        b bVar = f9037R.get();
        int i10 = bVar.f9080a - 1;
        bVar.f9080a = i10;
        if (bVar.f9081b[i10] != this) {
            throw new IllegalStateException("An instance of TempVars has not been released in a called method!");
        }
    }

    public static class b {

        public int f9080a;

        public M[] f9081b;

        public b() {
            this.f9080a = 0;
            this.f9081b = new M[5];
        }

        public b(a aVar) {
            this();
        }
    }
}
