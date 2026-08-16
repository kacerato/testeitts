package w0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.InterfaceC11909m;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import v1.AbstractC15790k;

public interface InterfaceC15871b extends InterfaceC11909m<C11894a.d.C0950d> {

    @Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface a {

        public static final int f121753i1 = 0;

        public static final int f121754j1 = 1;

        public static final int f121755k1 = 2;
    }

    @NonNull
    AbstractC15790k<Void> b();

    @NonNull
    AbstractC15790k<Boolean> f(@NonNull String str);

    @NonNull
    AbstractC15790k<Integer> o();
}
