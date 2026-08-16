package com.itsmagic.engine.Engines.Sound.Imported;

import Gc.a;
import java.io.File;
import java.io.IOException;

public final class e implements AutoCloseable {

    public final Gc.a f81459b;

    public static final class a {

        public short[] f81460a;

        public int f81461b;

        public a.C0150a f81462c;
    }

    public e(File file) throws IOException {
        this.f81459b = new Gc.a(file);
    }

    public int c() {
        return this.f81459b.b();
    }

    @Override
    public void close() {
        this.f81459b.g();
    }

    public int d() {
        return this.f81459b.c();
    }

    public a e(a reuse) {
        if (reuse == null) {
            reuse = new a();
        }
        reuse.f81462c = this.f81459b.e(reuse.f81462c);
        if (reuse.f81462c == null) {
            return null;
        }
        reuse.f81460a = reuse.f81462c.f7762a;
        reuse.f81461b = reuse.f81462c.f7763b;
        return reuse;
    }
}
