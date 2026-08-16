package h1;

import java.util.Objects;
import javax.annotation.CheckForNull;
import org.jspecify.annotations.NullMarked;

@NullMarked
public final class H {
    public static final CharSequence a(@CheckForNull Object obj, String str) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
