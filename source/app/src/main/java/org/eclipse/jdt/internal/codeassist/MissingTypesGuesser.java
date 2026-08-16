package org.eclipse.jdt.internal.codeassist;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public class MissingTypesGuesser extends ASTVisitor {
    private int combinationsCount;
    private SearchableEnvironment nameEnvironment;
    private HashMap originalTypes;
    private CompletionEngine.CompletionProblemFactory problemFactory;
    private HashMap substituedTypes;

    public interface GuessedTypeRequestor {
        void accept(TypeBinding typeBinding, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10);
    }

    public static class ResolutionCleaner extends ASTVisitor {
        private HashtableOfObjectToInt bitsMap = new HashtableOfObjectToInt();
        private boolean firstCall = true;

        private void cleanUp(TypeReference typeReference) {
            if (this.firstCall) {
                this.bitsMap.put(typeReference, typeReference.bits);
            } else {
                typeReference.bits = this.bitsMap.get(typeReference);
            }
            typeReference.resolvedType = null;
        }

        @Override
        public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
            cleanUp(singleTypeReference);
            return true;
        }

        @Override
        public boolean visit(SingleTypeReference singleTypeReference, ClassScope classScope) {
            cleanUp(singleTypeReference);
            return true;
        }

        @Override
        public boolean visit(Wildcard wildcard, BlockScope blockScope) {
            cleanUp(wildcard);
            return true;
        }

        @Override
        public boolean visit(Wildcard wildcard, ClassScope classScope) {
            cleanUp(wildcard);
            return true;
        }

        private void cleanUp(ParameterizedSingleTypeReference parameterizedSingleTypeReference) {
            cleanUp((TypeReference) parameterizedSingleTypeReference);
            parameterizedSingleTypeReference.bits &= -262145;
        }

        @Override
        public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
            cleanUp(arrayTypeReference);
            return true;
        }

        @Override
        public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope classScope) {
            cleanUp(arrayTypeReference);
            return true;
        }

        private void cleanUp(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference) {
            cleanUp((TypeReference) parameterizedQualifiedTypeReference);
            parameterizedQualifiedTypeReference.bits &= -262145;
        }

        @Override
        public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
            cleanUp(parameterizedSingleTypeReference);
            return true;
        }

        @Override
        public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope classScope) {
            cleanUp(parameterizedSingleTypeReference);
            return true;
        }

        public void cleanUp(TypeReference typeReference, BlockScope blockScope) {
            typeReference.traverse(this, blockScope);
            this.firstCall = false;
        }

        @Override
        public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
            cleanUp(qualifiedTypeReference);
            return true;
        }

        @Override
        public boolean visit(QualifiedTypeReference qualifiedTypeReference, ClassScope classScope) {
            cleanUp(qualifiedTypeReference);
            return true;
        }

        public void cleanUp(TypeReference typeReference, ClassScope classScope) {
            typeReference.traverse(this, classScope);
            this.firstCall = false;
        }

        @Override
        public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
            cleanUp(arrayQualifiedTypeReference);
            return true;
        }

        @Override
        public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope classScope) {
            cleanUp(arrayQualifiedTypeReference);
            return true;
        }

        @Override
        public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
            cleanUp(parameterizedQualifiedTypeReference);
            return true;
        }

        @Override
        public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope classScope) {
            cleanUp(parameterizedQualifiedTypeReference);
            return true;
        }
    }

    public MissingTypesGuesser(CompletionEngine completionEngine) {
        this.problemFactory = completionEngine.problemFactory;
        this.nameEnvironment = completionEngine.nameEnvironment;
    }

    private boolean computeMissingElements(QualifiedTypeReference[] qualifiedTypeReferenceArr, char[][][] cArr, Binding[] bindingArr, int[] iArr, int[] iArr2) {
        int length = qualifiedTypeReferenceArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            QualifiedTypeReference qualifiedTypeReference = qualifiedTypeReferenceArr[i10];
            TypeBinding typeBinding = qualifiedTypeReference.resolvedType;
            if (typeBinding == null) {
                return false;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding.leafComponentType().erasure();
            int length2 = cArr[i10].length - 1;
            if (length2 != 0) {
                if (referenceBinding.depth() + 1 <= length2) {
                    return false;
                }
                referenceBinding = referenceBinding.enclosingTypeAt(length2);
            }
            bindingArr[i10] = referenceBinding;
            iArr[i10] = qualifiedTypeReference.sourceStart;
            iArr2[i10] = qualifiedTypeReference.sourceEnd + 1;
        }
        return true;
    }

    private TypeReference convert(ArrayQualifiedTypeReference arrayQualifiedTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        TypeBinding typeBinding = arrayQualifiedTypeReference.resolvedType;
        if (typeBinding == null) {
            return null;
        }
        if (typeBinding.isValidBinding()) {
            ArrayQualifiedTypeReference arrayQualifiedTypeReference2 = new ArrayQualifiedTypeReference(arrayQualifiedTypeReference.tokens, arrayQualifiedTypeReference.dimensions(), arrayQualifiedTypeReference.sourcePositions);
            arrayQualifiedTypeReference2.sourceStart = arrayQualifiedTypeReference.sourceStart;
            arrayQualifiedTypeReference2.sourceEnd = arrayQualifiedTypeReference.sourceEnd;
            return arrayQualifiedTypeReference2;
        }
        if ((arrayQualifiedTypeReference.resolvedType.problemId() & 1) == 0 || ((ReferenceBinding) arrayQualifiedTypeReference.resolvedType.leafComponentType()).compoundName.length != 1 || (findTypeNames = findTypeNames((typeName = arrayQualifiedTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
            return null;
        }
        ArrayQualifiedTypeReference arrayQualifiedTypeReference3 = new ArrayQualifiedTypeReference(findTypeNames[0], arrayQualifiedTypeReference.dimensions(), new long[findTypeNames[0].length]);
        arrayQualifiedTypeReference3.sourceStart = arrayQualifiedTypeReference.sourceStart;
        arrayQualifiedTypeReference3.sourceEnd = (int) (arrayQualifiedTypeReference.sourcePositions[0] & 4294967295L);
        this.substituedTypes.put(arrayQualifiedTypeReference3, findTypeNames);
        this.originalTypes.put(arrayQualifiedTypeReference3, typeName);
        this.combinationsCount *= findTypeNames.length;
        return arrayQualifiedTypeReference3;
    }

    private char[][][] findTypeNames(char[][] cArr) {
        char[] cArr2 = cArr[cArr.length - 1];
        final boolean z10 = cArr.length > 1;
        final char[] concatWith = z10 ? CharOperation.concatWith(cArr, '.') : null;
        final ArrayList arrayList = new ArrayList();
        this.nameEnvironment.findExactTypes(cArr2, true, 0, new ISearchRequestor() {
            @Override
            public void acceptConstructor(int i10, char[] cArr3, int i11, char[] cArr4, char[][] cArr5, char[][] cArr6, int i12, char[] cArr7, int i13, String str, AccessRestriction accessRestriction) {
            }

            @Override
            public void acceptModule(char[] cArr3) {
            }

            @Override
            public void acceptPackage(char[] cArr3) {
            }

            @Override
            public void acceptType(char[] cArr3, char[] cArr4, char[][] cArr5, int i10, AccessRestriction accessRestriction) {
                char[] concat = CharOperation.concat(cArr3, CharOperation.concat(CharOperation.concatWith(cArr5, '.'), cArr4, '.'), '.');
                if (!z10 || CharOperation.endsWith(concat, concatWith)) {
                    arrayList.add(CharOperation.splitOn('.', concat));
                }
            }
        });
        if (arrayList.size() == 0) {
            return null;
        }
        return (char[][][]) arrayList.toArray((char[][][]) Array.newInstance(Character.TYPE, arrayList.size(), 0, 0));
    }

    private char[][] getOriginal(TypeReference typeReference) {
        return (char[][]) this.originalTypes.get(typeReference);
    }

    private QualifiedTypeReference[] getSubstituedTypes() {
        Set o10 = this.substituedTypes.o();
        return (QualifiedTypeReference[]) o10.toArray(new QualifiedTypeReference[o10.size()]);
    }

    private char[][][] getSubstitution(TypeReference typeReference) {
        return (char[][][]) this.substituedTypes.get(typeReference);
    }

    private void nextSubstitution(QualifiedTypeReference[] qualifiedTypeReferenceArr, char[][][][] cArr, int[] iArr) {
        int length = qualifiedTypeReferenceArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            int i11 = iArr[i10];
            if (i11 < cArr[i10].length - 1) {
                iArr[i10] = i11 + 1;
                break;
            } else {
                iArr[i10] = 0;
                i10++;
            }
        }
        for (int i12 = 0; i12 < length; i12++) {
            QualifiedTypeReference qualifiedTypeReference = qualifiedTypeReferenceArr[i12];
            char[][] cArr2 = cArr[i12][iArr[i12]];
            qualifiedTypeReference.tokens = cArr2;
            qualifiedTypeReference.sourcePositions = new long[cArr2.length];
            if (qualifiedTypeReference instanceof ParameterizedQualifiedTypeReference) {
                TypeReference[][] typeReferenceArr = ((ParameterizedQualifiedTypeReference) qualifiedTypeReference).typeArguments;
                int length2 = cArr2.length;
                TypeReference[][] typeReferenceArr2 = new TypeReference[length2];
                int i13 = length2 - 1;
                int length3 = typeReferenceArr.length;
                while (true) {
                    length3--;
                    if (i13 > -1 && length3 > -1) {
                        typeReferenceArr2[i13] = typeReferenceArr[length3];
                        i13--;
                    }
                }
            }
        }
    }

    public void guess(TypeReference typeReference, Scope scope, GuessedTypeRequestor guessedTypeRequestor) {
        TypeBinding resolveType;
        int i10;
        ResolutionCleaner resolutionCleaner;
        this.substituedTypes = new HashMap();
        this.originalTypes = new HashMap();
        int i11 = 1;
        this.combinationsCount = 1;
        TypeReference convert = convert(typeReference);
        if (convert == null) {
            return;
        }
        QualifiedTypeReference[] substituedTypes = getSubstituedTypes();
        int length = substituedTypes.length;
        int[] iArr = new int[substituedTypes.length];
        char[][][][] cArr = new char[substituedTypes.length][][];
        char[][][] cArr2 = new char[substituedTypes.length][];
        int i12 = 0;
        while (i12 < substituedTypes.length) {
            cArr[i12] = getSubstitution(substituedTypes[i12]);
            cArr2[i12] = getOriginal(substituedTypes[i12]);
            i12++;
            i11 = 1;
        }
        ResolutionCleaner resolutionCleaner2 = new ResolutionCleaner();
        int i13 = 0;
        while (i13 < this.combinationsCount) {
            nextSubstitution(substituedTypes, cArr, iArr);
            this.problemFactory.startCheckingProblems();
            int i14 = scope.kind;
            if (i14 == i11 || i14 == 2) {
                BlockScope blockScope = (BlockScope) scope;
                resolutionCleaner2.cleanUp(convert, blockScope);
                resolveType = convert.resolveType(blockScope);
            } else if (i14 != 3) {
                resolveType = null;
            } else {
                ClassScope classScope = (ClassScope) scope;
                resolutionCleaner2.cleanUp(convert, classScope);
                resolveType = convert.resolveType(classScope);
            }
            TypeBinding typeBinding = resolveType;
            this.problemFactory.stopCheckingProblems();
            if (this.problemFactory.hasForbiddenProblems || typeBinding == null) {
                i10 = i13;
                resolutionCleaner = resolutionCleaner2;
            } else {
                Binding[] bindingArr = new Binding[length];
                int[] iArr2 = new int[length];
                int[] iArr3 = new int[length];
                i10 = i13;
                resolutionCleaner = resolutionCleaner2;
                if (computeMissingElements(substituedTypes, cArr2, bindingArr, iArr2, iArr3)) {
                    guessedTypeRequestor.accept(typeBinding.capture(scope, typeReference.sourceStart, typeReference.sourceEnd), bindingArr, iArr2, iArr3, this.problemFactory.hasAllowedProblems);
                }
            }
            i13 = i10 + 1;
            resolutionCleaner2 = resolutionCleaner;
            i11 = 1;
        }
    }

    private TypeReference convert(ArrayTypeReference arrayTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        TypeBinding typeBinding = arrayTypeReference.resolvedType;
        if (typeBinding == null) {
            return null;
        }
        if (typeBinding.isValidBinding()) {
            ArrayTypeReference arrayTypeReference2 = new ArrayTypeReference(arrayTypeReference.token, arrayTypeReference.dimensions, 0L);
            arrayTypeReference2.sourceStart = arrayTypeReference.sourceStart;
            arrayTypeReference2.sourceEnd = arrayTypeReference.originalSourceEnd;
            return arrayTypeReference2;
        }
        if ((arrayTypeReference.resolvedType.problemId() & 1) == 0 || (findTypeNames = findTypeNames((typeName = arrayTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
            return null;
        }
        char[][] cArr = findTypeNames[0];
        ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference(cArr, arrayTypeReference.dimensions, new long[cArr.length]);
        arrayQualifiedTypeReference.sourceStart = arrayTypeReference.sourceStart;
        arrayQualifiedTypeReference.sourceEnd = arrayTypeReference.originalSourceEnd;
        this.substituedTypes.put(arrayQualifiedTypeReference, findTypeNames);
        this.originalTypes.put(arrayQualifiedTypeReference, typeName);
        this.combinationsCount *= findTypeNames.length;
        return arrayQualifiedTypeReference;
    }

    private TypeReference convert(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        if (parameterizedQualifiedTypeReference.resolvedType != null) {
            TypeReference[][] typeReferenceArr = parameterizedQualifiedTypeReference.typeArguments;
            int length = typeReferenceArr.length;
            TypeReference[][] typeReferenceArr2 = new TypeReference[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeReference[] typeReferenceArr3 = typeReferenceArr[i10];
                if (typeReferenceArr3 != null) {
                    int length2 = typeReferenceArr3.length;
                    typeReferenceArr2[i10] = new TypeReference[length2];
                    for (int i11 = 0; i11 < length2; i11++) {
                        typeReferenceArr2[i10][i11] = convert(typeReferenceArr[i10][i11]);
                        if (typeReferenceArr2[i10][i11] == null) {
                            return null;
                        }
                    }
                }
            }
            if (parameterizedQualifiedTypeReference.resolvedType.isValidBinding()) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference2 = new ParameterizedQualifiedTypeReference(parameterizedQualifiedTypeReference.tokens, typeReferenceArr2, parameterizedQualifiedTypeReference.dimensions(), new long[parameterizedQualifiedTypeReference.tokens.length]);
                parameterizedQualifiedTypeReference2.sourceStart = parameterizedQualifiedTypeReference.sourceStart;
                parameterizedQualifiedTypeReference2.sourceEnd = parameterizedQualifiedTypeReference.sourceEnd;
                return parameterizedQualifiedTypeReference2;
            }
            if ((parameterizedQualifiedTypeReference.resolvedType.problemId() & 1) == 0 || ((ReferenceBinding) parameterizedQualifiedTypeReference.resolvedType.leafComponentType()).compoundName.length != 1 || (findTypeNames = findTypeNames((typeName = parameterizedQualifiedTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
                return null;
            }
            int length3 = findTypeNames[0].length;
            TypeReference[][] typeReferenceArr4 = new TypeReference[length3];
            int i12 = length3 - 1;
            for (int i13 = length - 1; i12 > -1 && i13 > -1; i13--) {
                typeReferenceArr4[i12] = typeReferenceArr2[i13];
                i12--;
            }
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference3 = new ParameterizedQualifiedTypeReference(findTypeNames[0], typeReferenceArr4, parameterizedQualifiedTypeReference.dimensions(), new long[findTypeNames[0].length]);
            parameterizedQualifiedTypeReference3.sourceStart = parameterizedQualifiedTypeReference.sourceStart;
            parameterizedQualifiedTypeReference3.sourceEnd = (int) (parameterizedQualifiedTypeReference.sourcePositions[0] & 4294967295L);
            this.substituedTypes.put(parameterizedQualifiedTypeReference3, findTypeNames);
            this.originalTypes.put(parameterizedQualifiedTypeReference3, typeName);
            this.combinationsCount *= findTypeNames.length;
            return parameterizedQualifiedTypeReference3;
        }
        return null;
    }

    private TypeReference convert(ParameterizedSingleTypeReference parameterizedSingleTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        if (parameterizedSingleTypeReference.resolvedType != null) {
            TypeReference[] typeReferenceArr = parameterizedSingleTypeReference.typeArguments;
            int length = typeReferenceArr.length;
            TypeReference[] typeReferenceArr2 = new TypeReference[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeReference convert = convert(typeReferenceArr[i10]);
                typeReferenceArr2[i10] = convert;
                if (convert == null) {
                    return null;
                }
            }
            if (parameterizedSingleTypeReference.resolvedType.isValidBinding()) {
                ParameterizedSingleTypeReference parameterizedSingleTypeReference2 = new ParameterizedSingleTypeReference(parameterizedSingleTypeReference.token, typeReferenceArr2, parameterizedSingleTypeReference.dimensions, 0L);
                parameterizedSingleTypeReference2.sourceStart = parameterizedSingleTypeReference.sourceStart;
                parameterizedSingleTypeReference2.sourceEnd = parameterizedSingleTypeReference.sourceEnd;
                return parameterizedSingleTypeReference2;
            }
            if ((parameterizedSingleTypeReference.resolvedType.problemId() & 1) == 0 || (findTypeNames = findTypeNames((typeName = parameterizedSingleTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
                return null;
            }
            int length2 = findTypeNames[0].length;
            TypeReference[][] typeReferenceArr3 = new TypeReference[length2];
            typeReferenceArr3[length2 - 1] = typeReferenceArr2;
            char[][] cArr = findTypeNames[0];
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference(cArr, typeReferenceArr3, parameterizedSingleTypeReference.dimensions, new long[cArr.length]);
            parameterizedQualifiedTypeReference.sourceStart = parameterizedSingleTypeReference.sourceStart;
            parameterizedQualifiedTypeReference.sourceEnd = parameterizedSingleTypeReference.sourceEnd;
            this.substituedTypes.put(parameterizedQualifiedTypeReference, findTypeNames);
            this.originalTypes.put(parameterizedQualifiedTypeReference, typeName);
            this.combinationsCount *= findTypeNames.length;
            return parameterizedQualifiedTypeReference;
        }
        return null;
    }

    private TypeReference convert(QualifiedTypeReference qualifiedTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        TypeBinding typeBinding = qualifiedTypeReference.resolvedType;
        if (typeBinding == null) {
            return null;
        }
        if (typeBinding.isValidBinding()) {
            QualifiedTypeReference qualifiedTypeReference2 = new QualifiedTypeReference(qualifiedTypeReference.tokens, qualifiedTypeReference.sourcePositions);
            qualifiedTypeReference2.sourceStart = qualifiedTypeReference.sourceStart;
            qualifiedTypeReference2.sourceEnd = qualifiedTypeReference.sourceEnd;
            return qualifiedTypeReference2;
        }
        if ((qualifiedTypeReference.resolvedType.problemId() & 1) == 0 || ((ReferenceBinding) qualifiedTypeReference.resolvedType).compoundName.length != 1 || (findTypeNames = findTypeNames((typeName = qualifiedTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
            return null;
        }
        char[][] cArr = findTypeNames[0];
        QualifiedTypeReference qualifiedTypeReference3 = new QualifiedTypeReference(cArr, new long[cArr.length]);
        qualifiedTypeReference3.sourceStart = qualifiedTypeReference.sourceStart;
        qualifiedTypeReference3.sourceEnd = (int) (qualifiedTypeReference.sourcePositions[0] & 4294967295L);
        this.substituedTypes.put(qualifiedTypeReference3, findTypeNames);
        this.originalTypes.put(qualifiedTypeReference3, typeName);
        this.combinationsCount *= findTypeNames.length;
        return qualifiedTypeReference3;
    }

    private TypeReference convert(SingleTypeReference singleTypeReference) {
        char[][] typeName;
        char[][][] findTypeNames;
        TypeBinding typeBinding = singleTypeReference.resolvedType;
        if (typeBinding == null) {
            return null;
        }
        if (typeBinding.isValidBinding()) {
            SingleTypeReference singleTypeReference2 = new SingleTypeReference(singleTypeReference.token, 0L);
            singleTypeReference2.sourceStart = singleTypeReference.sourceStart;
            singleTypeReference2.sourceEnd = singleTypeReference.sourceEnd;
            return singleTypeReference2;
        }
        if ((singleTypeReference.resolvedType.problemId() & 1) == 0 || (findTypeNames = findTypeNames((typeName = singleTypeReference.getTypeName()))) == null || findTypeNames.length == 0) {
            return null;
        }
        char[][] cArr = findTypeNames[0];
        QualifiedTypeReference qualifiedTypeReference = new QualifiedTypeReference(cArr, new long[cArr.length]);
        qualifiedTypeReference.sourceStart = singleTypeReference.sourceStart;
        qualifiedTypeReference.sourceEnd = singleTypeReference.sourceEnd;
        this.substituedTypes.put(qualifiedTypeReference, findTypeNames);
        this.originalTypes.put(qualifiedTypeReference, typeName);
        this.combinationsCount *= findTypeNames.length;
        return qualifiedTypeReference;
    }

    private TypeReference convert(TypeReference typeReference) {
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            return convert((ParameterizedSingleTypeReference) typeReference);
        }
        if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            return convert((ParameterizedQualifiedTypeReference) typeReference);
        }
        if (typeReference instanceof ArrayTypeReference) {
            return convert((ArrayTypeReference) typeReference);
        }
        if (typeReference instanceof ArrayQualifiedTypeReference) {
            return convert((ArrayQualifiedTypeReference) typeReference);
        }
        if (typeReference instanceof Wildcard) {
            return convert((Wildcard) typeReference);
        }
        if (typeReference instanceof SingleTypeReference) {
            return convert((SingleTypeReference) typeReference);
        }
        if (typeReference instanceof QualifiedTypeReference) {
            return convert((QualifiedTypeReference) typeReference);
        }
        return null;
    }

    private TypeReference convert(Wildcard wildcard) {
        TypeReference typeReference = wildcard.bound;
        TypeReference typeReference2 = null;
        if (typeReference != null) {
            TypeReference convert = convert(typeReference);
            if (convert == null) {
                return null;
            }
            typeReference2 = convert;
        }
        Wildcard wildcard2 = new Wildcard(wildcard.kind);
        wildcard2.bound = typeReference2;
        wildcard2.sourceStart = wildcard.sourceStart;
        wildcard2.sourceEnd = wildcard.sourceEnd;
        return wildcard2;
    }
}
