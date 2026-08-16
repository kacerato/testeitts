package y0;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.p;

@Deprecated
public interface InterfaceC16130a {

    @NonNull
    public static final String f129885a = "signInAccount";

    @NonNull
    o<d> a(@NonNull AbstractC11908l abstractC11908l);

    @NonNull
    Intent b(@NonNull AbstractC11908l abstractC11908l);

    @Nullable
    d c(@NonNull Intent intent);

    @NonNull
    p<Status> d(@NonNull AbstractC11908l abstractC11908l);

    @NonNull
    p<Status> e(@NonNull AbstractC11908l abstractC11908l);
}
