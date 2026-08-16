package org.eclipse.jdt.internal.compiler.lookup;

public class UnresolvedAnnotationBinding extends AnnotationBinding {
    private LookupEnvironment env;
    private boolean typeUnresolved;

    public UnresolvedAnnotationBinding(ReferenceBinding referenceBinding, ElementValuePair[] elementValuePairArr, LookupEnvironment lookupEnvironment) {
        super(referenceBinding, elementValuePairArr);
        this.typeUnresolved = true;
        this.env = lookupEnvironment;
    }

    @Override
    public ReferenceBinding getAnnotationType() {
        resolve();
        return this.type;
    }

    @Override
    public ElementValuePair[] getElementValuePairs() {
        if (this.env != null) {
            if (this.typeUnresolved) {
                resolve();
            }
            int length = this.pairs.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                ElementValuePair elementValuePair = this.pairs[length];
                MethodBinding[] methods = this.type.getMethods(elementValuePair.getName());
                if (methods != null && methods.length == 1) {
                    elementValuePair.setMethodBinding(methods[0]);
                }
                Object value = elementValuePair.getValue();
                LookupEnvironment lookupEnvironment = this.env;
                boolean z10 = lookupEnvironment.mayTolerateMissingType;
                lookupEnvironment.mayTolerateMissingType = true;
                try {
                    if (value instanceof UnresolvedReferenceBinding) {
                        elementValuePair.setValue(((UnresolvedReferenceBinding) value).resolve(lookupEnvironment, false));
                    } else if (value instanceof Object[]) {
                        Object[] objArr = (Object[]) value;
                        for (int i10 = 0; i10 < objArr.length; i10++) {
                            Object obj = objArr[i10];
                            if (obj instanceof UnresolvedReferenceBinding) {
                                objArr[i10] = ((UnresolvedReferenceBinding) obj).resolve(this.env, false);
                            }
                        }
                    }
                    this.env.mayTolerateMissingType = z10;
                } catch (Throwable th2) {
                    this.env.mayTolerateMissingType = z10;
                    throw th2;
                }
            }
            this.env = null;
        }
        return this.pairs;
    }

    @Override
    public void resolve() {
        if (this.typeUnresolved) {
            LookupEnvironment lookupEnvironment = this.env;
            boolean z10 = lookupEnvironment.mayTolerateMissingType;
            lookupEnvironment.mayTolerateMissingType = true;
            try {
                this.type = (ReferenceBinding) BinaryTypeBinding.resolveType(this.type, lookupEnvironment, false);
                this.env.mayTolerateMissingType = z10;
                this.typeUnresolved = false;
            } catch (Throwable th2) {
                this.env.mayTolerateMissingType = z10;
                throw th2;
            }
        }
    }
}
