package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class C11705e implements C.k<Bitmap> {

    public static final C.g<Integer> f59387b = C.g.g("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    public static final C.g<Bitmap.CompressFormat> f59388c = C.g.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    public static final String f59389d = "BitmapEncoder";

    @Nullable
    public final F.b f59390a;

    public C11705e(@NonNull F.b bVar) {
        this.f59390a = bVar;
    }

    @Override
    @NonNull
    public C.c a(@NonNull C.h hVar) {
        return C.c.TRANSFORMED;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0076 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #4 {all -> 0x0056, blocks: (B:3:0x0021, B:14:0x0052, B:17:0x0070, B:19:0x0076, B:45:0x00c2, B:43:0x00c5, B:37:0x006b), top: B:2:0x0021 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(@NonNull com.bumptech.glide.load.engine.t<Bitmap> tVar, @NonNull File file, @NonNull C.h hVar) {
        boolean z10;
        FileOutputStream fileOutputStream;
        Bitmap bitmap = tVar.get();
        Bitmap.CompressFormat d10 = d(bitmap, hVar);
        Z.b.d("encode: [%dx%d] %s", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), d10);
        try {
            long b10 = Y.g.b();
            int intValue = ((Integer) hVar.a(f59387b)).intValue();
            OutputStream outputStream = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e10) {
                e = e10;
            }
            try {
                outputStream = this.f59390a != null ? new D.c(fileOutputStream, this.f59390a) : fileOutputStream;
                bitmap.compress(d10, intValue, outputStream);
                outputStream.close();
                try {
                    outputStream.close();
                } catch (IOException unused) {
                }
                z10 = true;
            } catch (IOException e11) {
                e = e11;
                outputStream = fileOutputStream;
                if (Log.isLoggable(f59389d, 3)) {
                    Log.d(f59389d, "Failed to encode Bitmap", e);
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                z10 = false;
                if (Log.isLoggable(f59389d, 2)) {
                }
                return z10;
            } catch (Throwable th3) {
                th = th3;
                outputStream = fileOutputStream;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
            if (Log.isLoggable(f59389d, 2)) {
                Log.v(f59389d, "Compressed with type: " + ((Object) d10) + " of size " + Y.m.h(bitmap) + " in " + Y.g.a(b10) + ", options format: " + hVar.a(f59388c) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z10;
        } finally {
            Z.b.e();
        }
    }

    public final Bitmap.CompressFormat d(Bitmap bitmap, C.h hVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) hVar.a(f59388c);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Deprecated
    public C11705e() {
        this.f59390a = null;
    }
}
