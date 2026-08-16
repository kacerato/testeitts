package B;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

public interface a {

    public static final int f1043a = 0;

    public static final int f1044b = 1;

    public static final int f1045c = 2;

    public static final int f1046d = 3;

    public static final int f1047e = 0;

    public interface InterfaceC0021a {
        @NonNull
        byte[] a(int i10);

        @NonNull
        Bitmap b(int i10, int i11, @NonNull Bitmap.Config config);

        void c(@NonNull Bitmap bitmap);

        @NonNull
        int[] d(int i10);

        void e(@NonNull byte[] bArr);

        void f(@NonNull int[] iArr);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    void clear();

    void g();

    @NonNull
    ByteBuffer getData();

    int getHeight();

    int getStatus();

    int getWidth();

    void h(@NonNull Bitmap.Config config);

    @Deprecated
    int i();

    void j(@NonNull c cVar, @NonNull byte[] bArr);

    void k();

    int l();

    int m(@Nullable InputStream inputStream, int i10);

    int n();

    @Nullable
    Bitmap o();

    int p();

    int q(int i10);

    void r(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i10);

    int read(@Nullable byte[] bArr);

    int s();

    void t(@NonNull c cVar, @NonNull ByteBuffer byteBuffer);

    int u();

    int v();
}
