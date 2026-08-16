package h1;

import java.io.IOException;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;

public final class M implements Iterable {

    public final CharSequence f90182b;

    public final C13408b f90183c;

    public M(C13408b c13408b, CharSequence charSequence) {
        this.f90182b = charSequence;
        this.f90183c = c13408b;
    }

    @Override
    public final Iterator iterator() {
        Iterator h10;
        h10 = this.f90183c.h(this.f90182b);
        return h10;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        Iterator it = iterator();
        try {
            if (it.hasNext()) {
                sb2.append(H.a(it.next(), ", "));
                while (it.hasNext()) {
                    sb2.append((CharSequence) ", ");
                    sb2.append(H.a(it.next(), ", "));
                }
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
