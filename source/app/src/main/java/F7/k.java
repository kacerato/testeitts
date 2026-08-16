package F7;

import F7.i;
import android.view.View;
import java.util.List;

public interface k<T extends i> {
    default void a() {
    }

    void b(T element, View v10);

    List<T> c();

    void d(T element, boolean open);

    void e(T element);

    List<T> f(T element);
}
