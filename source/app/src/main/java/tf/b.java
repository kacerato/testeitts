package Tf;

import java.util.Random;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class b extends Tf.a {

    @NotNull
    public final a f24948d = new a();

    public static final class a extends ThreadLocal<Random> {
        @Override
        public Random initialValue() {
            return new Random();
        }
    }

    @Override
    @NotNull
    public Random r() {
        Random random = this.f24948d.get();
        M.o(random, "get(...)");
        return random;
    }
}
