package com.bumptech.glide.load.engine;

import G.a;
import androidx.annotation.NonNull;
import java.io.File;

public class d<DataType> implements a.b {

    public final C.d<DataType> f59115a;

    public final DataType f59116b;

    public final C.h f59117c;

    public d(C.d<DataType> dVar, DataType datatype, C.h hVar) {
        this.f59115a = dVar;
        this.f59116b = datatype;
        this.f59117c = hVar;
    }

    @Override
    public boolean a(@NonNull File file) {
        return this.f59115a.b(this.f59116b, file, this.f59117c);
    }
}
