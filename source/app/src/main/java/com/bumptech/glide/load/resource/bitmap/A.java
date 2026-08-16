package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;

@RequiresApi(21)
public final class A implements C.j<ParcelFileDescriptor, Bitmap> {

    public final q f59309a;

    public A(q qVar) {
        this.f59309a = qVar;
    }

    @Override
    @Nullable
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, @NonNull C.h hVar) throws IOException {
        return this.f59309a.d(parcelFileDescriptor, i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull C.h hVar) {
        return this.f59309a.o(parcelFileDescriptor);
    }
}
