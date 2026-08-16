package w3;

import android.content.Context;
import android.content.res.Configuration;

public class k {
    public static Context a(Context context, float scaleFactor) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.densityDpi = (int) (r0.getDisplayMetrics().densityDpi * scaleFactor);
        return context.createConfigurationContext(configuration);
    }
}
