package D0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

@C0.a
public abstract class AbstractC2440e implements com.google.android.gms.common.api.u, com.google.android.gms.common.api.r {

    @NonNull
    @C0.a
    public final Status f4635b;

    @NonNull
    @C0.a
    public final DataHolder f4636c;

    @C0.a
    public AbstractC2440e(@NonNull DataHolder dataHolder, @NonNull Status status) {
        this.f4635b = status;
        this.f4636c = dataHolder;
    }

    @Override
    @NonNull
    @C0.a
    public Status getStatus() {
        return this.f4635b;
    }

    @Override
    @C0.a
    public void release() {
        DataHolder dataHolder = this.f4636c;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @C0.a
    public AbstractC2440e(@NonNull DataHolder dataHolder) {
        this(dataHolder, new Status(dataHolder.u0()));
    }
}
