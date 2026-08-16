package K2;

import D0.InterfaceC2462p;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.FirebaseException;

@C0.a
public class n implements InterfaceC2462p {
    @Override
    @NonNull
    public final Exception a(@NonNull Status status) {
        return status.b0() == 8 ? new FirebaseException(status.A0()) : new FirebaseApiNotAvailableException(status.A0());
    }
}
