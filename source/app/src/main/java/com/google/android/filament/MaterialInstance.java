package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.filament.Colors;
import com.google.android.filament.Material;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.proguard.UsedByNative;

@UsedByNative("AssetLoader.cpp")
public class MaterialInstance {

    public static final Material.d[] f60030e = Material.d.values();

    public static final int[] f60031f = {1, 2, 3};

    public Material f60032a;

    public String f60033b;

    public long f60034c;

    public long f60035d;

    public enum a {
        BOOL,
        BOOL2,
        BOOL3,
        BOOL4
    }

    public enum b {
        FLOAT,
        FLOAT2,
        FLOAT3,
        FLOAT4,
        MAT3,
        MAT4
    }

    public enum c {
        INT,
        INT2,
        INT3,
        INT4
    }

    public enum d {
        FRONT,
        BACK,
        FRONT_AND_BACK
    }

    public enum e {
        KEEP,
        ZERO,
        REPLACE,
        INCR_CLAMP,
        INCR_WRAP,
        DECR_CLAMP,
        DECR_WRAP,
        INVERT
    }

    public MaterialInstance(Engine engine, long j10) {
        this.f60034c = j10;
        this.f60035d = nGetMaterial(j10);
    }

    @NonNull
    public static MaterialInstance c(@NonNull MaterialInstance materialInstance, String str) {
        long nDuplicate = nDuplicate(materialInstance.f60034c, str);
        if (nDuplicate != 0) {
            return new MaterialInstance(materialInstance.j(), nDuplicate);
        }
        throw new IllegalStateException("Couldn't duplicate MaterialInstance");
    }

    private static native void nCompile(long j10, int i10, int i11, Object obj, Runnable runnable);

    private static native long nDuplicate(long j10, String str);

    private static native boolean nGetConstantBool(long j10, @NonNull String str);

    private static native float nGetConstantFloat(long j10, @NonNull String str);

    private static native int nGetConstantInt(long j10, @NonNull String str);

    private static native int nGetCullingMode(long j10);

    private static native int nGetDepthFunc(long j10);

    private static native float nGetMaskThreshold(long j10);

    private static native long nGetMaterial(long j10);

    private static native String nGetName(long j10);

    private static native int nGetShadowCullingMode(long j10);

    private static native float nGetSpecularAntiAliasingThreshold(long j10);

    private static native float nGetSpecularAntiAliasingVariance(long j10);

    private static native int nGetTransparencyMode(long j10);

    private static native boolean nIsColorWriteEnabled(long j10);

    private static native boolean nIsDepthCullingEnabled(long j10);

    private static native boolean nIsDepthWriteEnabled(long j10);

    private static native boolean nIsDoubleSided(long j10);

    private static native boolean nIsStencilWriteEnabled(long j10);

    private static native void nSetBooleanParameterArray(long j10, @NonNull String str, int i10, @NonNull @Size(min = 1) boolean[] zArr, @IntRange(from = 0) int i11, @IntRange(from = 1) int i12);

    private static native void nSetColorWrite(long j10, boolean z10);

    private static native void nSetConstantBool(long j10, @NonNull String str, boolean z10);

    private static native void nSetConstantFloat(long j10, @NonNull String str, float f10);

    private static native void nSetConstantInt(long j10, @NonNull String str, int i10);

    private static native void nSetCullingMode(long j10, long j11);

    private static native void nSetCullingModeSeparate(long j10, long j11, long j12);

    private static native void nSetDepthCulling(long j10, boolean z10);

    private static native void nSetDepthFunc(long j10, long j11);

    private static native void nSetDepthWrite(long j10, boolean z10);

    private static native void nSetDoubleSided(long j10, boolean z10);

    private static native void nSetFloatParameterArray(long j10, @NonNull String str, int i10, @NonNull @Size(min = 1) float[] fArr, @IntRange(from = 0) int i11, @IntRange(from = 1) int i12);

    private static native void nSetIntParameterArray(long j10, @NonNull String str, int i10, @NonNull @Size(min = 1) int[] iArr, @IntRange(from = 0) int i11, @IntRange(from = 1) int i12);

    private static native void nSetMaskThreshold(long j10, float f10);

    private static native void nSetParameterBool(long j10, @NonNull String str, boolean z10);

    private static native void nSetParameterBool2(long j10, @NonNull String str, boolean z10, boolean z11);

    private static native void nSetParameterBool3(long j10, @NonNull String str, boolean z10, boolean z11, boolean z12);

    private static native void nSetParameterBool4(long j10, @NonNull String str, boolean z10, boolean z11, boolean z12, boolean z13);

    private static native void nSetParameterFloat(long j10, @NonNull String str, float f10);

    private static native void nSetParameterFloat2(long j10, @NonNull String str, float f10, float f11);

    private static native void nSetParameterFloat3(long j10, @NonNull String str, float f10, float f11, float f12);

    private static native void nSetParameterFloat4(long j10, @NonNull String str, float f10, float f11, float f12, float f13);

    private static native void nSetParameterInt(long j10, @NonNull String str, int i10);

    private static native void nSetParameterInt2(long j10, @NonNull String str, int i10, int i11);

    private static native void nSetParameterInt3(long j10, @NonNull String str, int i10, int i11, int i12);

    private static native void nSetParameterInt4(long j10, @NonNull String str, int i10, int i11, int i12, int i13);

    private static native void nSetParameterTexture(long j10, @NonNull String str, long j11, long j12);

    private static native void nSetPolygonOffset(long j10, float f10, float f11);

    private static native void nSetScissor(long j10, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13);

    private static native void nSetSpecularAntiAliasingThreshold(long j10, float f10);

    private static native void nSetSpecularAntiAliasingVariance(long j10, float f10);

    private static native void nSetStencilCompareFunction(long j10, long j11, long j12);

    private static native void nSetStencilOpDepthFail(long j10, long j11, long j12);

    private static native void nSetStencilOpDepthStencilPass(long j10, long j11, long j12);

    private static native void nSetStencilOpStencilFail(long j10, long j11, long j12);

    private static native void nSetStencilReadMask(long j10, int i10, long j11);

    private static native void nSetStencilReferenceValue(long j10, int i10, long j11);

    private static native void nSetStencilWrite(long j10, boolean z10);

    private static native void nSetStencilWriteMask(long j10, int i10, long j11);

    private static native void nSetTransparencyMode(long j10, int i10);

    private static native void nUnsetScissor(long j10);

    public void A(@NonNull Material.d dVar, @NonNull Material.d dVar2) {
        nSetCullingModeSeparate(l(), dVar.ordinal(), dVar2.ordinal());
    }

    public void B(boolean z10) {
        nSetDepthCulling(l(), z10);
    }

    public void C(TextureSampler.a aVar) {
        nSetDepthFunc(l(), aVar.ordinal());
    }

    public void D(boolean z10) {
        nSetDepthWrite(l(), z10);
    }

    public void E(boolean z10) {
        nSetDoubleSided(l(), z10);
    }

    public void F(float f10) {
        nSetMaskThreshold(l(), f10);
    }

    public void G(@NonNull String str, float f10) {
        nSetParameterFloat(l(), str, f10);
    }

    public void H(@NonNull String str, float f10, float f11) {
        nSetParameterFloat2(l(), str, f10, f11);
    }

    public void I(@NonNull String str, float f10, float f11, float f12) {
        nSetParameterFloat3(l(), str, f10, f11, f12);
    }

    public void J(@NonNull String str, float f10, float f11, float f12, float f13) {
        nSetParameterFloat4(l(), str, f10, f11, f12, f13);
    }

    public void K(@NonNull String str, int i10) {
        nSetParameterInt(l(), str, i10);
    }

    public void L(@NonNull String str, int i10, int i11) {
        nSetParameterInt2(l(), str, i10, i11);
    }

    public void M(@NonNull String str, int i10, int i11, int i12) {
        nSetParameterInt3(l(), str, i10, i11, i12);
    }

    public void N(@NonNull String str, int i10, int i11, int i12, int i13) {
        nSetParameterInt4(l(), str, i10, i11, i12, i13);
    }

    public void O(@NonNull String str, @NonNull Colors.c cVar, float f10, float f11, float f12) {
        float[] d10 = Colors.d(cVar, f10, f11, f12);
        nSetParameterFloat3(l(), str, d10[0], d10[1], d10[2]);
    }

    public void P(@NonNull String str, @NonNull Colors.d dVar, float f10, float f11, float f12, float f13) {
        float[] f14 = Colors.f(dVar, f10, f11, f12, f13);
        nSetParameterFloat4(l(), str, f14[0], f14[1], f14[2], f14[3]);
    }

    public void Q(@NonNull String str, @NonNull a aVar, @NonNull boolean[] zArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        nSetBooleanParameterArray(l(), str, aVar.ordinal(), zArr, i10, i11);
    }

    public void R(@NonNull String str, @NonNull b bVar, @NonNull float[] fArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        nSetFloatParameterArray(l(), str, bVar.ordinal(), fArr, i10, i11);
    }

    public void S(@NonNull String str, @NonNull c cVar, @NonNull int[] iArr, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
        nSetIntParameterArray(l(), str, cVar.ordinal(), iArr, i10, i11);
    }

    public void T(@NonNull String str, @NonNull Texture texture, @NonNull TextureSampler textureSampler) {
        nSetParameterTexture(l(), str, texture.getNativeObject(), textureSampler.f60166a);
    }

    public void U(@NonNull String str, boolean z10) {
        nSetParameterBool(l(), str, z10);
    }

    public void V(@NonNull String str, boolean z10, boolean z11) {
        nSetParameterBool2(l(), str, z10, z11);
    }

    public void W(@NonNull String str, boolean z10, boolean z11, boolean z12) {
        nSetParameterBool3(l(), str, z10, z11, z12);
    }

    public void X(@NonNull String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        nSetParameterBool4(l(), str, z10, z11, z12, z13);
    }

    public void Y(float f10, float f11) {
        nSetPolygonOffset(l(), f10, f11);
    }

    public void Z(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
        nSetScissor(l(), i10, i11, i12, i13);
    }

    public void a() {
        this.f60034c = 0L;
    }

    public void a0(float f10) {
        nSetSpecularAntiAliasingThreshold(l(), f10);
    }

    public void b(@NonNull Material.c cVar, int i10, @Nullable Object obj, @Nullable Runnable runnable) {
        nCompile(l(), cVar.ordinal(), i10, obj, runnable);
    }

    public void b0(float f10) {
        nSetSpecularAntiAliasingVariance(l(), f10);
    }

    public void c0(TextureSampler.a aVar) {
        d0(aVar, d.FRONT_AND_BACK);
    }

    public boolean d(@NonNull String str) {
        return nGetConstantBool(l(), str);
    }

    public void d0(TextureSampler.a aVar, d dVar) {
        nSetStencilCompareFunction(l(), aVar.ordinal(), f60031f[dVar.ordinal()]);
    }

    public float e(@NonNull String str) {
        return nGetConstantFloat(l(), str);
    }

    public void e0(e eVar) {
        f0(eVar, d.FRONT_AND_BACK);
    }

    public int f(@NonNull String str) {
        return nGetConstantInt(l(), str);
    }

    public void f0(e eVar, d dVar) {
        nSetStencilOpDepthFail(l(), eVar.ordinal(), f60031f[dVar.ordinal()]);
    }

    @NonNull
    public Material.d g() {
        return f60030e[nGetCullingMode(l())];
    }

    public void g0(e eVar) {
        h0(eVar, d.FRONT_AND_BACK);
    }

    public TextureSampler.a h() {
        return TextureSampler.c.f60171e[nGetDepthFunc(l())];
    }

    public void h0(e eVar, d dVar) {
        nSetStencilOpDepthStencilPass(l(), eVar.ordinal(), f60031f[dVar.ordinal()]);
    }

    public float i() {
        return nGetMaskThreshold(l());
    }

    public void i0(e eVar) {
        j0(eVar, d.FRONT_AND_BACK);
    }

    @NonNull
    public Material j() {
        if (this.f60032a == null) {
            this.f60032a = new Material(this.f60035d);
        }
        return this.f60032a;
    }

    public void j0(e eVar, d dVar) {
        nSetStencilOpStencilFail(l(), eVar.ordinal(), f60031f[dVar.ordinal()]);
    }

    @NonNull
    public String k() {
        if (this.f60033b == null) {
            this.f60033b = nGetName(l());
        }
        return this.f60033b;
    }

    public void k0(@IntRange(from = 0, to = 255) int i10) {
        l0(i10, d.FRONT_AND_BACK);
    }

    public long l() {
        long j10 = this.f60034c;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed MaterialInstance");
    }

    public void l0(@IntRange(from = 0, to = 255) int i10, d dVar) {
        nSetStencilReadMask(l(), i10, f60031f[dVar.ordinal()]);
    }

    @NonNull
    public Material.d m() {
        return f60030e[nGetShadowCullingMode(l())];
    }

    public void m0(@IntRange(from = 0, to = 255) int i10) {
        n0(i10, d.FRONT_AND_BACK);
    }

    public float n() {
        return nGetSpecularAntiAliasingThreshold(l());
    }

    public void n0(@IntRange(from = 0, to = 255) int i10, d dVar) {
        nSetStencilReferenceValue(l(), i10, f60031f[dVar.ordinal()]);
    }

    public float o() {
        return nGetSpecularAntiAliasingVariance(l());
    }

    public void o0(boolean z10) {
        nSetStencilWrite(l(), z10);
    }

    @NonNull
    public Material.k p() {
        return Material.e.f60020k[nGetTransparencyMode(l())];
    }

    public void p0(int i10) {
        q0(i10, d.FRONT_AND_BACK);
    }

    public boolean q() {
        return nIsColorWriteEnabled(l());
    }

    public void q0(@IntRange(from = 0, to = 255) int i10, d dVar) {
        nSetStencilWriteMask(l(), i10, f60031f[dVar.ordinal()]);
    }

    public boolean r() {
        return nIsDepthCullingEnabled(l());
    }

    public void r0(@NonNull Material.k kVar) {
        nSetTransparencyMode(l(), kVar.ordinal());
    }

    public boolean s() {
        return nIsDepthWriteEnabled(l());
    }

    public void s0() {
        nUnsetScissor(l());
    }

    public boolean t() {
        return nIsDoubleSided(l());
    }

    public boolean u() {
        return nIsStencilWriteEnabled(l());
    }

    public void v(boolean z10) {
        nSetColorWrite(l(), z10);
    }

    public void w(@NonNull String str, float f10) {
        nSetConstantFloat(l(), str, f10);
    }

    public void x(@NonNull String str, int i10) {
        nSetConstantInt(l(), str, i10);
    }

    public void y(@NonNull String str, boolean z10) {
        nSetConstantBool(l(), str, z10);
    }

    public void z(@NonNull Material.d dVar) {
        nSetCullingMode(l(), dVar.ordinal());
    }

    public MaterialInstance(@NonNull Material material, long j10) {
        this.f60032a = material;
        this.f60035d = material.m();
        this.f60034c = j10;
    }

    public MaterialInstance(long j10) {
        this.f60034c = j10;
        this.f60035d = nGetMaterial(j10);
    }
}
