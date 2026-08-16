package fg;

import android.os.Looper;
import eg.V0;
import java.util.List;
import mg.C;
import org.jetbrains.annotations.NotNull;

public final class C13217a implements C {
    @Override
    public int a() {
        return 1073741823;
    }

    @Override
    @NotNull
    public String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override
    @NotNull
    public V0 c(@NotNull List<? extends C> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new C13220d(C13223g.e(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
