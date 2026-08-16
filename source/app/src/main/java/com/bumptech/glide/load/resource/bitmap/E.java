package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.q;
import java.io.IOException;
import java.io.InputStream;

public class E implements C.j<InputStream, Bitmap> {

    public final q f59344a;

    public final F.b f59345b;

    public static class a implements q.b {

        public final RecyclableBufferedInputStream f59346a;

        public final Y.d f59347b;

        public a(RecyclableBufferedInputStream recyclableBufferedInputStream, Y.d dVar) {
            this.f59346a = recyclableBufferedInputStream;
            this.f59347b = dVar;
        }

        @Override
        public void a() {
            this.f59346a.c();
        }

        @Override
        public void b(F.e eVar, Bitmap bitmap) throws IOException {
            IOException d10 = this.f59347b.d();
            if (d10 != null) {
                if (bitmap == null) {
                    throw d10;
                }
                eVar.d(bitmap);
                throw d10;
            }
        }
    }

    public E(q qVar, F.b bVar) {
        this.f59344a = qVar;
        this.f59345b = bVar;
    }

    @Override
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull InputStream inputStream, int i10, int i11, @NonNull C.h hVar) throws IOException {
        boolean z10;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z10 = false;
        } else {
            z10 = true;
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.f59345b);
        }
        Y.d e10 = Y.d.e(recyclableBufferedInputStream);
        try {
            return this.f59344a.g(new Y.i(e10), i10, i11, hVar, new a(recyclableBufferedInputStream, e10));
        } finally {
            e10.release();
            if (z10) {
                recyclableBufferedInputStream.release();
            }
        }
    }

    @Override
    public boolean b(@NonNull InputStream inputStream, @NonNull C.h hVar) {
        return this.f59344a.p(inputStream);
    }
}
