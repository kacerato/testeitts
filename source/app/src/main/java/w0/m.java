package W0;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

public final class m implements View.OnClickListener {

    public final Context f27219b;

    public final Intent f27220c;

    public m(Context context, Intent intent) {
        this.f27219b = context;
        this.f27220c = intent;
    }

    @Override
    public final void onClick(View view) {
        try {
            this.f27219b.startActivity(this.f27220c);
        } catch (ActivityNotFoundException e10) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e10);
        }
    }
}
