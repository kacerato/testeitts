package org.eclipse.jdt.core.dom;

import java.util.HashSet;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

class BindingComparator {
    public static boolean isEqual(TypeVariableBinding[] typeVariableBindingArr, TypeVariableBinding[] typeVariableBindingArr2) {
        int length;
        if (typeVariableBindingArr == null) {
            return typeVariableBindingArr2 == null;
        }
        if (typeVariableBindingArr2 == null || (length = typeVariableBindingArr.length) != typeVariableBindingArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!isEqual(typeVariableBindingArr[i10], typeVariableBindingArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEqual(Binding binding, Binding binding2, HashSet hashSet) {
        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                return isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding2, hashSet);
            }
            return false;
        }
        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                return isEqual((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding, (org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding2, hashSet);
            }
            return false;
        }
        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.VariableBinding) {
            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.VariableBinding) {
                return isEqual((org.eclipse.jdt.internal.compiler.lookup.VariableBinding) binding, (org.eclipse.jdt.internal.compiler.lookup.VariableBinding) binding2);
            }
            return false;
        }
        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                return CharOperation.equals(((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding).compoundName, ((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding2).compoundName);
            }
            return false;
        }
        if (binding instanceof ImportBinding) {
            if (!(binding2 instanceof ImportBinding)) {
                return false;
            }
            ImportBinding importBinding = (ImportBinding) binding;
            ImportBinding importBinding2 = (ImportBinding) binding2;
            return importBinding.isStatic() == importBinding2.isStatic() && importBinding.onDemand == importBinding2.onDemand && CharOperation.equals(importBinding.compoundName, importBinding2.compoundName);
        }
        if ((binding instanceof org.eclipse.jdt.internal.compiler.lookup.ModuleBinding) && (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.ModuleBinding)) {
            return isEqual((org.eclipse.jdt.internal.compiler.lookup.ModuleBinding) binding, (org.eclipse.jdt.internal.compiler.lookup.ModuleBinding) binding2);
        }
        return false;
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2) {
        return isEqual(methodBinding, methodBinding2, new HashSet());
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2, HashSet hashSet) {
        return methodBinding == null ? methodBinding2 == null : methodBinding2 != null && CharOperation.equals(methodBinding.selector, methodBinding2.selector) && isEqual(methodBinding.returnType, methodBinding2.returnType, hashSet) && isEqual(methodBinding.thrownExceptions, methodBinding2.thrownExceptions, hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) methodBinding.declaringClass, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) methodBinding2.declaringClass, hashSet) && isEqual(methodBinding.typeVariables, methodBinding2.typeVariables, hashSet) && isEqual(methodBinding.parameters, methodBinding2.parameters, hashSet);
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding, org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding2) {
        if (moduleBinding == null) {
            return moduleBinding2 == null;
        }
        if (moduleBinding2 == null) {
            return false;
        }
        return CharOperation.equals(moduleBinding.moduleName, moduleBinding2.moduleName);
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding, org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding2) {
        return (variableBinding.modifiers & 65535) == (65535 & variableBinding2.modifiers) && CharOperation.equals(variableBinding.name, variableBinding2.name) && isEqual(variableBinding.type, variableBinding2.type) && variableBinding.f102483id == variableBinding2.f102483id;
    }

    public static boolean isEqual(FieldBinding fieldBinding, FieldBinding fieldBinding2) {
        HashSet hashSet = new HashSet();
        return (fieldBinding.modifiers & 65535) == (65535 & fieldBinding2.modifiers) && CharOperation.equals(fieldBinding.name, fieldBinding2.name) && isEqual(fieldBinding.type, fieldBinding2.type, hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) fieldBinding.declaringClass, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) fieldBinding2.declaringClass, hashSet);
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr, org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr2) {
        return isEqual(typeBindingArr, typeBindingArr2, new HashSet());
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr, org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr2, HashSet hashSet) {
        int length;
        if (typeBindingArr == null) {
            return typeBindingArr2 == null;
        }
        if (typeBindingArr2 == null || (length = typeBindingArr.length) != typeBindingArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!isEqual(typeBindingArr[i10], typeBindingArr2[i10], hashSet)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2, HashSet hashSet) {
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return true;
        }
        if (typeBinding != null && typeBinding2 != null) {
            int kind = typeBinding.kind();
            if (kind != 68) {
                if (kind == 132) {
                    return typeBinding2.isBaseType() && typeBinding.f102482id == typeBinding2.f102482id;
                }
                if (kind == 260) {
                    if (!typeBinding2.isParameterizedType()) {
                        return false;
                    }
                    ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
                    ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) typeBinding2;
                    return CharOperation.equals(parameterizedTypeBinding.compoundName, parameterizedTypeBinding2.compoundName) && (parameterizedTypeBinding.modifiers & 65535) == (parameterizedTypeBinding2.modifiers & 65535) && isEqual(parameterizedTypeBinding.arguments, parameterizedTypeBinding2.arguments, hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) parameterizedTypeBinding.enclosingType(), (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) parameterizedTypeBinding2.enclosingType(), hashSet);
                }
                if (kind == 516) {
                    if (typeBinding2.kind() != 516) {
                        return false;
                    }
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                    WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding2;
                    return isEqual(wildcardBinding.bound, wildcardBinding2.bound, hashSet) && wildcardBinding.boundKind == wildcardBinding2.boundKind;
                }
                if (kind == 2052) {
                    if (!typeBinding2.isGenericType()) {
                        return false;
                    }
                    ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                    ReferenceBinding referenceBinding2 = (ReferenceBinding) typeBinding2;
                    return CharOperation.equals(referenceBinding.compoundName, referenceBinding2.compoundName) && (referenceBinding.modifiers & 65535) == (referenceBinding2.modifiers & 65535) && isEqual(referenceBinding.typeVariables(), referenceBinding2.typeVariables(), hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) referenceBinding.enclosingType(), (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) referenceBinding2.enclosingType(), hashSet);
                }
                if (kind != 4100) {
                    if (kind != 8196) {
                        if (!(typeBinding2 instanceof ReferenceBinding)) {
                            return false;
                        }
                        ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
                        ReferenceBinding referenceBinding4 = (ReferenceBinding) typeBinding2;
                        char[] constantPoolName = referenceBinding3.constantPoolName();
                        char[] constantPoolName2 = referenceBinding4.constantPoolName();
                        if (constantPoolName == null) {
                            if (constantPoolName2 != null || !CharOperation.equals(referenceBinding3.computeUniqueKey(), referenceBinding4.computeUniqueKey())) {
                                return false;
                            }
                        } else if (constantPoolName2 == null || !CharOperation.equals(constantPoolName, constantPoolName2)) {
                            return false;
                        }
                        return CharOperation.equals(referenceBinding3.compoundName, referenceBinding4.compoundName) && !referenceBinding4.isGenericType() && referenceBinding3.isRawType() == referenceBinding4.isRawType() && (referenceBinding3.modifiers & IClassFileReader.ALL_BUT_METHOD_BODIES) == (65503 & referenceBinding4.modifiers) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) referenceBinding3.enclosingType(), (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) referenceBinding4.enclosingType(), hashSet);
                    }
                    if (typeBinding2.kind() != 8196) {
                        return false;
                    }
                    WildcardBinding wildcardBinding3 = (WildcardBinding) typeBinding;
                    WildcardBinding wildcardBinding4 = (WildcardBinding) typeBinding2;
                    return isEqual(wildcardBinding3.bound, wildcardBinding4.bound, hashSet) && isEqual(wildcardBinding3.otherBounds, wildcardBinding4.otherBounds, hashSet);
                }
                if (!typeBinding2.isTypeVariable()) {
                    return false;
                }
                if (typeBinding.isCapture()) {
                    if (!typeBinding2.isCapture()) {
                        return false;
                    }
                    CaptureBinding captureBinding = (CaptureBinding) typeBinding;
                    CaptureBinding captureBinding2 = (CaptureBinding) typeBinding2;
                    if (captureBinding.end == captureBinding2.end) {
                        if (hashSet.contains(typeBinding)) {
                            return true;
                        }
                        hashSet.add(typeBinding);
                        if (isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) captureBinding.wildcard, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) captureBinding2.wildcard, hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) captureBinding.sourceType, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) captureBinding2.sourceType, hashSet)) {
                            return true;
                        }
                    }
                    return false;
                }
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
                TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding) typeBinding2;
                if (CharOperation.equals(typeVariableBinding.sourceName, typeVariableBinding2.sourceName)) {
                    if (hashSet.contains(typeBinding)) {
                        return true;
                    }
                    hashSet.add(typeBinding);
                    if (isEqual(typeVariableBinding.declaringElement, typeVariableBinding2.declaringElement, hashSet) && isEqual((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) typeVariableBinding.superclass(), (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) typeVariableBinding2.superclass(), hashSet) && isEqual(typeVariableBinding.superInterfaces(), typeVariableBinding2.superInterfaces(), hashSet)) {
                        return true;
                    }
                }
                return false;
            }
            if (typeBinding2.isArrayType() && typeBinding.dimensions() == typeBinding2.dimensions() && isEqual(typeBinding.leafComponentType(), typeBinding2.leafComponentType(), hashSet)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEqual(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2) {
        return isEqual(typeBinding, typeBinding2, new HashSet());
    }
}
