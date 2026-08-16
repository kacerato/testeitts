package Od;

import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface k<T> {
    void a(int i10);

    void b(int i10);

    void c(@Nullable g<T> gVar);

    @Nullable
    g<T> d();

    @NotNull
    PowerSpinnerView e();

    void f(@NotNull List<? extends T> list);

    int getIndex();

    int getItemCount();
}
