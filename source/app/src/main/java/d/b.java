package D;

import D.d;
import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.IOException;

public abstract class b<T> implements d<T> {

    public static final String f4494e = "AssetPathFetcher";

    public final String f4495b;

    public final AssetManager f4496c;

    public T f4497d;

    public b(AssetManager assetManager, String str) {
        this.f4496c = assetManager;
        this.f4495b = str;
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
        T t10 = this.f4497d;
        if (t10 == null) {
            return;
        }
        try {
            c(t10);
        } catch (IOException unused) {
        }
    }

    public abstract T d(AssetManager assetManager, String str) throws IOException;

    @Override
    public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super T> aVar) {
        try {
            T d10 = d(this.f4496c, this.f4495b);
            this.f4497d = d10;
            aVar.c(d10);
        } catch (IOException e10) {
            if (Log.isLoggable(f4494e, 3)) {
                Log.d(f4494e, "Failed to load data from asset manager", e10);
            }
            aVar.d(e10);
        }
    }
}
