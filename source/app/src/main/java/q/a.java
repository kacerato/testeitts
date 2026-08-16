package Q;

import C.h;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;
import java.io.ByteArrayOutputStream;

public class a implements e<Bitmap, byte[]> {

    public final Bitmap.CompressFormat f21861a;

    public final int f21862b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override
    @Nullable
    public t<byte[]> a(@NonNull t<Bitmap> tVar, @NonNull h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        tVar.get().compress(this.f21861a, this.f21862b, byteArrayOutputStream);
        tVar.recycle();
        return new M.b(byteArrayOutputStream.toByteArray());
    }

    public a(@NonNull Bitmap.CompressFormat compressFormat, int i10) {
        this.f21861a = compressFormat;
        this.f21862b = i10;
    }
}
