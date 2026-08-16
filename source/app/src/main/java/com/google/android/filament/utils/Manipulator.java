package com.google.android.filament.utils;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;

public class Manipulator {

    public static final d[] f60407b = d.values();

    public final long f60408a;

    public static class a {

        public final C0943a f60409a;

        public final long f60410b;

        public static class C0943a {

            public final long f60411a;

            public C0943a(long j10) {
                this.f60411a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                Manipulator.nDestroyBuilder(this.f60411a);
            }
        }

        public a() {
            long u10 = Manipulator.u();
            this.f60410b = u10;
            this.f60409a = new C0943a(u10);
        }

        @NonNull
        public Manipulator a(d dVar) {
            long nBuilderBuild = Manipulator.nBuilderBuild(this.f60410b, dVar.ordinal());
            if (nBuilderBuild != 0) {
                return new Manipulator(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create Manipulator");
        }

        @NonNull
        public a b(float f10) {
            Manipulator.nBuilderFarPlane(this.f60410b, f10);
            return this;
        }

        public a c(float f10) {
            Manipulator.nBuilderFlightMaxMoveSpeed(this.f60410b, f10);
            return this;
        }

        public a d(float f10) {
            Manipulator.nBuilderFlightMoveDamping(this.f60410b, f10);
            return this;
        }

        public a e(float f10, float f11) {
            Manipulator.nBuilderFlightPanSpeed(this.f60410b, f10, f11);
            return this;
        }

        public a f(int i10) {
            Manipulator.nBuilderFlightSpeedSteps(this.f60410b, i10);
            return this;
        }

        public a g(float f10, float f11) {
            Manipulator.nBuilderFlightStartOrientation(this.f60410b, f10, f11);
            return this;
        }

        public a h(float f10, float f11, float f12) {
            Manipulator.nBuilderFlightStartPosition(this.f60410b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a i(float f10) {
            Manipulator.nBuilderFovDegrees(this.f60410b, f10);
            return this;
        }

        @NonNull
        public a j(b bVar) {
            Manipulator.nBuilderFovDirection(this.f60410b, bVar.ordinal());
            return this;
        }

        @NonNull
        public a k(float f10, float f11, float f12, float f13) {
            Manipulator.nBuilderGroundPlane(this.f60410b, f10, f11, f12, f13);
            return this;
        }

        @NonNull
        public a l(float f10, float f11) {
            Manipulator.nBuilderMapExtent(this.f60410b, f10, f11);
            return this;
        }

        @NonNull
        public a m(float f10) {
            Manipulator.nBuilderMapMinDistance(this.f60410b, f10);
            return this;
        }

        @NonNull
        public a n(float f10, float f11, float f12) {
            Manipulator.nBuilderOrbitHomePosition(this.f60410b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a o(float f10, float f11) {
            Manipulator.nBuilderOrbitSpeed(this.f60410b, f10, f11);
            return this;
        }

        @NonNull
        public a p(Boolean bool) {
            Manipulator.nBuilderPanning(this.f60410b, bool);
            return this;
        }

        @NonNull
        public a q(float f10, float f11, float f12) {
            Manipulator.nBuilderTargetPosition(this.f60410b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a r(float f10, float f11, float f12) {
            Manipulator.nBuilderUpVector(this.f60410b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a s(@IntRange(from = 1) int i10, @IntRange(from = 1) int i11) {
            Manipulator.nBuilderViewport(this.f60410b, i10, i11);
            return this;
        }

        @NonNull
        public a t(float f10) {
            Manipulator.nBuilderZoomSpeed(this.f60410b, f10);
            return this;
        }
    }

    public enum b {
        VERTICAL,
        HORIZONTAL
    }

    public enum c {
        FORWARD,
        LEFT,
        BACKWARD,
        RIGHT,
        UP,
        DOWN
    }

    public enum d {
        ORBIT,
        MAP,
        FREE_FLIGHT
    }

    public static native long nBuilderBuild(long j10, int i10);

    public static native void nBuilderFarPlane(long j10, float f10);

    public static native void nBuilderFlightMaxMoveSpeed(long j10, float f10);

    public static native void nBuilderFlightMoveDamping(long j10, float f10);

    public static native void nBuilderFlightPanSpeed(long j10, float f10, float f11);

    public static native void nBuilderFlightSpeedSteps(long j10, int i10);

    public static native void nBuilderFlightStartOrientation(long j10, float f10, float f11);

    public static native void nBuilderFlightStartPosition(long j10, float f10, float f11, float f12);

    public static native void nBuilderFovDegrees(long j10, float f10);

    public static native void nBuilderFovDirection(long j10, int i10);

    public static native void nBuilderGroundPlane(long j10, float f10, float f11, float f12, float f13);

    public static native void nBuilderMapExtent(long j10, float f10, float f11);

    public static native void nBuilderMapMinDistance(long j10, float f10);

    public static native void nBuilderOrbitHomePosition(long j10, float f10, float f11, float f12);

    public static native void nBuilderOrbitSpeed(long j10, float f10, float f11);

    public static native void nBuilderPanning(long j10, Boolean bool);

    public static native void nBuilderTargetPosition(long j10, float f10, float f11, float f12);

    public static native void nBuilderUpVector(long j10, float f10, float f11, float f12);

    public static native void nBuilderViewport(long j10, int i10, int i11);

    public static native void nBuilderZoomSpeed(long j10, float f10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native void nDestroyManipulator(long j10);

    private static native long nGetCurrentBookmark(long j10);

    private static native long nGetHomeBookmark(long j10);

    private static native void nGetLookAtDouble(long j10, double[] dArr, double[] dArr2, double[] dArr3);

    private static native void nGetLookAtFloat(long j10, float[] fArr, float[] fArr2, float[] fArr3);

    private static native int nGetMode(long j10);

    private static native void nGrabBegin(long j10, int i10, int i11, boolean z10);

    private static native void nGrabEnd(long j10);

    private static native void nGrabUpdate(long j10, int i10, int i11);

    private static native void nJumpToBookmark(long j10, long j11);

    private static native void nKeyDown(long j10, int i10);

    private static native void nKeyUp(long j10, int i10);

    private static native void nRaycast(long j10, int i10, int i11, float[] fArr);

    private static native void nScroll(long j10, int i10, int i11, float f10);

    private static native void nSetViewport(long j10, int i10, int i11);

    private static native void nUpdate(long j10, float f10);

    public static long u() {
        return nCreateBuilder();
    }

    public d A() {
        return f60407b[nGetMode(this.f60408a)];
    }

    public void B(int i10, int i11, boolean z10) {
        nGrabBegin(this.f60408a, i10, i11, z10);
    }

    public void C() {
        nGrabEnd(this.f60408a);
    }

    public void D(int i10, int i11) {
        nGrabUpdate(this.f60408a, i10, i11);
    }

    public void E(Bookmark bookmark) {
        nJumpToBookmark(this.f60408a, bookmark.a());
    }

    public void F(c cVar) {
        nKeyDown(this.f60408a, cVar.ordinal());
    }

    public void G(c cVar) {
        nKeyUp(this.f60408a, cVar.ordinal());
    }

    @Nullable
    @Size(min = 3)
    public float[] H(int i10, int i11) {
        float[] fArr = new float[3];
        nRaycast(this.f60408a, i10, i11, fArr);
        return fArr;
    }

    public void I(int i10, int i11, float f10) {
        nScroll(this.f60408a, i10, i11, f10);
    }

    public void J(int i10, int i11) {
        nSetViewport(this.f60408a, i10, i11);
    }

    public void K(float f10) {
        nUpdate(this.f60408a, f10);
    }

    public void finalize() {
        try {
            super.finalize();
        } catch (Throwable unused) {
        }
        nDestroyManipulator(this.f60408a);
    }

    public Bookmark w() {
        return new Bookmark(nGetCurrentBookmark(this.f60408a));
    }

    public Bookmark x() {
        return new Bookmark(nGetHomeBookmark(this.f60408a));
    }

    public void y(@NonNull @Size(min = 3) double[] dArr, @NonNull @Size(min = 3) double[] dArr2, @NonNull @Size(min = 3) double[] dArr3) {
        nGetLookAtDouble(this.f60408a, dArr, dArr2, dArr3);
    }

    public void z(@NonNull @Size(min = 3) float[] fArr, @NonNull @Size(min = 3) float[] fArr2, @NonNull @Size(min = 3) float[] fArr3) {
        nGetLookAtFloat(this.f60408a, fArr, fArr2, fArr3);
    }

    public Manipulator(long j10) {
        this.f60408a = j10;
    }
}
