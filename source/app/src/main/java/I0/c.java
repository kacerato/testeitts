package I0;

import android.os.Parcelable;
import androidx.annotation.NonNull;

public interface c extends Parcelable {

    @NonNull
    public static final String NULL = "SAFE_PARCELABLE_NULL_STRING";

    public @interface a {
        @NonNull
        String creator();

        boolean creatorIsFinal() default true;

        boolean doNotParcelTypeDefaultValues() default false;

        boolean validate() default false;
    }

    public @interface b {
    }

    public @interface InterfaceC0186c {
        @NonNull
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        @NonNull
        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        @NonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    public @interface d {
        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    public @interface e {
        int id();
    }

    public @interface f {
        @NonNull
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        @NonNull
        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        int id();
    }

    public @interface g {
        @NonNull
        int[] value();
    }

    public @interface h {
        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        @NonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}
