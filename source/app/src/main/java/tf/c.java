package Tf;

import java.util.Random;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class c extends Random {

    @NotNull
    public static final a f24949d = new a(null);

    public static final long f24950e = 0;

    @NotNull
    public final f f24951b;

    public boolean f24952c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public c(@NotNull f impl) {
        M.p(impl, "impl");
        this.f24951b = impl;
    }

    @NotNull
    public final f a() {
        return this.f24951b;
    }

    @Override
    public int next(int i10) {
        return this.f24951b.b(i10);
    }

    @Override
    public boolean nextBoolean() {
        return this.f24951b.c();
    }

    @Override
    public void nextBytes(@NotNull byte[] bytes) {
        M.p(bytes, "bytes");
        this.f24951b.e(bytes);
    }

    @Override
    public double nextDouble() {
        return this.f24951b.h();
    }

    @Override
    public float nextFloat() {
        return this.f24951b.k();
    }

    @Override
    public int nextInt() {
        return this.f24951b.l();
    }

    @Override
    public long nextLong() {
        return this.f24951b.o();
    }

    @Override
    public void setSeed(long j10) {
        if (this.f24952c) {
            throw new UnsupportedOperationException("Setting seed is not supported.");
        }
        this.f24952c = true;
    }

    @Override
    public int nextInt(int i10) {
        return this.f24951b.m(i10);
    }
}
