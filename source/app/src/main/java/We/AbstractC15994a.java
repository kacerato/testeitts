package we;

import androidx.annotation.NonNull;

public abstract class AbstractC15994a {

    public static class b extends AbstractC15994a {
        public b() {
        }

        @Override
        @NonNull
        public String b(@NonNull String str) {
            return str;
        }
    }

    @NonNull
    public static AbstractC15994a a() {
        return new b();
    }

    @NonNull
    public abstract String b(@NonNull String str);
}
