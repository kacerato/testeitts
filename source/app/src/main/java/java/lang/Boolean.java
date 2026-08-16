package java.lang;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DynamicConstantDesc;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Boolean.class
 */
@ValueBased
public final class Boolean implements Serializable, Comparable<Boolean>, Constable {
    public static final Boolean TRUE = new Boolean(true);
    public static final Boolean FALSE = new Boolean(false);
    public static final Class<Boolean> TYPE = Class.getPrimitiveClass(TypedValues.Custom.S_BOOLEAN);
    private final boolean value;
    private static final long serialVersionUID = -3665804199014368530L;

    @Deprecated(since = "9")
    public Boolean(boolean value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Boolean(String s10) {
        this(parseBoolean(s10));
    }

    public static boolean parseBoolean(String s10) {
        return "true".equalsIgnoreCase(s10);
    }

    @IntrinsicCandidate
    public boolean booleanValue() {
        return this.value;
    }

    @IntrinsicCandidate
    public static Boolean valueOf(boolean b10) {
        return b10 ? TRUE : FALSE;
    }

    public static Boolean valueOf(String s10) {
        return parseBoolean(s10) ? TRUE : FALSE;
    }

    public static String toString(boolean b10) {
        return String.valueOf(b10);
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(boolean value) {
        return value ? 1231 : 1237;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Boolean)) {
            return false;
        }
        Boolean b10 = (Boolean) obj;
        return this.value == b10.booleanValue();
    }

    public static boolean getBoolean(String name) {
        return (name == null || name.isEmpty() || !parseBoolean(System.getProperty(name))) ? false : true;
    }

    @Override
    public int compareTo(Boolean b10) {
        return compare(this.value, b10.value);
    }

    public static int compare(boolean x10, boolean y10) {
        if (x10 == y10) {
            return 0;
        }
        return x10 ? 1 : -1;
    }

    public static boolean logicalAnd(boolean a10, boolean b10) {
        return a10 && b10;
    }

    public static boolean logicalOr(boolean a10, boolean b10) {
        return a10 || b10;
    }

    public static boolean logicalXor(boolean a10, boolean b10) {
        return a10 ^ b10;
    }

    @Override
    public Optional<DynamicConstantDesc<Boolean>> describeConstable() {
        return Optional.of(this.value ? ConstantDescs.TRUE : ConstantDescs.FALSE);
    }
}
