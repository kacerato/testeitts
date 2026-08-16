package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.resource.bitmap.J;

@Deprecated
public class H extends J<ParcelFileDescriptor> {
    public H(Context context) {
        this(com.bumptech.glide.b.d(context).g());
    }

    public H(F.e eVar) {
        super(eVar, new J.g());
    }
}
