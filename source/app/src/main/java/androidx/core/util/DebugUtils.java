package androidx.core.util;

import org.eclipse.jdt.internal.core.JavaElement;

public class DebugUtils {
    private DebugUtils() {
    }

    public static void buildShortClassTag(Object obj, StringBuilder sb2) {
        int lastIndexOf;
        if (obj == null) {
            sb2.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb2.append(simpleName);
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        sb2.append(Integer.toHexString(System.identityHashCode(obj)));
    }
}
