package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class MemberTypeBinding extends NestedTypeBinding {
    public MemberTypeBinding(char[][] cArr, ClassScope classScope, SourceTypeBinding sourceTypeBinding) {
        super(cArr, classScope, sourceTypeBinding);
        this.tagBits |= TagBits.MemberTypeMask;
    }

    public void checkSyntheticArgsAndFields() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (isStatic() || isInterface()) {
            return;
        }
        if (isPrototype()) {
            addSyntheticArgumentAndField(this.enclosingType);
        } else {
            ((MemberTypeBinding) this.prototype).checkSyntheticArgsAndFields();
        }
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        MemberTypeBinding memberTypeBinding = new MemberTypeBinding(this);
        memberTypeBinding.enclosingType = (SourceTypeBinding) typeBinding;
        return memberTypeBinding;
    }

    @Override
    public char[] constantPoolName() {
        char[] cArr = this.constantPoolName;
        if (cArr != null) {
            return cArr;
        }
        if (!isPrototype()) {
            return this.prototype.constantPoolName();
        }
        char[] concat = CharOperation.concat(enclosingType().constantPoolName(), this.sourceName, '$');
        this.constantPoolName = concat;
        return concat;
    }

    @Override
    public void initializeDeprecatedAnnotationTagBits() {
        if (!isPrototype()) {
            this.prototype.initializeDeprecatedAnnotationTagBits();
            return;
        }
        if ((this.tagBits & 17179869184L) == 0) {
            super.initializeDeprecatedAnnotationTagBits();
            if ((this.tagBits & 70368744177664L) == 0) {
                ReferenceBinding enclosingType = enclosingType();
                if ((enclosingType.tagBits & 17179869184L) == 0) {
                    enclosingType.initializeDeprecatedAnnotationTagBits();
                }
                if (enclosingType.isViewedAsDeprecated()) {
                    this.modifiers |= 2097152;
                    this.tagBits |= enclosingType.tagBits & 4611686018427387904L;
                }
            }
        }
    }

    @Override
    public ModuleBinding module() {
        return this.enclosingType.module();
    }

    @Override
    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        return "Member type : " + new String(sourceName()) + " " + super.toString();
    }

    public MemberTypeBinding(MemberTypeBinding memberTypeBinding) {
        super(memberTypeBinding);
    }
}
