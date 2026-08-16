package androidx.core.content;

import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.util.Predicate;

public class UriMatcherCompat {
    private UriMatcherCompat() {
    }

    public static Predicate<Uri> asPredicate(final UriMatcher uriMatcher) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$asPredicate$0;
                lambda$asPredicate$0 = UriMatcherCompat.lambda$asPredicate$0(UriMatcher.this, (Uri) obj);
                return lambda$asPredicate$0;
            }
        };
    }

    public static boolean lambda$asPredicate$0(UriMatcher uriMatcher, Uri uri) {
        return uriMatcher.match(uri) != -1;
    }
}
