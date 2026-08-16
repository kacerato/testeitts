package O;

import C.h;
import C.j;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import java.io.File;

public class a implements j<File, File> {
    @Override
    public t<File> a(@NonNull File file, int i10, int i11, @NonNull h hVar) {
        return new b(file);
    }

    @Override
    public boolean b(@NonNull File file, @NonNull h hVar) {
        return true;
    }
}
