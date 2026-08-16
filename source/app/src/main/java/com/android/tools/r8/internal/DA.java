package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import java.util.List;
import java.util.Set;

public class DA implements InterfaceC9975vm {

    public final boolean f39458a;

    public final SA f39459b;

    public final IA f39460c;

    public DA(SA sa2, IA ia2, boolean z10) {
        this.f39458a = z10;
        this.f39459b = sa2;
        this.f39460c = ia2;
    }

    @Override
    public final String a() {
        return this.f39459b.f44146d;
    }

    @Override
    public final boolean b() {
        return this.f39458a;
    }

    @Override
    public final Set c() {
        return this.f39460c.f40992c;
    }

    @Override
    public final C2 d() {
        return this.f39459b.c();
    }

    @Override
    public final List e() {
        return this.f39459b.a();
    }

    @Override
    public final String f() {
        return this.f39459b.d();
    }

    @Override
    public final boolean isEmpty() {
        return this.f39460c.k();
    }

    @Override
    public C10261xU a(AbstractC4780x0 abstractC4780x0, C8659ns0 c8659ns0) {
        return new OA(c8659ns0).a(this, abstractC4780x0);
    }
}
