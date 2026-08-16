package org.blacksquircle.ui.language.base.model;

import Cf.a;
import Cf.c;
import android.icu.text.DateFormat;
import android.security.keystore.KeyProperties;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class Suggestion {

    @NotNull
    private final String returnType;

    @NotNull
    private final String text;

    @NotNull
    private final Type type;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final a $ENTRIES;
        private static final Type[] $VALUES;

        @NotNull
        private final String value;
        public static final Type FIELD = new Type("FIELD", 0, "v");
        public static final Type METHOD = new Type("METHOD", 1, DateFormat.MINUTE);
        public static final Type WORD = new Type("WORD", 2, "w");
        public static final Type NONE = new Type(KeyProperties.DIGEST_NONE, 3, "none");

        private static final Type[] $values() {
            return new Type[]{FIELD, METHOD, WORD, NONE};
        }

        static {
            Type[] $values = $values();
            $VALUES = $values;
            $ENTRIES = c.c($values);
        }

        private Type(String str, int i10, String str2) {
            this.value = str2;
        }

        @NotNull
        public static a<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public Suggestion(@NotNull Type type, @NotNull String text, @NotNull String returnType) {
        M.p(type, "type");
        M.p(text, "text");
        M.p(returnType, "returnType");
        this.type = type;
        this.text = text;
        this.returnType = returnType;
    }

    public static Suggestion copy$default(Suggestion suggestion, Type type, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            type = suggestion.type;
        }
        if ((i10 & 2) != 0) {
            str = suggestion.text;
        }
        if ((i10 & 4) != 0) {
            str2 = suggestion.returnType;
        }
        return suggestion.copy(type, str, str2);
    }

    @NotNull
    public final Type component1() {
        return this.type;
    }

    @NotNull
    public final String component2() {
        return this.text;
    }

    @NotNull
    public final String component3() {
        return this.returnType;
    }

    @NotNull
    public final Suggestion copy(@NotNull Type type, @NotNull String text, @NotNull String returnType) {
        M.p(type, "type");
        M.p(text, "text");
        M.p(returnType, "returnType");
        return new Suggestion(type, text, returnType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Suggestion)) {
            return false;
        }
        Suggestion suggestion = (Suggestion) obj;
        return this.type == suggestion.type && M.g(this.text, suggestion.text) && M.g(this.returnType, suggestion.returnType);
    }

    @NotNull
    public final String getReturnType() {
        return this.returnType;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.text.hashCode()) * 31) + this.returnType.hashCode();
    }

    @NotNull
    public String toString() {
        return this.text;
    }
}
