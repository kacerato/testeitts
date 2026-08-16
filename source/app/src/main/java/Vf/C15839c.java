package vf;

import Mf.l;
import com.google.common.util.concurrent.C0;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class C15839c extends C15838b {
    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> void A(AtomicReferenceArray<T> atomicReferenceArray, int i10, l<? super T, ? extends T> transform) {
        T t10;
        M.p(atomicReferenceArray, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReferenceArray.get(i10);
        } while (!C0.a(atomicReferenceArray, i10, t10, transform.invoke(t10)));
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray m(@NotNull AtomicIntegerArray atomicIntegerArray) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicLongArray n(@NotNull AtomicLongArray atomicLongArray) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final <T> AtomicReferenceArray<T> o(@NotNull AtomicReferenceArray<T> atomicReferenceArray) {
        M.p(atomicReferenceArray, "<this>");
        return atomicReferenceArray;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray p(@NotNull AtomicIntegerArray atomicIntegerArray) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicLongArray q(@NotNull AtomicLongArray atomicLongArray) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final <T> AtomicReferenceArray<T> r(@NotNull AtomicReferenceArray<T> atomicReferenceArray) {
        M.p(atomicReferenceArray, "<this>");
        return atomicReferenceArray;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final int s(AtomicIntegerArray atomicIntegerArray, int i10, l<? super Integer, Integer> transform) {
        int i11;
        M.p(atomicIntegerArray, "<this>");
        M.p(transform, "transform");
        do {
            i11 = atomicIntegerArray.get(i10);
        } while (!atomicIntegerArray.compareAndSet(i10, i11, transform.invoke(Integer.valueOf(i11)).intValue()));
        return i11;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final long t(AtomicLongArray atomicLongArray, int i10, l<? super Long, Long> transform) {
        long j10;
        M.p(atomicLongArray, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLongArray.get(i10);
        } while (!atomicLongArray.compareAndSet(i10, j10, transform.invoke(Long.valueOf(j10)).longValue()));
        return j10;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> T u(AtomicReferenceArray<T> atomicReferenceArray, int i10, l<? super T, ? extends T> transform) {
        T t10;
        M.p(atomicReferenceArray, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReferenceArray.get(i10);
        } while (!C0.a(atomicReferenceArray, i10, t10, transform.invoke(t10)));
        return t10;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final int v(AtomicIntegerArray atomicIntegerArray, int i10, l<? super Integer, Integer> transform) {
        int i11;
        int intValue;
        M.p(atomicIntegerArray, "<this>");
        M.p(transform, "transform");
        do {
            i11 = atomicIntegerArray.get(i10);
            intValue = transform.invoke(Integer.valueOf(i11)).intValue();
        } while (!atomicIntegerArray.compareAndSet(i10, i11, intValue));
        return intValue;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final long w(AtomicLongArray atomicLongArray, int i10, l<? super Long, Long> transform) {
        long j10;
        long longValue;
        M.p(atomicLongArray, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLongArray.get(i10);
            longValue = transform.invoke(Long.valueOf(j10)).longValue();
        } while (!atomicLongArray.compareAndSet(i10, j10, longValue));
        return longValue;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> T x(AtomicReferenceArray<T> atomicReferenceArray, int i10, l<? super T, ? extends T> transform) {
        T t10;
        T invoke;
        M.p(atomicReferenceArray, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReferenceArray.get(i10);
            invoke = transform.invoke(t10);
        } while (!C0.a(atomicReferenceArray, i10, t10, invoke));
        return invoke;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final void y(AtomicIntegerArray atomicIntegerArray, int i10, l<? super Integer, Integer> transform) {
        int i11;
        M.p(atomicIntegerArray, "<this>");
        M.p(transform, "transform");
        do {
            i11 = atomicIntegerArray.get(i10);
        } while (!atomicIntegerArray.compareAndSet(i10, i11, transform.invoke(Integer.valueOf(i11)).intValue()));
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final void z(AtomicLongArray atomicLongArray, int i10, l<? super Long, Long> transform) {
        long j10;
        M.p(atomicLongArray, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLongArray.get(i10);
        } while (!atomicLongArray.compareAndSet(i10, j10, transform.invoke(Long.valueOf(j10)).longValue()));
    }
}
