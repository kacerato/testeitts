package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.filament.Colors;
import com.google.android.filament.Engine;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.proguard.UsedByNative;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

@UsedByNative("AssetLoader.cpp")
public class Material {

    public long f59997a;

    public final MaterialInstance f59998b;

    public Set<VertexBuffer.c> f59999c;

    @UsedByNative("Material.cpp")
    public static class Parameter {

        @NonNull
        public final String f60001a;

        @NonNull
        public final b f60002b;

        @NonNull
        public final a f60003c;

        @IntRange(from = 1)
        public final int f60004d;

        public static final b[] f60000e = b.values();

        @UsedByNative("Material.cpp")
        private static final int SAMPLER_OFFSET = b.MAT4.ordinal() + 1;

        @UsedByNative("Material.cpp")
        private static final int SUBPASS_OFFSET = b.SAMPLER_3D.ordinal() + 1;

        public enum a {
            LOW,
            MEDIUM,
            HIGH,
            DEFAULT
        }

        public enum b {
            BOOL,
            BOOL2,
            BOOL3,
            BOOL4,
            FLOAT,
            FLOAT2,
            FLOAT3,
            FLOAT4,
            INT,
            INT2,
            INT3,
            INT4,
            UINT,
            UINT2,
            UINT3,
            UINT4,
            MAT3,
            MAT4,
            SAMPLER_2D,
            SAMPLER_2D_ARRAY,
            SAMPLER_CUBEMAP,
            SAMPLER_EXTERNAL,
            SAMPLER_3D,
            SUBPASS_INPUT
        }

        public Parameter(@NonNull String str, @NonNull b bVar, @NonNull a aVar, @IntRange(from = 1) int i10) {
            this.f60001a = str;
            this.f60002b = bVar;
            this.f60003c = aVar;
            this.f60004d = i10;
        }

        @UsedByNative("Material.cpp")
        private static void add(@NonNull List<Parameter> list, @NonNull String str, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 1) int i12) {
            list.add(new Parameter(str, f60000e[i10], a.values()[i11], i12));
        }
    }

    public enum a {
        OPAQUE,
        TRANSPARENT,
        ADD,
        MASKED,
        FADE,
        MULTIPLY,
        SCREEN
    }

    public static class b {

        public Buffer f60005a;

        public int f60006b;

        public int f60007c = 0;

        public a f60008d = a.LOW;

        public l f60009e = l.DEFAULT;

        public enum a {
            HARD,
            LOW
        }

        @NonNull
        public Material a(@NonNull Engine engine) {
            long nBuilderBuild = Material.nBuilderBuild(engine.getNativeObject(), this.f60005a, this.f60006b, this.f60007c, this.f60008d.ordinal(), this.f60009e.ordinal());
            if (nBuilderBuild != 0) {
                return new Material(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create Material");
        }

        @NonNull
        public b b(@NonNull Buffer buffer, @IntRange(from = 0) int i10) {
            this.f60005a = buffer;
            this.f60006b = i10;
            return this;
        }

        @NonNull
        public b c(a aVar) {
            this.f60008d = aVar;
            return this;
        }

        @NonNull
        public b d(@IntRange(from = 0) int i10) {
            this.f60007c = i10;
            return this;
        }

        @NonNull
        public b e(l lVar) {
            this.f60009e = lVar;
            return this;
        }
    }

    public enum c {
        CRITICAL,
        HIGH,
        LOW
    }

    public enum d {
        NONE,
        FRONT,
        BACK,
        FRONT_AND_BACK
    }

    public static final class e {

        public static final j[] f60010a = j.values();

        public static final f[] f60011b = f.values();

        public static final a[] f60012c = a.values();

        public static final h[] f60013d = h.values();

        public static final i[] f60014e = i.values();

        public static final g[] f60015f = g.values();

        public static final Engine.d[] f60016g = Engine.d.values();

        public static final n[] f60017h = n.values();

        public static final d[] f60018i = d.values();

        public static final VertexBuffer.c[] f60019j = VertexBuffer.c.values();

        public static final k[] f60020k = k.values();
    }

    public enum f {
        SMOOTH,
        FLAT
    }

    public enum g {
        DEFAULT,
        SCREEN_SPACE
    }

    public enum h {
        NONE,
        CUBEMAP,
        SCREEN_SPACE
    }

    public enum i {
        SOLID,
        THIN
    }

    public enum j {
        UNLIT,
        LIT,
        SUBSURFACE,
        CLOTH,
        SPECULAR_GLOSSINESS
    }

    public enum k {
        DEFAULT,
        TWO_PASSES_ONE_SIDE,
        TWO_PASSES_TWO_SIDES
    }

    public enum l {
        DEFAULT,
        DISABLED
    }

    public static class m {

        public static int f60021a = 1;

        public static int f60022b = 2;

        public static int f60023c = 4;

        public static int f60024d = 8;

        public static int f60025e = 16;

        public static int f60026f = 32;

        public static int f60027g = 64;

        public static int f60028h = 128;

        public static int f60029i = 255;
    }

    public enum n {
        OBJECT,
        WORLD,
        VIEW,
        DEVICE
    }

    public Material(long j10) {
        this.f59997a = j10;
        this.f59998b = new MaterialInstance(this, nGetDefaultInstance(j10));
    }

    public static native long nBuilderBuild(long j10, @NonNull Buffer buffer, int i10, int i11, int i12, int i13);

    private static native void nCompile(long j10, int i10, int i11, Object obj, Runnable runnable);

    private static native long nCreateInstance(long j10);

    private static native long nCreateInstanceWithName(long j10, @NonNull String str);

    private static native int nGetBlendingMode(long j10);

    private static native int nGetCullingMode(long j10);

    private static native long nGetDefaultInstance(long j10);

    private static native int nGetFeatureLevel(long j10);

    private static native int nGetInterpolation(long j10);

    private static native float nGetMaskThreshold(long j10);

    private static native String nGetName(long j10);

    private static native int nGetParameterCount(long j10);

    private static native String nGetParameterTransformName(long j10, @NonNull String str);

    private static native void nGetParameters(long j10, @NonNull List<Parameter> list, @IntRange(from = 1) int i10);

    private static native int nGetReflectionMode(long j10);

    private static native int nGetRefractionMode(long j10);

    private static native int nGetRefractionType(long j10);

    private static native int nGetRequiredAttributes(long j10);

    private static native int nGetShading(long j10);

    private static native float nGetSpecularAntiAliasingThreshold(long j10);

    private static native float nGetSpecularAntiAliasingVariance(long j10);

    private static native int nGetTransparencyMode(long j10);

    private static native int nGetVertexDomain(long j10);

    private static native boolean nHasParameter(long j10, @NonNull String str);

    private static native boolean nIsAlphaToCoverageEnabled(long j10);

    private static native boolean nIsColorWriteEnabled(long j10);

    private static native boolean nIsDepthCullingEnabled(long j10);

    private static native boolean nIsDepthWriteEnabled(long j10);

    private static native boolean nIsDoubleSided(long j10);

    public boolean A(@NonNull String str) {
        return nHasParameter(m(), str);
    }

    public boolean B() {
        return nIsAlphaToCoverageEnabled(m());
    }

    public boolean C() {
        return nIsColorWriteEnabled(m());
    }

    public boolean D() {
        return nIsDepthCullingEnabled(m());
    }

    public boolean E() {
        return nIsDepthWriteEnabled(m());
    }

    public boolean F() {
        return nIsDoubleSided(m());
    }

    public void G(@NonNull String str, float f10) {
        this.f59998b.G(str, f10);
    }

    public void H(@NonNull String str, float f10, float f11) {
        this.f59998b.H(str, f10, f11);
    }

    public void I(@NonNull String str, float f10, float f11, float f12) {
        this.f59998b.I(str, f10, f11, f12);
    }

    public void J(@NonNull String str, float f10, float f11, float f12, float f13) {
        this.f59998b.J(str, f10, f11, f12, f13);
    }

    public void K(@NonNull String str, int i10) {
        this.f59998b.K(str, i10);
    }

    public void L(@NonNull String str, int i10, int i11) {
        this.f59998b.L(str, i10, i11);
    }

    public void M(@NonNull String str, int i10, int i11, int i12) {
        this.f59998b.M(str, i10, i11, i12);
    }

    public void N(@NonNull String str, int i10, int i11, int i12, int i13) {
        this.f59998b.N(str, i10, i11, i12, i13);
    }

    public void O(@NonNull String str, @NonNull Colors.c cVar, float f10, float f11, float f12) {
        this.f59998b.O(str, cVar, f10, f11, f12);
    }

    public void P(@NonNull String str, @NonNull Colors.d dVar, float f10, float f11, float f12, float f13) {
        this.f59998b.P(str, dVar, f10, f11, f12, f13);
    }

    public void Q(@NonNull String str, @NonNull MaterialInstance.a aVar, @NonNull @Size(min = 1) boolean[] zArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        this.f59998b.Q(str, aVar, zArr, i10, i11);
    }

    public void R(@NonNull String str, @NonNull MaterialInstance.b bVar, @NonNull @Size(min = 1) float[] fArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        this.f59998b.R(str, bVar, fArr, i10, i11);
    }

    public void S(@NonNull String str, @NonNull MaterialInstance.c cVar, @NonNull @Size(min = 1) int[] iArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        this.f59998b.S(str, cVar, iArr, i10, i11);
    }

    public void T(@NonNull String str, @NonNull Texture texture, @NonNull TextureSampler textureSampler) {
        this.f59998b.T(str, texture, textureSampler);
    }

    public void U(@NonNull String str, boolean z10) {
        this.f59998b.U(str, z10);
    }

    public void V(@NonNull String str, boolean z10, boolean z11) {
        this.f59998b.V(str, z10, z11);
    }

    public void W(@NonNull String str, boolean z10, boolean z11, boolean z12) {
        this.f59998b.W(str, z10, z11, z12);
    }

    public void X(@NonNull String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f59998b.X(str, z10, z11, z12, z13);
    }

    public void b() {
        this.f59997a = 0L;
    }

    public void c(@NonNull c cVar, int i10, @Nullable Object obj, @Nullable Runnable runnable) {
        nCompile(m(), cVar.ordinal(), i10, obj, runnable);
    }

    @NonNull
    public MaterialInstance d() {
        long nCreateInstance = nCreateInstance(m());
        if (nCreateInstance != 0) {
            return new MaterialInstance(this, nCreateInstance);
        }
        throw new IllegalStateException("Couldn't create MaterialInstance");
    }

    @NonNull
    public MaterialInstance e(@NonNull String str) {
        long nCreateInstanceWithName = nCreateInstanceWithName(m(), str);
        if (nCreateInstanceWithName != 0) {
            return new MaterialInstance(this, nCreateInstanceWithName);
        }
        throw new IllegalStateException("Couldn't create MaterialInstance");
    }

    public a f() {
        return e.f60012c[nGetBlendingMode(m())];
    }

    public d g() {
        return e.f60018i[nGetCullingMode(m())];
    }

    @NonNull
    public MaterialInstance h() {
        return this.f59998b;
    }

    public Engine.d i() {
        return e.f60016g[nGetFeatureLevel(m())];
    }

    public f j() {
        return e.f60011b[nGetInterpolation(m())];
    }

    public float k() {
        return nGetMaskThreshold(m());
    }

    public String l() {
        return nGetName(m());
    }

    public long m() {
        long j10 = this.f59997a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Material");
    }

    public int n() {
        return nGetParameterCount(m());
    }

    public String o(@NonNull String str) {
        return nGetParameterTransformName(m(), str);
    }

    public List<Parameter> p() {
        int n10 = n();
        ArrayList arrayList = new ArrayList(n10);
        if (n10 > 0) {
            nGetParameters(m(), arrayList, n10);
        }
        return arrayList;
    }

    public g q() {
        return e.f60015f[nGetReflectionMode(m())];
    }

    public h r() {
        return e.f60013d[nGetRefractionMode(m())];
    }

    public i s() {
        return e.f60014e[nGetRefractionType(m())];
    }

    public Set<VertexBuffer.c> t() {
        if (this.f59999c == null) {
            int nGetRequiredAttributes = nGetRequiredAttributes(m());
            this.f59999c = EnumSet.noneOf(VertexBuffer.c.class);
            VertexBuffer.c[] cVarArr = e.f60019j;
            for (int i10 = 0; i10 < cVarArr.length; i10++) {
                if (((1 << i10) & nGetRequiredAttributes) != 0) {
                    this.f59999c.add(cVarArr[i10]);
                }
            }
            this.f59999c = Collections.unmodifiableSet(this.f59999c);
        }
        return this.f59999c;
    }

    public int u() {
        return nGetRequiredAttributes(m());
    }

    public j v() {
        return e.f60010a[nGetShading(m())];
    }

    public float w() {
        return nGetSpecularAntiAliasingThreshold(m());
    }

    public float x() {
        return nGetSpecularAntiAliasingVariance(m());
    }

    public k y() {
        return e.f60020k[nGetTransparencyMode(m())];
    }

    public n z() {
        return e.f60017h[nGetVertexDomain(m())];
    }
}
