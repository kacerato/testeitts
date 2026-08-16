package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.impl.Constant;

public abstract class VariableBinding extends Binding {
    protected Constant constant;

    public int f102483id;
    public int modifiers;
    public char[] name;
    public long tagBits;
    public TypeBinding type;

    public VariableBinding(char[] cArr, TypeBinding typeBinding, int i10, Constant constant) {
        this.name = cArr;
        this.type = typeBinding;
        this.modifiers = i10;
        this.constant = constant;
        if (typeBinding != null) {
            this.tagBits = (typeBinding.tagBits & 128) | this.tagBits;
        }
    }

    public Constant constant() {
        return this.constant;
    }

    @Override
    public abstract AnnotationBinding[] getAnnotations();

    public final boolean isBlankFinal() {
        return (this.modifiers & 67108864) != 0;
    }

    public final boolean isEffectivelyFinal() {
        return (this.tagBits & 2048) != 0;
    }

    public final boolean isFinal() {
        return (this.modifiers & 16) != 0;
    }

    public boolean isNonNull() {
        if ((this.tagBits & 72057594037927936L) != 0) {
            return true;
        }
        TypeBinding typeBinding = this.type;
        return (typeBinding == null || (typeBinding.tagBits & 72057594037927936L) == 0) ? false : true;
    }

    public boolean isNullable() {
        if ((this.tagBits & 36028797018963968L) != 0) {
            return true;
        }
        TypeBinding typeBinding = this.type;
        return (typeBinding == null || (typeBinding.tagBits & 36028797018963968L) == 0) ? false : true;
    }

    @Override
    public char[] readableName() {
        return this.name;
    }

    public void setConstant(Constant constant) {
        this.constant = constant;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        if ((this.modifiers & 33554432) != 0) {
            stringBuffer.append("[unresolved] ");
        }
        TypeBinding typeBinding = this.type;
        stringBuffer.append(typeBinding != null ? typeBinding.debugName() : "<no type>");
        stringBuffer.append(" ");
        char[] cArr = this.name;
        stringBuffer.append(cArr != null ? new String(cArr) : "<no name>");
        return stringBuffer.toString();
    }

    public Constant constant(Scope scope) {
        return constant();
    }
}
