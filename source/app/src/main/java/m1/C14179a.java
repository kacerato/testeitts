package m1;

import G0.A;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.internal.C12370p3;

@Deprecated
public class C14179a extends ContentProvider {
    @Override
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if ("com.google.android.gms.measurement.google_measurement_service".equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String str, @NonNull String[] strArr) {
        return 0;
    }

    @Override
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override
    @Nullable
    public Uri insert(@NonNull Uri uri, @NonNull ContentValues contentValues) {
        return null;
    }

    @Override
    public boolean onCreate() {
        Context context = getContext();
        A.r(context);
        C12370p3.O(context, null, null);
        return false;
    }

    @Override
    @Nullable
    public Cursor query(@NonNull Uri uri, @NonNull String[] strArr, @Nullable String str, @NonNull String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @NonNull String[] strArr) {
        return 0;
    }
}
