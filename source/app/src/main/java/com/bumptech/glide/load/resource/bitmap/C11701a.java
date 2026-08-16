package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

public class C11701a<DataType> implements C.j<DataType, BitmapDrawable> {

    public final C.j<DataType, Bitmap> f59381a;

    public final Resources f59382b;

    public C11701a(Context context, C.j<DataType, Bitmap> jVar) {
        this(context.getResources(), jVar);
    }

    @Override
    public com.bumptech.glide.load.engine.t<BitmapDrawable> a(@NonNull DataType datatype, int i10, int i11, @NonNull C.h hVar) throws IOException {
        return z.c(this.f59382b, this.f59381a.a(datatype, i10, i11, hVar));
    }

    @Override
    public boolean b(@NonNull DataType datatype, @NonNull C.h hVar) throws IOException {
        return this.f59381a.b(datatype, hVar);
    }

    @Deprecated
    public C11701a(Resources resources, F.e eVar, C.j<DataType, Bitmap> jVar) {
        this(resources, jVar);
    }

    public C11701a(@NonNull Resources resources, @NonNull C.j<DataType, Bitmap> jVar) {
        this.f59382b = (Resources) Y.k.d(resources);
        this.f59381a = (C.j) Y.k.d(jVar);
    }
}
