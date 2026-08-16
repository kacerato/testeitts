package P;

import C.k;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import java.io.File;
import java.io.IOException;

public class d implements k<c> {

    public static final String f20584a = "GifEncoder";

    @Override
    @NonNull
    public C.c a(@NonNull C.h hVar) {
        return C.c.SOURCE;
    }

    @Override
    public boolean b(@NonNull t<c> tVar, @NonNull File file, @NonNull C.h hVar) {
        try {
            Y.a.e(tVar.get().c(), file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable(f20584a, 5)) {
                Log.w(f20584a, "Failed to encode GIF drawable data", e10);
            }
            return false;
        }
    }
}
