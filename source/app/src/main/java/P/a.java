package P;

import B.a;
import L.k;
import Y.m;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

public class a implements C.j<ByteBuffer, c> {

    public static final String f20558f = "BufferGifDecoder";

    public static final C0497a f20559g = new C0497a();

    public static final b f20560h = new b();

    public final Context f20561a;

    public final List<ImageHeaderParser> f20562b;

    public final b f20563c;

    public final C0497a f20564d;

    public final P.b f20565e;

    @VisibleForTesting
    public static class C0497a {
        public B.a a(a.InterfaceC0021a interfaceC0021a, B.c cVar, ByteBuffer byteBuffer, int i10) {
            return new B.f(interfaceC0021a, cVar, byteBuffer, i10);
        }
    }

    @VisibleForTesting
    public static class b {

        public final Queue<B.d> f20566a = m.f(0);

        public synchronized B.d a(ByteBuffer byteBuffer) {
            B.d poll;
            try {
                poll = this.f20566a.poll();
                if (poll == null) {
                    poll = new B.d();
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return poll.q(byteBuffer);
        }

        public synchronized void b(B.d dVar) {
            dVar.a();
            this.f20566a.offer(dVar);
        }
    }

    public a(Context context) {
        this(context, com.bumptech.glide.b.d(context).m().g(), com.bumptech.glide.b.d(context).g(), com.bumptech.glide.b.d(context).f());
    }

    public static int e(B.c cVar, int i10, int i11) {
        int min = Math.min(cVar.a() / i11, cVar.d() / i10);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable(f20558f, 2) && max > 1) {
            Log.v(f20558f, "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i10 + "x" + i11 + "], actual dimens: [" + cVar.d() + "x" + cVar.a() + "]");
        }
        return max;
    }

    @Nullable
    public final e c(ByteBuffer byteBuffer, int i10, int i11, B.d dVar, C.h hVar) {
        long b10 = Y.g.b();
        try {
            B.c d10 = dVar.d();
            if (d10.b() > 0 && d10.c() == 0) {
                Bitmap.Config config = hVar.a(i.f20613a) == C.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                B.a a10 = this.f20564d.a(this.f20565e, d10, byteBuffer, e(d10, i10, i11));
                a10.h(config);
                a10.g();
                Bitmap o10 = a10.o();
                if (o10 == null) {
                    if (Log.isLoggable(f20558f, 2)) {
                        Log.v(f20558f, "Decoded GIF from stream in " + Y.g.a(b10));
                    }
                    return null;
                }
                e eVar = new e(new c(this.f20561a, a10, k.a(), i10, i11, o10));
                if (Log.isLoggable(f20558f, 2)) {
                    Log.v(f20558f, "Decoded GIF from stream in " + Y.g.a(b10));
                }
                return eVar;
            }
            return null;
        } finally {
            if (Log.isLoggable(f20558f, 2)) {
                Log.v(f20558f, "Decoded GIF from stream in " + Y.g.a(b10));
            }
        }
    }

    @Override
    public e a(@NonNull ByteBuffer byteBuffer, int i10, int i11, @NonNull C.h hVar) {
        B.d a10 = this.f20563c.a(byteBuffer);
        try {
            return c(byteBuffer, i10, i11, a10, hVar);
        } finally {
            this.f20563c.b(a10);
        }
    }

    @Override
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull C.h hVar) throws IOException {
        return !((Boolean) hVar.a(i.f20614b)).booleanValue() && com.bumptech.glide.load.a.f(this.f20562b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public a(Context context, List<ImageHeaderParser> list, F.e eVar, F.b bVar) {
        this(context, list, eVar, bVar, f20560h, f20559g);
    }

    @VisibleForTesting
    public a(Context context, List<ImageHeaderParser> list, F.e eVar, F.b bVar, b bVar2, C0497a c0497a) {
        this.f20561a = context.getApplicationContext();
        this.f20562b = list;
        this.f20564d = c0497a;
        this.f20565e = new P.b(eVar, bVar);
        this.f20563c = bVar2;
    }
}
