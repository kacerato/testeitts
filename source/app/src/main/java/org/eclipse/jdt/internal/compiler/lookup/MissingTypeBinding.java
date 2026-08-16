package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;

public class MissingTypeBinding extends BinaryTypeBinding {
    public MissingTypeBinding(PackageBinding packageBinding, char[][] cArr, LookupEnvironment lookupEnvironment) {
        this.compoundName = cArr;
        computeId();
        this.tagBits |= 131264;
        this.environment = lookupEnvironment;
        this.fPackage = packageBinding;
        this.fileName = CharOperation.concatWith(cArr, '/');
        this.sourceName = cArr[cArr.length - 1];
        this.modifiers = 1;
        this.superclass = null;
        this.superInterfaces = Binding.NO_SUPERINTERFACES;
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.memberTypes = Binding.NO_MEMBER_TYPES;
        this.fields = Binding.NO_FIELDS;
        this.methods = Binding.NO_METHODS;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return this;
    }

    @Override
    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        if (list == null) {
            list = new ArrayList<>(5);
        } else if (list.contains(this)) {
            return list;
        }
        list.add(this);
        return list;
    }

    @Override
    public int problemId() {
        return 1;
    }

    public void setMissingSuperclass(ReferenceBinding referenceBinding) {
        this.superclass = referenceBinding;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
    }

    @Override
    public String toString() {
        return "[MISSING:" + new String(CharOperation.concatWith(this.compoundName, '.')) + "]";
    }
}
