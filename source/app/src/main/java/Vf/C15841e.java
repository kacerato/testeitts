package vf;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class C15841e {
    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int a(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger.addAndGet(-1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long b(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong.addAndGet(-1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int c(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger.getAndAdd(-1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long d(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong.getAndAdd(-1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int e(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger.getAndAdd(1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long f(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong.getAndAdd(1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final int g(@NotNull AtomicInteger atomicInteger) {
        M.p(atomicInteger, "<this>");
        return atomicInteger.addAndGet(1);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final long h(@NotNull AtomicLong atomicLong) {
        M.p(atomicLong, "<this>");
        return atomicLong.addAndGet(1L);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final void i(@NotNull AtomicInteger atomicInteger, int i10) {
        M.p(atomicInteger, "<this>");
        atomicInteger.addAndGet(-i10);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final void j(@NotNull AtomicLong atomicLong, long j10) {
        M.p(atomicLong, "<this>");
        atomicLong.addAndGet(-j10);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final void k(@NotNull AtomicInteger atomicInteger, int i10) {
        M.p(atomicInteger, "<this>");
        atomicInteger.addAndGet(i10);
    }

    @InterfaceC15843g
    @InterfaceC14422l0(version = "2.1")
    public static final void l(@NotNull AtomicLong atomicLong, long j10) {
        M.p(atomicLong, "<this>");
        atomicLong.addAndGet(j10);
    }
}
