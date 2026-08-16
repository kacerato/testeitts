package com.google.android.filament;

import androidx.annotation.NonNull;

public class TextureSampler {

    public long f60166a;

    public enum a {
        LESS_EQUAL,
        GREATER_EQUAL,
        LESS,
        GREATER,
        EQUAL,
        NOT_EQUAL,
        ALWAYS,
        NEVER
    }

    public enum b {
        NONE,
        COMPARE_TO_TEXTURE
    }

    public static final class c {

        public static final e[] f60167a = e.values();

        public static final d[] f60168b = d.values();

        public static final f[] f60169c = f.values();

        public static final b[] f60170d = b.values();

        public static final a[] f60171e = a.values();
    }

    public enum d {
        NEAREST,
        LINEAR
    }

    public enum e {
        NEAREST,
        LINEAR,
        NEAREST_MIPMAP_NEAREST,
        LINEAR_MIPMAP_NEAREST,
        NEAREST_MIPMAP_LINEAR,
        LINEAR_MIPMAP_LINEAR
    }

    public enum f {
        CLAMP_TO_EDGE,
        REPEAT,
        MIRRORED_REPEAT
    }

    public TextureSampler() {
        this(e.LINEAR_MIPMAP_LINEAR, d.LINEAR, f.REPEAT);
    }

    public static e i(@NonNull d dVar) {
        return dVar.ordinal() != 0 ? e.LINEAR : e.NEAREST;
    }

    private static native long nCreateCompareSampler(int i10, int i11);

    private static native long nCreateSampler(int i10, int i11, int i12, int i13, int i14);

    private static native float nGetAnisotropy(long j10);

    private static native int nGetCompareFunction(long j10);

    private static native int nGetCompareMode(long j10);

    private static native int nGetMagFilter(long j10);

    private static native int nGetMinFilter(long j10);

    private static native int nGetWrapModeR(long j10);

    private static native int nGetWrapModeS(long j10);

    private static native int nGetWrapModeT(long j10);

    private static native long nSetAnisotropy(long j10, float f10);

    private static native long nSetCompareFunction(long j10, int i10);

    private static native long nSetCompareMode(long j10, int i10);

    private static native long nSetMagFilter(long j10, int i10);

    private static native long nSetMinFilter(long j10, int i10);

    private static native long nSetWrapModeR(long j10, int i10);

    private static native long nSetWrapModeS(long j10, int i10);

    private static native long nSetWrapModeT(long j10, int i10);

    public float a() {
        return nGetAnisotropy(this.f60166a);
    }

    public a b() {
        return c.f60171e[nGetCompareFunction(this.f60166a)];
    }

    public b c() {
        return c.f60170d[nGetCompareMode(this.f60166a)];
    }

    public d d() {
        return c.f60168b[nGetMagFilter(this.f60166a)];
    }

    public e e() {
        return c.f60167a[nGetMinFilter(this.f60166a)];
    }

    public f f() {
        return c.f60169c[nGetWrapModeR(this.f60166a)];
    }

    public f g() {
        return c.f60169c[nGetWrapModeS(this.f60166a)];
    }

    public f h() {
        return c.f60169c[nGetWrapModeT(this.f60166a)];
    }

    public void j(float f10) {
        this.f60166a = nSetAnisotropy(this.f60166a, f10);
    }

    public void k(a aVar) {
        this.f60166a = nSetCompareFunction(this.f60166a, aVar.ordinal());
    }

    public void l(b bVar) {
        this.f60166a = nSetCompareMode(this.f60166a, bVar.ordinal());
    }

    public void m(d dVar) {
        this.f60166a = nSetMagFilter(this.f60166a, dVar.ordinal());
    }

    public void n(e eVar) {
        this.f60166a = nSetMinFilter(this.f60166a, eVar.ordinal());
    }

    public void o(f fVar) {
        this.f60166a = nSetWrapModeR(this.f60166a, fVar.ordinal());
    }

    public void p(f fVar) {
        this.f60166a = nSetWrapModeS(this.f60166a, fVar.ordinal());
    }

    public void q(f fVar) {
        this.f60166a = nSetWrapModeT(this.f60166a, fVar.ordinal());
    }

    public TextureSampler(@NonNull d dVar) {
        this(dVar, f.CLAMP_TO_EDGE);
    }

    public TextureSampler(@NonNull d dVar, @NonNull f fVar) {
        this(i(dVar), dVar, fVar);
    }

    public TextureSampler(@NonNull e eVar, @NonNull d dVar, @NonNull f fVar) {
        this(eVar, dVar, fVar, fVar, fVar);
    }

    public TextureSampler(@NonNull e eVar, @NonNull d dVar, @NonNull f fVar, @NonNull f fVar2, @NonNull f fVar3) {
        this.f60166a = 0L;
        this.f60166a = nCreateSampler(eVar.ordinal(), dVar.ordinal(), fVar.ordinal(), fVar2.ordinal(), fVar3.ordinal());
    }

    public TextureSampler(@NonNull b bVar) {
        this(bVar, a.LESS_EQUAL);
    }

    public TextureSampler(@NonNull b bVar, @NonNull a aVar) {
        this.f60166a = 0L;
        this.f60166a = nCreateCompareSampler(bVar.ordinal(), aVar.ordinal());
    }
}
