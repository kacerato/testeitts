package G0;

import D0.InterfaceC2448i;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public abstract class X implements DialogInterface.OnClickListener {
    public static X b(Activity activity, @Nullable Intent intent, int i10) {
        return new U(intent, activity, i10);
    }

    public static X c(@NonNull Fragment fragment, @Nullable Intent intent, int i10) {
        return new V(intent, fragment, i10);
    }

    public static X d(@NonNull InterfaceC2448i interfaceC2448i, @Nullable Intent intent, int i10) {
        return new W(intent, interfaceC2448i, 2);
    }

    public abstract void a();

    @Override
    public final void onClick(DialogInterface dialogInterface, int i10) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e10) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e10);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
