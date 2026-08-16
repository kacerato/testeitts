package L2;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.I1;

public class b extends Activity {
    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        I1.v(this, null).z(getIntent());
        finish();
    }
}
