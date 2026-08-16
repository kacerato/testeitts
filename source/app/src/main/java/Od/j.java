package Od;

import android.content.Context;
import com.skydoves.powerspinner.PowerSpinnerView;
import kotlin.jvm.internal.M;
import nf.P0;

public final class j {
    @i
    public static final PowerSpinnerView a(Context context, Mf.l<? super PowerSpinnerView.b, P0> builder) {
        M.p(context, "context");
        M.p(builder, "builder");
        PowerSpinnerView.b bVar = new PowerSpinnerView.b(context);
        builder.invoke(bVar);
        return bVar.a();
    }
}
