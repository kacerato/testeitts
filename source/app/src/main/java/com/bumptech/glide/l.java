package com.bumptech.glide;

import W.j;
import androidx.annotation.NonNull;
import com.bumptech.glide.l;

public abstract class l<CHILD extends l<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    public W.g<? super TranscodeType> f59076b = W.e.c();

    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public final CHILD b() {
        return f(W.e.c());
    }

    public final W.g<? super TranscodeType> c() {
        return this.f59076b;
    }

    public final CHILD d() {
        return this;
    }

    @NonNull
    public final CHILD e(int i10) {
        return f(new W.h(i10));
    }

    @NonNull
    public final CHILD f(@NonNull W.g<? super TranscodeType> gVar) {
        this.f59076b = (W.g) Y.k.d(gVar);
        return d();
    }

    @NonNull
    public final CHILD g(@NonNull j.a aVar) {
        return f(new W.i(aVar));
    }
}
