package org.objectweb.asm.signature;

import org.objectweb.asm.Opcodes;

public class SignatureWriter extends SignatureVisitor {
    private int argumentStack;
    private boolean hasFormals;
    private boolean hasParameters;
    private final StringBuilder stringBuilder;

    public SignatureWriter() {
        this(new StringBuilder());
    }

    private void endArguments() {
        if ((this.argumentStack & 1) == 1) {
            this.stringBuilder.append('>');
        }
        this.argumentStack >>>= 1;
    }

    private void endFormals() {
        if (this.hasFormals) {
            this.hasFormals = false;
            this.stringBuilder.append('>');
        }
    }

    public String toString() {
        return this.stringBuilder.toString();
    }

    @Override
    public SignatureVisitor visitArrayType() {
        this.stringBuilder.append('[');
        return this;
    }

    @Override
    public void visitBaseType(char c10) {
        this.stringBuilder.append(c10);
    }

    @Override
    public SignatureVisitor visitClassBound() {
        return this;
    }

    @Override
    public void visitClassType(String str) {
        this.stringBuilder.append('L');
        this.stringBuilder.append(str);
        this.argumentStack <<= 1;
    }

    @Override
    public void visitEnd() {
        endArguments();
        this.stringBuilder.append(';');
    }

    @Override
    public SignatureVisitor visitExceptionType() {
        this.stringBuilder.append('^');
        return this;
    }

    @Override
    public void visitFormalTypeParameter(String str) {
        if (!this.hasFormals) {
            this.hasFormals = true;
            this.stringBuilder.append('<');
        }
        this.stringBuilder.append(str);
        this.stringBuilder.append(':');
    }

    @Override
    public void visitInnerClassType(String str) {
        endArguments();
        this.stringBuilder.append('.');
        this.stringBuilder.append(str);
        this.argumentStack <<= 1;
    }

    @Override
    public SignatureVisitor visitInterface() {
        return this;
    }

    @Override
    public SignatureVisitor visitInterfaceBound() {
        this.stringBuilder.append(':');
        return this;
    }

    @Override
    public SignatureVisitor visitParameterType() {
        endFormals();
        if (!this.hasParameters) {
            this.hasParameters = true;
            this.stringBuilder.append('(');
        }
        return this;
    }

    @Override
    public SignatureVisitor visitReturnType() {
        endFormals();
        if (!this.hasParameters) {
            this.stringBuilder.append('(');
        }
        this.stringBuilder.append(')');
        return this;
    }

    @Override
    public SignatureVisitor visitSuperclass() {
        endFormals();
        return this;
    }

    @Override
    public void visitTypeArgument() {
        int i10 = this.argumentStack;
        if ((i10 & 1) == 0) {
            this.argumentStack = i10 | 1;
            this.stringBuilder.append('<');
        }
        this.stringBuilder.append('*');
    }

    @Override
    public void visitTypeVariable(String str) {
        this.stringBuilder.append('T');
        this.stringBuilder.append(str);
        this.stringBuilder.append(';');
    }

    private SignatureWriter(StringBuilder sb2) {
        super(Opcodes.ASM9);
        this.argumentStack = 1;
        this.stringBuilder = sb2;
    }

    @Override
    public SignatureVisitor visitTypeArgument(char c10) {
        int i10 = this.argumentStack;
        if ((i10 & 1) == 0) {
            this.argumentStack = i10 | 1;
            this.stringBuilder.append('<');
        }
        if (c10 != '=') {
            this.stringBuilder.append(c10);
        }
        return (this.argumentStack & Integer.MIN_VALUE) == 0 ? this : new SignatureWriter(this.stringBuilder);
    }
}
