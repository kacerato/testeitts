package L;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.ImageDecoder$OnPartialImageListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.bitmap.w;
import java.io.IOException;

@RequiresApi(api = 28)
public abstract class i<T> implements C.j<ImageDecoder.Source, T> {

    public static final String f11485b = "ImageDecoder";

    public final w f11486a = w.a();

    public class a implements ImageDecoder$OnHeaderDecodedListener {

        public final int f11487a;

        public final int f11488b;

        public final boolean f11489c;

        public final C.b f11490d;

        public final p f11491e;

        public final C.i f11492f;

        public class C0376a implements ImageDecoder$OnPartialImageListener {
            public C0376a() {
            }

            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public a(int i10, int i11, boolean z10, C.b bVar, p pVar, C.i iVar) {
            this.f11487a = i10;
            this.f11488b = i11;
            this.f11489c = z10;
            this.f11490d = bVar;
            this.f11491e = pVar;
            this.f11492f = iVar;
        }

        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            Size size;
            ColorSpace.Named named;
            ColorSpace colorSpace;
            ColorSpace colorSpace2;
            if (i.this.f11486a.c(this.f11487a, this.f11488b, this.f11489c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f11490d == C.b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0376a());
            size = imageInfo.getSize();
            int i10 = this.f11487a;
            if (i10 == Integer.MIN_VALUE) {
                i10 = size.getWidth();
            }
            int i11 = this.f11488b;
            if (i11 == Integer.MIN_VALUE) {
                i11 = size.getHeight();
            }
            float b10 = this.f11491e.b(size.getWidth(), size.getHeight(), i10, i11);
            int round = Math.round(size.getWidth() * b10);
            int round2 = Math.round(size.getHeight() * b10);
            if (Log.isLoggable(i.f11485b, 2)) {
                Log.v(i.f11485b, "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + b10);
            }
            imageDecoder.setTargetSize(round, round2);
            if (Build.VERSION.SDK_INT < 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                return;
            }
            if (this.f11492f == C.i.DISPLAY_P3) {
                colorSpace = imageInfo.getColorSpace();
                if (colorSpace != null) {
                    colorSpace2 = imageInfo.getColorSpace();
                    if (colorSpace2.isWideGamut()) {
                        named = ColorSpace.Named.DISPLAY_P3;
                        imageDecoder.setTargetColorSpace(ColorSpace.get(named));
                    }
                }
            }
            named = ColorSpace.Named.SRGB;
            imageDecoder.setTargetColorSpace(ColorSpace.get(named));
        }
    }

    @Override
    @Nullable
    public t a(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull C.h hVar) throws IOException {
        return c(L.a.a(source), i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull ImageDecoder.Source source, @NonNull C.h hVar) throws IOException {
        return e(L.a.a(source), hVar);
    }

    @Nullable
    public final t<T> c(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull C.h hVar) throws IOException {
        C.b bVar = (C.b) hVar.a(q.f59414g);
        p pVar = (p) hVar.a(p.f59411h);
        C.g<Boolean> gVar = q.f59418k;
        return d(source, i10, i11, new a(i10, i11, hVar.a(gVar) != null && ((Boolean) hVar.a(gVar)).booleanValue(), bVar, pVar, (C.i) hVar.a(q.f59415h)));
    }

    public abstract t<T> d(ImageDecoder.Source source, int i10, int i11, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) throws IOException;

    public final boolean e(@NonNull ImageDecoder.Source source, @NonNull C.h hVar) {
        return true;
    }
}
