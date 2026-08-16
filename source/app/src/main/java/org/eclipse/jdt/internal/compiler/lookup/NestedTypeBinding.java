package org.eclipse.jdt.internal.compiler.lookup;

public abstract class NestedTypeBinding extends SourceTypeBinding {
    public SyntheticArgumentBinding[] enclosingInstances;
    public SourceTypeBinding enclosingType;
    private ReferenceBinding[] enclosingTypes;
    public SyntheticArgumentBinding[] outerLocalVariables;
    private int outerLocalVariablesSlotSize;

    public NestedTypeBinding(char[][] cArr, ClassScope classScope, SourceTypeBinding sourceTypeBinding) {
        super(cArr, sourceTypeBinding.fPackage, classScope);
        this.enclosingTypes = Binding.UNINITIALIZED_REFERENCE_TYPES;
        this.outerLocalVariablesSlotSize = -1;
        this.tagBits |= 2052;
        this.enclosingType = sourceTypeBinding;
    }

    public SyntheticArgumentBinding addSyntheticArgument(LocalVariableBinding localVariableBinding) {
        SyntheticArgumentBinding syntheticArgumentBinding;
        SyntheticArgumentBinding syntheticArgumentBinding2;
        if (isPrototype()) {
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
            if (syntheticArgumentBindingArr == null) {
                syntheticArgumentBinding = new SyntheticArgumentBinding(localVariableBinding);
                this.outerLocalVariables = new SyntheticArgumentBinding[]{syntheticArgumentBinding};
            } else {
                int length = syntheticArgumentBindingArr.length;
                int i10 = length;
                loop0: while (true) {
                    int i11 = i10;
                    do {
                        i10--;
                        if (i10 < 0) {
                            SyntheticArgumentBinding[] syntheticArgumentBindingArr2 = new SyntheticArgumentBinding[length + 1];
                            System.arraycopy(this.outerLocalVariables, 0, syntheticArgumentBindingArr2, 0, i11);
                            SyntheticArgumentBinding syntheticArgumentBinding3 = new SyntheticArgumentBinding(localVariableBinding);
                            syntheticArgumentBindingArr2[i11] = syntheticArgumentBinding3;
                            System.arraycopy(this.outerLocalVariables, i11, syntheticArgumentBindingArr2, i11 + 1, length - i11);
                            this.outerLocalVariables = syntheticArgumentBindingArr2;
                            syntheticArgumentBinding = syntheticArgumentBinding3;
                            break loop0;
                        }
                        syntheticArgumentBinding2 = this.outerLocalVariables[i10];
                        if (syntheticArgumentBinding2.actualOuterLocalVariable == localVariableBinding) {
                            return syntheticArgumentBinding2;
                        }
                    } while (syntheticArgumentBinding2.f102483id <= localVariableBinding.f102483id);
                }
            }
            if (this.scope.referenceCompilationUnit().isPropagatingInnerClassEmulation) {
                updateInnerEmulationDependents();
            }
            return syntheticArgumentBinding;
        }
        throw new IllegalStateException();
    }

    public SyntheticArgumentBinding addSyntheticArgumentAndField(LocalVariableBinding localVariableBinding) {
        if (isPrototype()) {
            SyntheticArgumentBinding addSyntheticArgument = addSyntheticArgument(localVariableBinding);
            if (addSyntheticArgument == null) {
                return null;
            }
            if (addSyntheticArgument.matchingField == null) {
                addSyntheticArgument.matchingField = addSyntheticFieldForInnerclass(localVariableBinding);
            }
            return addSyntheticArgument;
        }
        throw new IllegalStateException();
    }

    @Override
    public ReferenceBinding enclosingType() {
        return this.enclosingType;
    }

    @Override
    public int getEnclosingInstancesSlotSize() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.enclosingInstances;
        if (syntheticArgumentBindingArr == null) {
            return 0;
        }
        return syntheticArgumentBindingArr.length;
    }

    @Override
    public int getOuterLocalVariablesSlotSize() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.outerLocalVariablesSlotSize < 0) {
            this.outerLocalVariablesSlotSize = 0;
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
            int length = syntheticArgumentBindingArr == null ? 0 : syntheticArgumentBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = this.outerLocalVariables[i10].type.f102482id;
                if (i11 == 7 || i11 == 8) {
                    this.outerLocalVariablesSlotSize += 2;
                } else {
                    this.outerLocalVariablesSlotSize++;
                }
            }
        }
        return this.outerLocalVariablesSlotSize;
    }

    public SyntheticArgumentBinding getSyntheticArgument(LocalVariableBinding localVariableBinding) {
        SyntheticArgumentBinding syntheticArgumentBinding;
        if (isPrototype()) {
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
            if (syntheticArgumentBindingArr == null) {
                return null;
            }
            int length = syntheticArgumentBindingArr.length;
            do {
                length--;
                if (length < 0) {
                    return null;
                }
                syntheticArgumentBinding = this.outerLocalVariables[length];
            } while (syntheticArgumentBinding.actualOuterLocalVariable != localVariableBinding);
            return syntheticArgumentBinding;
        }
        throw new IllegalStateException();
    }

    @Override
    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.enclosingTypes == Binding.UNINITIALIZED_REFERENCE_TYPES) {
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.enclosingInstances;
            if (syntheticArgumentBindingArr == null) {
                this.enclosingTypes = null;
            } else {
                int length = syntheticArgumentBindingArr.length;
                this.enclosingTypes = new ReferenceBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    this.enclosingTypes[i10] = (ReferenceBinding) this.enclosingInstances[i10].type;
                }
            }
        }
        return this.enclosingTypes;
    }

    public SyntheticArgumentBinding[] syntheticEnclosingInstances() {
        if (isPrototype()) {
            return this.enclosingInstances;
        }
        throw new IllegalStateException();
    }

    @Override
    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        if (isPrototype()) {
            return this.outerLocalVariables;
        }
        throw new IllegalStateException();
    }

    public void updateInnerEmulationDependents() {
    }

    public NestedTypeBinding(NestedTypeBinding nestedTypeBinding) {
        super(nestedTypeBinding);
        this.enclosingTypes = Binding.UNINITIALIZED_REFERENCE_TYPES;
        this.outerLocalVariablesSlotSize = -1;
        this.enclosingType = nestedTypeBinding.enclosingType;
        this.enclosingInstances = nestedTypeBinding.enclosingInstances;
        this.enclosingTypes = nestedTypeBinding.enclosingTypes;
        this.outerLocalVariables = nestedTypeBinding.outerLocalVariables;
        this.outerLocalVariablesSlotSize = nestedTypeBinding.outerLocalVariablesSlotSize;
    }

    public SyntheticArgumentBinding addSyntheticArgumentAndField(ReferenceBinding referenceBinding) {
        if (isPrototype()) {
            SyntheticArgumentBinding addSyntheticArgument = addSyntheticArgument(referenceBinding);
            if (addSyntheticArgument == null) {
                return null;
            }
            if (addSyntheticArgument.matchingField == null) {
                addSyntheticArgument.matchingField = addSyntheticFieldForInnerclass(referenceBinding);
            }
            return addSyntheticArgument;
        }
        throw new IllegalStateException();
    }

    public SyntheticArgumentBinding getSyntheticArgument(ReferenceBinding referenceBinding, boolean z10, boolean z11) {
        if (isPrototype()) {
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.enclosingInstances;
            if (syntheticArgumentBindingArr == null) {
                return null;
            }
            if (z11 && syntheticArgumentBindingArr.length > 0 && TypeBinding.equalsEquals(syntheticArgumentBindingArr[0].type, referenceBinding)) {
                SyntheticArgumentBinding syntheticArgumentBinding = this.enclosingInstances[0];
                if (syntheticArgumentBinding.actualOuterLocalVariable == null) {
                    return syntheticArgumentBinding;
                }
            }
            int length = this.enclosingInstances.length;
            while (true) {
                length--;
                if (length < 0) {
                    if (!z10) {
                        int length2 = this.enclosingInstances.length;
                        while (true) {
                            length2--;
                            if (length2 < 0) {
                                break;
                            }
                            SyntheticArgumentBinding syntheticArgumentBinding2 = this.enclosingInstances[length2];
                            if (syntheticArgumentBinding2.actualOuterLocalVariable == null && syntheticArgumentBinding2.type.findSuperTypeOriginatingFrom(referenceBinding) != null) {
                                return this.enclosingInstances[length2];
                            }
                        }
                    }
                    return null;
                }
                if (TypeBinding.equalsEquals(this.enclosingInstances[length].type, referenceBinding)) {
                    SyntheticArgumentBinding syntheticArgumentBinding3 = this.enclosingInstances[length];
                    if (syntheticArgumentBinding3.actualOuterLocalVariable == null) {
                        return syntheticArgumentBinding3;
                    }
                }
            }
        } else {
            throw new IllegalStateException();
        }
    }

    public SyntheticArgumentBinding addSyntheticArgument(ReferenceBinding referenceBinding) {
        SyntheticArgumentBinding syntheticArgumentBinding;
        if (isPrototype()) {
            SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.enclosingInstances;
            if (syntheticArgumentBindingArr == null) {
                syntheticArgumentBinding = new SyntheticArgumentBinding(referenceBinding);
                this.enclosingInstances = new SyntheticArgumentBinding[]{syntheticArgumentBinding};
            } else {
                int length = syntheticArgumentBindingArr.length;
                int i10 = TypeBinding.equalsEquals(enclosingType(), referenceBinding) ? 0 : length;
                SyntheticArgumentBinding[] syntheticArgumentBindingArr2 = new SyntheticArgumentBinding[length + 1];
                System.arraycopy(this.enclosingInstances, 0, syntheticArgumentBindingArr2, i10 == 0 ? 1 : 0, length);
                syntheticArgumentBinding = new SyntheticArgumentBinding(referenceBinding);
                syntheticArgumentBindingArr2[i10] = syntheticArgumentBinding;
                this.enclosingInstances = syntheticArgumentBindingArr2;
            }
            if (this.scope.referenceCompilationUnit().isPropagatingInnerClassEmulation) {
                updateInnerEmulationDependents();
            }
            return syntheticArgumentBinding;
        }
        throw new IllegalStateException();
    }
}
