package vf;

import Mf.l;
import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nAtomicArrays.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicArrays.common.kt\nkotlin/concurrent/atomics/AtomicArraysKt__AtomicArrays_commonKt\n*L\n1#1,769:1\n667#1:770\n*S KotlinDebug\n*F\n+ 1 AtomicArrays.common.kt\nkotlin/concurrent/atomics/AtomicArraysKt__AtomicArrays_commonKt\n*L\n679#1:770\n*E\n"})
public class C15838b {
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final <T> AtomicReferenceArray<T> a(int i10, l<? super Integer, ? extends T> init) {
        M.p(init, "init");
        M.y(0, ExifInterface.GPS_DIRECTION_TRUE);
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = init.invoke(Integer.valueOf(i11));
        }
        return new AtomicReferenceArray<>(objArr);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray b(int i10, @NotNull l<? super Integer, Integer> init) {
        M.p(init, "init");
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = init.invoke(Integer.valueOf(i11)).intValue();
        }
        return new AtomicIntegerArray(iArr);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final AtomicLongArray c(int i10, @NotNull l<? super Integer, Long> init) {
        M.p(init, "init");
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = init.invoke(Integer.valueOf(i11)).longValue();
        }
        return new AtomicLongArray(jArr);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.2")
    public static final <T> AtomicReferenceArray<T> d(int i10) {
        M.y(0, "T?");
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        return new AtomicReferenceArray<>(objArr);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int e(@NotNull AtomicIntegerArray atomicIntegerArray, int i10) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray.addAndGet(i10, -1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long f(@NotNull AtomicLongArray atomicLongArray, int i10) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray.addAndGet(i10, -1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int g(@NotNull AtomicIntegerArray atomicIntegerArray, int i10) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray.getAndAdd(i10, -1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long h(@NotNull AtomicLongArray atomicLongArray, int i10) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray.getAndAdd(i10, -1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int i(@NotNull AtomicIntegerArray atomicIntegerArray, int i10) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray.getAndAdd(i10, 1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long j(@NotNull AtomicLongArray atomicLongArray, int i10) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray.getAndAdd(i10, 1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int k(@NotNull AtomicIntegerArray atomicIntegerArray, int i10) {
        M.p(atomicIntegerArray, "<this>");
        return atomicIntegerArray.addAndGet(i10, 1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long l(@NotNull AtomicLongArray atomicLongArray, int i10) {
        M.p(atomicLongArray, "<this>");
        return atomicLongArray.addAndGet(i10, 1L);
    }
}
