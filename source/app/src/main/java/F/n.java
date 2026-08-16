package F;

import java.util.Map;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavaElement;

public class n<K, V> extends TreeMap<K, V> {
    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("( ");
        for (Map.Entry<K, V> entry : entrySet()) {
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            sb2.append((Object) entry.getKey());
            sb2.append(':');
            sb2.append((Object) entry.getValue());
            sb2.append("}, ");
        }
        if (!isEmpty()) {
            sb2.replace(sb2.length() - 2, sb2.length(), "");
        }
        sb2.append(" )");
        return sb2.toString();
    }
}
