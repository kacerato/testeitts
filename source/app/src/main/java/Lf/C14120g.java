package lf;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14120g extends Mesh {

    public static final float f96389m = 0.5f;

    public static final float f96390n = 0.5f;

    public static final float f96391o = 0.44f;

    public static final int f96392r = 3;

    public static final int f96393s = 3;

    public static final Logger f96394t = Logger.getLogger(C14120g.class.getName());

    public static final boolean f96395u = false;

    public boolean f96396b;

    public boolean f96397c;

    public float f96398d;

    public float f96399e;

    public float f96400f;

    public float f96401g;

    public float f96402h;

    public int f96403i;

    public int f96404j;

    public int f96405k;

    public int f96406l;

    public C14120g() {
    }

    private void l() {
        Vector3f[] vector3fArr = new Vector3f[this.f96406l];
        FloatBuffer floatBuffer = getFloatBuffer(VertexBuffer.Type.Position);
        floatBuffer.rewind();
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < this.f96406l; i10++) {
            floatBuffer.get(fArr, 0, 3);
            Vector3f vector3f = new Vector3f(fArr[0], fArr[1], fArr[2]);
            if (this.f96397c) {
                vector3f.negateLocal();
            }
            f96394t.log(Level.FINE, "normal {0}", Integer.valueOf(i10));
            vector3fArr[i10] = vector3f;
        }
        setBuffer(VertexBuffer.Type.Normal, 3, BufferUtils.createFloatBuffer(vector3fArr));
    }

    public Vector2f a(Vector3f vector3f) {
        C13702E.A(vector3f, "direction");
        Vector3f normalize = vector3f.normalize();
        float acos = (this.f96401g * FastMath.acos(normalize.f81612y)) / 1.5707964f;
        float f10 = normalize.f81611x;
        float f11 = normalize.f81613z;
        float r10 = jf.f.r(f10, f11);
        if (r10 == 0.0f) {
            if (normalize.f81612y < 0.0f) {
                return null;
            }
            return new Vector2f(this.f96399e, this.f96400f);
        }
        float f12 = this.f96399e + ((f10 / r10) * acos);
        float f13 = this.f96400f - (acos * (f11 / r10));
        if (f12 < 0.0f || f12 > 1.0f || f13 < 0.0f || f13 > 1.0f) {
            return null;
        }
        return new Vector2f(f12, f13);
    }

    public float b(float f10, float f11) {
        C13702E.f(f10, "u");
        C13702E.f(f11, "v");
        return 1.5707964f - ((jf.f.r(f10 - this.f96399e, f11 - this.f96400f) / this.f96401g) * 1.5707964f);
    }

    @Deprecated
    public float c() {
        return this.f96401g;
    }

    public float d() {
        return this.f96401g;
    }

    public float e() {
        return this.f96402h;
    }

    public void f(float f10) {
        if (f10 <= 0.0f || f10 > 6.2831855f) {
            f96394t.log(Level.SEVERE, "angle={0}", Float.valueOf(f10));
            throw new IllegalArgumentException("angle should be between 0 and 2*Pi");
        }
        this.f96398d = f10;
        h();
    }

    public void g(float f10) {
        if (f10 <= 0.0f || f10 >= 3.1415927f) {
            f96394t.log(Level.SEVERE, "angle={0}", Float.valueOf(f10));
            throw new IllegalArgumentException("angle should be between 0 and Pi");
        }
        this.f96402h = f10;
        h();
    }

    public final void h() {
        j();
        i();
        k();
        l();
        updateBound();
    }

    public final void i() {
        int i10 = this.f96406l;
        Vector3f[] vector3fArr = new Vector3f[i10];
        Vector2f[] vector2fArr = new Vector2f[i10];
        float f10 = this.f96402h / (this.f96403i - 1);
        float f11 = this.f96396b ? 6.2831855f / this.f96404j : this.f96398d / (this.f96404j - 1);
        for (int i11 = 0; i11 < this.f96403i - 1; i11++) {
            float f12 = (1.5707964f - this.f96402h) + (i11 * f10);
            float sin = FastMath.sin(f12);
            float cos = FastMath.cos(f12);
            for (int i12 = 0; i12 < this.f96404j; i12++) {
                float f13 = i12 * f11;
                float sin2 = FastMath.sin(f13);
                int i13 = (this.f96404j * i11) + i12;
                f96394t.log(Level.FINE, "coords {0}", Integer.valueOf(i13));
                Vector3f vector3f = new Vector3f(FastMath.cos(f13) * cos, sin, sin2 * cos);
                vector3fArr[i13] = vector3f;
                vector2fArr[i13] = a(vector3f);
            }
        }
        int i14 = this.f96406l - 1;
        f96394t.log(Level.INFO, "coords {0}", Integer.valueOf(i14));
        vector3fArr[i14] = new Vector3f(0.0f, 1.0f, 0.0f);
        vector2fArr[i14] = new Vector2f(this.f96399e, this.f96400f);
        setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(vector3fArr));
        setBuffer(VertexBuffer.Type.TexCoord, 2, BufferUtils.createFloatBuffer(vector2fArr));
    }

    public final void j() {
        int i10 = this.f96404j;
        if (i10 < 3) {
            f96394t.log(Level.SEVERE, "rimSamples={0}", Integer.valueOf(i10));
            throw new IllegalStateException("need at least 3 samples on the rim");
        }
        int i11 = this.f96403i;
        if (i11 < 2) {
            f96394t.log(Level.SEVERE, "quadrantSamples={0}", Integer.valueOf(i11));
            throw new IllegalStateException("need at least 2 samples per longitudinal quadrant");
        }
        this.f96396b = this.f96398d > 6.2800436f;
        int i12 = (((i11 - 2) * 2) + 1) * i10;
        this.f96405k = i12;
        Logger logger = f96394t;
        Level level = Level.INFO;
        logger.log(level, "{0} triangles", Integer.valueOf(i12));
        int i13 = ((this.f96403i - 1) * this.f96404j) + 1;
        this.f96406l = i13;
        logger.log(level, "{0} vertices", Integer.valueOf(i13));
    }

    public final void k() {
        int i10;
        short[] sArr = new short[this.f96405k * 3];
        int i11 = this.f96396b ? this.f96404j : this.f96404j - 1;
        int i12 = this.f96403i - 2;
        int i13 = 0;
        while (i13 < i12) {
            int i14 = i13 + 1;
            int i15 = 0;
            while (i15 < i11) {
                int i16 = i15 + 1;
                int i17 = this.f96404j;
                int i18 = i16 % i17;
                int i19 = (i13 * i17) + i15;
                int i20 = (i13 * i17) + i18;
                int i21 = (i14 * i17) + i15;
                int i22 = (i17 * i14) + i18;
                int i23 = i19 * 2;
                int i24 = i19 * 6;
                Logger logger = f96394t;
                Level level = Level.FINE;
                int i25 = i13;
                logger.log(level, "index {0}", Integer.valueOf(i23));
                short s10 = (short) i19;
                sArr[i24] = s10;
                if (this.f96397c) {
                    sArr[i24 + 1] = (short) i20;
                    sArr[i24 + 2] = (short) i22;
                    i10 = i14;
                } else {
                    i10 = i14;
                    sArr[i24 + 1] = (short) i22;
                    sArr[i24 + 2] = (short) i20;
                }
                int i26 = i23 + 1;
                int i27 = i26 * 3;
                logger.log(level, "index {0}", Integer.valueOf(i26));
                sArr[i27] = s10;
                if (this.f96397c) {
                    sArr[i27 + 1] = (short) i22;
                    sArr[i27 + 2] = (short) i21;
                } else {
                    sArr[i27 + 1] = (short) i21;
                    sArr[i27 + 2] = (short) i22;
                }
                i15 = i16;
                i13 = i25;
                i14 = i10;
            }
            i13 = i14;
        }
        int i28 = this.f96406l - 1;
        int i29 = 0;
        while (i29 < i11) {
            int i30 = i29 + 1;
            int i31 = this.f96404j;
            int i32 = (i12 * i31) + i29;
            int i33 = (i12 * i31) + (i30 % i31);
            int i34 = (i12 * 2 * i31) + i29;
            int i35 = i34 * 3;
            f96394t.log(Level.FINE, "index {0}", Integer.valueOf(i34));
            sArr[i35] = (short) i32;
            if (this.f96397c) {
                sArr[i35 + 1] = (short) i33;
                sArr[i35 + 2] = (short) i28;
            } else {
                sArr[i35 + 1] = (short) i28;
                sArr[i35 + 2] = (short) i33;
            }
            i29 = i30;
        }
        setBuffer(VertexBuffer.Type.Index, 3, BufferUtils.createShortBuffer(sArr));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f96397c = capsule.readBoolean("inwardFacing", true);
        this.f96403i = capsule.readInt("quadrantSamples", 2);
        this.f96404j = capsule.readInt("rimSamples", 3);
        this.f96398d = capsule.readFloat("segmentAngle", 6.2831855f);
        this.f96399e = capsule.readFloat("topU", 0.5f);
        this.f96400f = capsule.readFloat("topV", 0.5f);
        this.f96401g = capsule.readFloat("uvScale", 0.44f);
        this.f96402h = capsule.readFloat("verticalAngle", 1.5707964f);
        j();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f96397c, "inwardFacing", true);
        capsule.write(this.f96403i, "quadrantSamples", 2);
        capsule.write(this.f96404j, "rimSamples", 3);
        capsule.write(this.f96398d, "segmentAngle", 6.2831855f);
        capsule.write(this.f96399e, "topU", 0.5f);
        capsule.write(this.f96400f, "topV", 0.5f);
        capsule.write(this.f96401g, "uvScale", 0.44f);
        capsule.write(this.f96402h, "verticalAngle", 1.5707964f);
    }

    public C14120g(int i10, int i11) {
        this(i10, i11, 0.5f, 0.5f, 0.44f, true);
    }

    public C14120g(int i10, int i11, float f10, float f11, float f12, boolean z10) {
        C13702E.i(i10, "rim samples", 3, Integer.MAX_VALUE);
        this.f96404j = i10;
        C13702E.i(i11, "quadrant samples", 2, Integer.MAX_VALUE);
        this.f96403i = i11;
        C13702E.f(f10, "topU");
        this.f96399e = f10;
        C13702E.f(f11, "topV");
        this.f96400f = f11;
        if (f12 > 0.0f && f12 < 0.5f) {
            this.f96401g = f12;
            this.f96397c = z10;
            this.f96398d = 6.2831855f;
            this.f96402h = 1.5707964f;
            h();
            setStatic();
            return;
        }
        f96394t.log(Level.SEVERE, "uvScale={0}", Float.valueOf(f12));
        throw new IllegalArgumentException("uvScale should be between 0 and 0.5");
    }
}
