package J;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class c implements C.d<ByteBuffer> {

    public static final String f10079a = "ByteBufferEncoder";

    @Override
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull C.h hVar) {
        try {
            Y.a.e(byteBuffer, file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable(f10079a, 3)) {
                Log.d(f10079a, "Failed to write data", e10);
            }
            return false;
        }
    }
}
