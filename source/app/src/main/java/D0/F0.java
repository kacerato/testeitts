package D0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import v1.AbstractC15790k;
import v1.InterfaceC15782c;

public final class F0 implements InterfaceC15782c {
    @Override
    public final Object a(@NonNull AbstractC15790k abstractC15790k) throws Exception {
        if (((Boolean) abstractC15790k.r()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
