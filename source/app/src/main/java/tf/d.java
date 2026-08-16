package Tf;

import java.io.Serializable;
import java.util.Random;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class d extends Tf.a implements Serializable {

    @NotNull
    public static final a f24953e = new a(null);

    public static final long f24954f = 0;

    @NotNull
    public final Random f24955d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public d(@NotNull Random impl) {
        M.p(impl, "impl");
        this.f24955d = impl;
    }

    @Override
    @NotNull
    public Random r() {
        return this.f24955d;
    }
}
