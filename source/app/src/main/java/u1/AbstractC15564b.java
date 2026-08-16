package u1;

import G0.F;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;

@F
@C0.a
public abstract class AbstractC15564b extends WakefulBroadcastReceiver {
    @C0.a
    public static boolean b(@NonNull Context context, @Nullable Intent intent) {
        if (intent == null) {
            return false;
        }
        return WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
