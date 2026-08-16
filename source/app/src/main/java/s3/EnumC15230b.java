package s3;

import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import v2.InterfaceC15800a;

@v2.b
@InterfaceC15800a
public enum EnumC15230b {
    PRIVATE(':', IIndexConstants.PARAMETER_SEPARATOR),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    EnumC15230b(char c10, char c11) {
        this.innerNodeCode = c10;
        this.leafNodeCode = c11;
    }

    public static EnumC15230b b(char c10) {
        for (EnumC15230b enumC15230b : values()) {
            if (enumC15230b.c() == c10 || enumC15230b.d() == c10) {
                return enumC15230b;
            }
        }
        StringBuilder sb2 = new StringBuilder(38);
        sb2.append("No enum corresponding to given code: ");
        sb2.append(c10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public char c() {
        return this.innerNodeCode;
    }

    public char d() {
        return this.leafNodeCode;
    }
}
