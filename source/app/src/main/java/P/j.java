package P;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.t;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public class j implements C.j<InputStream, c> {

    public static final String f20615d = "StreamGifDecoder";

    public final List<ImageHeaderParser> f20616a;

    public final C.j<ByteBuffer, c> f20617b;

    public final F.b f20618c;

    public j(List<ImageHeaderParser> list, C.j<ByteBuffer, c> jVar, F.b bVar) {
        this.f20616a = list;
        this.f20617b = jVar;
        this.f20618c = bVar;
    }

    public static byte[] e(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e10) {
            if (!Log.isLoggable(f20615d, 5)) {
                return null;
            }
            Log.w(f20615d, "Error reading data from stream", e10);
            return null;
        }
    }

    @Override
    public t<c> a(@NonNull InputStream inputStream, int i10, int i11, @NonNull C.h hVar) throws IOException {
        byte[] e10 = e(inputStream);
        if (e10 == null) {
            return null;
        }
        return this.f20617b.a(ByteBuffer.wrap(e10), i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull InputStream inputStream, @NonNull C.h hVar) throws IOException {
        return !((Boolean) hVar.a(i.f20614b)).booleanValue() && com.bumptech.glide.load.a.e(this.f20616a, inputStream, this.f20618c) == ImageHeaderParser.ImageType.GIF;
    }
}
