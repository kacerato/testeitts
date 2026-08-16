package vf;

import Mf.l;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class C15842f extends C15841e {
    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final int A(AtomicInteger atomicInteger, l<? super Integer, Integer> transform) {
        int i10;
        int intValue;
        M.p(atomicInteger, "<this>");
        M.p(transform, "transform");
        do {
            i10 = atomicInteger.get();
            intValue = transform.invoke(Integer.valueOf(i10)).intValue();
        } while (!atomicInteger.compareAndSet(i10, intValue));
        return intValue;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final long B(AtomicLong atomicLong, l<? super Long, Long> transform) {
        long j10;
        long longValue;
        M.p(atomicLong, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLong.get();
            longValue = transform.invoke(Long.valueOf(j10)).longValue();
        } while (!atomicLong.compareAndSet(j10, longValue));
        return longValue;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> T C(AtomicReference<T> atomicReference, l<? super T, ? extends T> transform) {
        T t10;
        T invoke;
        M.p(atomicReference, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReference.get();
            invoke = transform.invoke(t10);
        } while (!androidx.lifecycle.c.a(atomicReference, t10, invoke));
        return invoke;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicBoolean m(@NotNull AtomicBoolean atomicBoolean) {
        M.p(atomicBoolean, "<this>");
        return atomicBoolean;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicInteger n(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicLong o(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final <T> AtomicReference<T> p(@NotNull AtomicReference<T> atomicReference) {
        M.p(atomicReference, "<this>");
        return atomicReference;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicBoolean q(@NotNull AtomicBoolean atomicBoolean) {
        M.p(atomicBoolean, "<this>");
        return atomicBoolean;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicInteger r(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicLong s(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong;
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final <T> AtomicReference<T> t(@NotNull AtomicReference<T> atomicReference) {
        M.p(atomicReference, "<this>");
        return atomicReference;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final int u(AtomicInteger atomicInteger, l<? super Integer, Integer> transform) {
        int i10;
        M.p(atomicInteger, "<this>");
        M.p(transform, "transform");
        do {
            i10 = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i10, transform.invoke(Integer.valueOf(i10)).intValue()));
        return i10;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final long v(AtomicLong atomicLong, l<? super Long, Long> transform) {
        long j10;
        M.p(atomicLong, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j10, transform.invoke(Long.valueOf(j10)).longValue()));
        return j10;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> T w(AtomicReference<T> atomicReference, l<? super T, ? extends T> transform) {
        T t10;
        M.p(atomicReference, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReference.get();
        } while (!androidx.lifecycle.c.a(atomicReference, t10, transform.invoke(t10)));
        return t10;
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final void x(AtomicInteger atomicInteger, l<? super Integer, Integer> transform) {
        int i10;
        M.p(atomicInteger, "<this>");
        M.p(transform, "transform");
        do {
            i10 = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i10, transform.invoke(Integer.valueOf(i10)).intValue()));
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final void y(AtomicLong atomicLong, l<? super Long, Long> transform) {
        long j10;
        M.p(atomicLong, "<this>");
        M.p(transform, "transform");
        do {
            j10 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j10, transform.invoke(Long.valueOf(j10)).longValue()));
    }

    @Ef.f
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> void z(AtomicReference<T> atomicReference, l<? super T, ? extends T> transform) {
        T t10;
        M.p(atomicReference, "<this>");
        M.p(transform, "transform");
        do {
            t10 = atomicReference.get();
        } while (!androidx.lifecycle.c.a(atomicReference, t10, transform.invoke(t10)));
    }
}
