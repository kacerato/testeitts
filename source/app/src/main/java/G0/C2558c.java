package G0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;

@C0.a
public class C2558c {
    @NonNull
    @C0.a
    public static ApiException a(@NonNull Status status) {
        return status.u0() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
