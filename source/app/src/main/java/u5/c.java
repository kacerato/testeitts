package u5;

import androidx.documentfile.provider.DocumentFile;
import java.util.function.Function;

public final class c implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((DocumentFile) obj).getName();
    }
}
