package com.google.android.gms.common.api;

import B0.C2318c;
import B0.C2323h;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.Telephony;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    @VisibleForTesting
    public int f61033b = 0;

    @NonNull
    public static Intent a(@NonNull Context context, @NonNull PendingIntent pendingIntent, int i10, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i10);
        intent.putExtra("notify_manager", z10);
        return intent;
    }

    public final void b() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get(Telephony.TextBasedSmsColumns.ERROR_CODE);
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
            return;
        }
        if (pendingIntent == null) {
            C2323h.x().B(this, ((Integer) G0.A.r(num)).intValue(), 2, this);
            this.f61033b = 1;
            return;
        }
        try {
            startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
            this.f61033b = 1;
        } catch (ActivityNotFoundException e10) {
            if (extras.getBoolean("notify_manager", true)) {
                com.google.android.gms.common.api.internal.d.v(this).I(new C2318c(22, null), getIntent().getIntExtra("failing_client_id", -1));
            } else {
                String str = "Activity not found while launching " + pendingIntent.toString() + ".";
                if (Build.FINGERPRINT.contains("generic")) {
                    str = str.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                }
                Log.e("GoogleApiActivity", str, e10);
            }
            this.f61033b = 1;
            finish();
        } catch (IntentSender.SendIntentException e11) {
            Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e11);
            finish();
        }
    }

    @Override
    public final void onActivityResult(int i10, int i11, @NonNull Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f61033b = 0;
            setResult(i11, intent);
            if (booleanExtra) {
                com.google.android.gms.common.api.internal.d v10 = com.google.android.gms.common.api.internal.d.v(this);
                if (i11 == -1) {
                    v10.J();
                } else if (i11 == 0) {
                    v10.I(new C2318c(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i10 == 2) {
            this.f61033b = 0;
            setResult(i11, intent);
        }
        finish();
    }

    @Override
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        this.f61033b = 0;
        setResult(0);
        finish();
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f61033b = bundle.getInt(MediaStore.Video.VideoColumns.RESOLUTION);
        }
        if (this.f61033b != 1) {
            b();
        }
    }

    @Override
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putInt(MediaStore.Video.VideoColumns.RESOLUTION, this.f61033b);
        super.onSaveInstanceState(bundle);
    }
}
