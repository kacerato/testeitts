package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;

public interface e {

    public interface a {
        void a(C.e eVar, @Nullable Object obj, D.d<?> dVar, C.a aVar, C.e eVar2);

        void c(C.e eVar, Exception exc, D.d<?> dVar, C.a aVar);

        void e();
    }

    boolean b();

    void cancel();
}
