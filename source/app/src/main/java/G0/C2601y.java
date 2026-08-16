package G0;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;

@C0.a
public final class C2601y {

    @C0.a
    public static final class a {

        public final List f7497a;

        public final Object f7498b;

        public a(Object obj, A0 a02) {
            A.r(obj);
            this.f7498b = obj;
            this.f7497a = new ArrayList();
        }

        @NonNull
        @C0.a
        public a a(@NonNull String str, @Nullable Object obj) {
            A.r(str);
            this.f7497a.add(str + "=" + String.valueOf(obj));
            return this;
        }

        @NonNull
        @C0.a
        public String toString() {
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(this.f7498b.getClass().getSimpleName());
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            int size = this.f7497a.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append((String) this.f7497a.get(i10));
                if (i10 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(JavaElement.JEM_ANNOTATION);
            return sb2.toString();
        }
    }

    public C2601y() {
        throw new AssertionError((Object) "Uninstantiable");
    }

    @C0.a
    public static boolean a(@NonNull Bundle bundle, @NonNull Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        Set<String> keySet = bundle.keySet();
        if (!keySet.containsAll(bundle2.keySet())) {
            return false;
        }
        for (String str : keySet) {
            if (!b(bundle.get(str), bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    @C0.a
    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    @C0.a
    public static int c(@NonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @NonNull
    @C0.a
    public static a d(@NonNull Object obj) {
        return new a(obj, null);
    }
}
