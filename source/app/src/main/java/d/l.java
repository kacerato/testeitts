package D;

import D.d;
import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class l<T> implements d<T> {

    public static final String f4524e = "LocalUriFetcher";

    public final Uri f4525b;

    public final ContentResolver f4526c;

    public T f4527d;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f4526c = contentResolver;
        this.f4525b = uri;
    }

    @Override
    @NonNull
    public C.a b() {
        return C.a.LOCAL;
    }

    public abstract void c(T t10) throws IOException;

    @Override
    public void cancel() {
    }

    @Override
    public void cleanup() {
        T t10 = this.f4527d;
        if (t10 != null) {
            try {
                c(t10);
            } catch (IOException unused) {
            }
        }
    }

    public abstract T d(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override
    public final void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super T> aVar) {
        try {
            T d10 = d(this.f4525b, this.f4526c);
            this.f4527d = d10;
            aVar.c(d10);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable(f4524e, 3)) {
                Log.d(f4524e, "Failed to open Uri", e10);
            }
            aVar.d(e10);
        }
    }
}
