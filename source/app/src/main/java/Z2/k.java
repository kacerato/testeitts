package Z2;

import androidx.annotation.NonNull;

public interface k {

    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);

        private final int code;

        a(int i10) {
            this.code = i10;
        }

        public int b() {
            return this.code;
        }
    }

    @NonNull
    a a(@NonNull String str);
}
