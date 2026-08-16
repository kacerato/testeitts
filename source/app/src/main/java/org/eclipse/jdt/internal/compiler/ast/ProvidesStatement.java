package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class ProvidesStatement extends ModuleStatement {
    public TypeReference[] implementations;
    public TypeReference serviceInterface;

    public List<TypeBinding> getResolvedImplementations() {
        ArrayList arrayList = new ArrayList();
        TypeReference[] typeReferenceArr = this.implementations;
        if (typeReferenceArr != null) {
            for (TypeReference typeReference : typeReferenceArr) {
                TypeBinding typeBinding = typeReference.resolvedType;
                if (typeBinding != null) {
                    arrayList.add(typeBinding);
                }
            }
        }
        return arrayList;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("provides ");
        this.serviceInterface.print(0, stringBuffer);
        stringBuffer.append(" with ");
        int i11 = 0;
        while (true) {
            TypeReference[] typeReferenceArr = this.implementations;
            if (i11 >= typeReferenceArr.length) {
                stringBuffer.append(";");
                return stringBuffer;
            }
            typeReferenceArr[i11].print(0, stringBuffer);
            if (i11 < this.implementations.length - 1) {
                stringBuffer.append(", ");
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean resolve(BlockScope blockScope) {
        int i10;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        int i11;
        SourceModuleBinding sourceModuleBinding = blockScope.referenceCompilationUnit().moduleDeclaration.binding;
        TypeBinding resolveType = this.serviceInterface.resolveType(blockScope);
        if (resolveType == null || !resolveType.isValidBinding()) {
            return false;
        }
        if (!resolveType.isClass() && !resolveType.isInterface() && !resolveType.isAnnotationType()) {
            blockScope.problemReporter().invalidServiceRef(IProblem.InvalidServiceIntfType, this.serviceInterface);
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this.serviceInterface.resolvedType;
        HashSet hashSet = new HashSet();
        int i12 = 0;
        boolean z10 = false;
        while (true) {
            TypeReference[] typeReferenceArr = this.implementations;
            if (i12 >= typeReferenceArr.length) {
                return z10;
            }
            ReferenceBinding referenceBinding2 = (ReferenceBinding) typeReferenceArr[i12].resolveType(blockScope);
            if (referenceBinding2 != null && referenceBinding2.isValidBinding() && referenceBinding2.canBeSeenBy(blockScope)) {
                if (hashSet.add(referenceBinding2)) {
                    if (referenceBinding2.module() != sourceModuleBinding) {
                        i11 = IProblem.ServiceImplNotDefinedByModule;
                    } else if (!referenceBinding2.isClass() && !referenceBinding2.isInterface()) {
                        i11 = IProblem.InvalidServiceImplType;
                    } else if (!referenceBinding2.isNestedType() || referenceBinding2.isStatic()) {
                        char[] cArr = TypeConstants.PROVIDER;
                        TypeBinding[] typeBindingArr = Binding.NO_PARAMETERS;
                        MethodBinding exactMethod = referenceBinding2.getExactMethod(cArr, typeBindingArr, blockScope.compilationUnitScope());
                        if (exactMethod != null && (!exactMethod.isValidBinding() || !exactMethod.isPublic() || !exactMethod.isStatic())) {
                            exactMethod = null;
                        }
                        if (exactMethod != null) {
                            TypeBinding typeBinding3 = exactMethod.returnType;
                            boolean z11 = typeBinding3 instanceof ReferenceBinding;
                            typeBinding = typeBinding3;
                            if (z11) {
                                boolean canBeSeenBy = typeBinding3.canBeSeenBy(blockScope);
                                typeBinding = typeBinding3;
                                if (!canBeSeenBy) {
                                    ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding3;
                                    blockScope.problemReporter().invalidType(this.implementations[i12], new ProblemReferenceBinding(referenceBinding3.compoundName, referenceBinding3, 2));
                                    i10 = 0;
                                    z10 = true;
                                    typeBinding2 = typeBinding3;
                                    if (typeBinding2.findSuperTypeOriginatingFrom(referenceBinding) == null) {
                                        blockScope.problemReporter().typeMismatchError(typeBinding2, referenceBinding, this.implementations[i12], (ASTNode) null);
                                        z10 = true;
                                    }
                                    i11 = i10;
                                }
                            }
                            i10 = 0;
                            typeBinding2 = typeBinding;
                            if (typeBinding2.findSuperTypeOriginatingFrom(referenceBinding) == null) {
                            }
                            i11 = i10;
                        } else {
                            if (referenceBinding2.isAbstract()) {
                                i10 = IProblem.AbstractServiceImplementation;
                                typeBinding2 = referenceBinding2;
                            } else {
                                MethodBinding exactConstructor = referenceBinding2.getExactConstructor(typeBindingArr);
                                if (exactConstructor == null || !exactConstructor.isValidBinding()) {
                                    i10 = IProblem.ProviderMethodOrConstructorRequiredForServiceImpl;
                                    typeBinding2 = referenceBinding2;
                                } else {
                                    typeBinding = referenceBinding2;
                                    if (!exactConstructor.isPublic()) {
                                        i10 = IProblem.ServiceImplDefaultConstructorNotPublic;
                                        typeBinding2 = referenceBinding2;
                                    }
                                    i10 = 0;
                                    typeBinding2 = typeBinding;
                                }
                            }
                            if (typeBinding2.findSuperTypeOriginatingFrom(referenceBinding) == null) {
                            }
                            i11 = i10;
                        }
                    } else {
                        i11 = IProblem.NestedServiceImpl;
                    }
                    if (i11 != 0) {
                        blockScope.problemReporter().invalidServiceRef(i11, this.implementations[i12]);
                    }
                } else {
                    blockScope.problemReporter().duplicateTypeReference(IProblem.DuplicateServices, this.implementations[i12]);
                }
                i12++;
            }
            z10 = true;
            i12++;
        }
    }
}
