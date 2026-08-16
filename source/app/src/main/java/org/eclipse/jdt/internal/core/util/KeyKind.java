package org.eclipse.jdt.internal.core.util;

public class KeyKind extends BindingKeyParser {
    public static final int F_CAPTURE = 2048;
    public static final int F_CONSTRUCTOR = 4096;
    public static final int F_FIELD = 4;
    public static final int F_LOCAL = 64;
    public static final int F_LOCAL_VAR = 16;
    public static final int F_MEMBER = 32;
    public static final int F_METHOD = 2;
    public static final int F_PARAMETERIZED_METHOD = 1024;
    public static final int F_PARAMETERIZED_TYPE = 128;
    public static final int F_RAW_TYPE = 256;
    public static final int F_TYPE = 1;
    public static final int F_TYPE_PARAMETER = 8;
    public static final int F_WILDCARD_TYPE = 512;
    public int flags;
    private KeyKind innerKeyKind;

    public KeyKind(BindingKeyParser bindingKeyParser) {
        super(bindingKeyParser);
        this.flags = 0;
    }

    @Override
    public void consumeBaseType(char[] cArr) {
        this.flags |= 1;
    }

    @Override
    public void consumeCapture(int i10) {
        this.flags |= 2048;
    }

    @Override
    public void consumeField(char[] cArr) {
        this.flags |= 4;
    }

    @Override
    public void consumeLocalType(char[] cArr) {
        this.flags |= 64;
    }

    @Override
    public void consumeLocalVar(char[] cArr, int i10, int i11) {
        this.flags |= 16;
    }

    @Override
    public void consumeMemberType(char[] cArr) {
        this.flags |= 32;
    }

    @Override
    public void consumeMethod(char[] cArr, char[] cArr2) {
        int i10 = this.flags;
        this.flags = i10 | 2;
        if (cArr.length == 0) {
            this.flags = i10 | 4098;
        }
    }

    @Override
    public void consumeParameterizedGenericMethod() {
        this.flags |= 1024;
    }

    @Override
    public void consumeParameterizedType(char[] cArr, boolean z10) {
        this.flags |= z10 ? 256 : 128;
    }

    @Override
    public void consumeParser(BindingKeyParser bindingKeyParser) {
        this.innerKeyKind = (KeyKind) bindingKeyParser;
    }

    @Override
    public void consumeRawType() {
        this.flags |= 256;
    }

    @Override
    public void consumeTopLevelType() {
        this.flags |= 1;
    }

    @Override
    public void consumeTypeParameter(char[] cArr) {
        this.flags |= 8;
    }

    @Override
    public void consumeTypeWithCapture() {
        this.flags = this.innerKeyKind.flags;
    }

    @Override
    public void consumeWildCard(int i10) {
        this.flags |= 512;
    }

    @Override
    public BindingKeyParser newParser() {
        return new KeyKind(this);
    }

    public KeyKind(String str) {
        super(str);
        this.flags = 0;
    }
}
