package C;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;

public interface e {

    public static final String f1955a = "UTF-8";

    public static final Charset f1956b = Charset.forName("UTF-8");

    boolean equals(Object obj);

    int hashCode();

    void updateDiskCacheKey(@NonNull MessageDigest messageDigest);
}
