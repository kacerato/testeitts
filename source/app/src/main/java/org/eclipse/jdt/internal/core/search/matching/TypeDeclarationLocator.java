package org.eclipse.jdt.internal.core.search.matching;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;

public class TypeDeclarationLocator extends PatternLocator {
    protected TypeDeclarationPattern pattern;

    public TypeDeclarationLocator(TypeDeclarationPattern typeDeclarationPattern) {
        super(typeDeclarationPattern);
        this.pattern = typeDeclarationPattern;
    }

    private HashSet<String> getModuleGraph(String str, TypeDeclarationPattern typeDeclarationPattern, HashSet<String> hashSet) {
        hashSet.add(str);
        SearchPattern createPattern = SearchPattern.createPattern(str, 12, 0, typeDeclarationPattern.getMatchRule());
        if (createPattern == null) {
            return hashSet;
        }
        final HashSet hashSet2 = new HashSet();
        JavaSearchParticipant javaSearchParticipant = new JavaSearchParticipant() {
            private void addRequiredModules(MatchLocator matchLocator) {
                ModuleBinding moduleBinding;
                char[] cArr;
                HashMap<SearchMatch, Binding> hashMap = matchLocator.matchBinding;
                if (hashMap == null) {
                    return;
                }
                for (Binding binding : hashMap.values()) {
                    if ((binding instanceof ModuleBinding) && (cArr = (moduleBinding = (ModuleBinding) binding).moduleName) != null) {
                        hashSet2.add(new String(cArr));
                        for (ModuleBinding moduleBinding2 : moduleBinding.getAllRequiredModules()) {
                            char[] cArr2 = moduleBinding2.moduleName;
                            if (cArr2 != null && !CharOperation.equals(cArr2, CharOperation.NO_CHAR)) {
                                hashSet2.add(new String(cArr2));
                            }
                        }
                    }
                }
            }

            @Override
            public void locateMatches(SearchDocument[] searchDocumentArr, SearchPattern searchPattern, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException {
                MatchLocator matchLocator = new MatchLocator(searchPattern, searchRequestor, iJavaSearchScope, iProgressMonitor);
                if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                matchLocator.locateMatches(searchDocumentArr);
                addRequiredModules(matchLocator);
            }
        };
        try {
            new SearchEngine().search(createPattern, new SearchParticipant[]{javaSearchParticipant}, JavaModelManager.getJavaModelManager().getWorkspaceScope(), new SearchRequestor() {
                @Override
                public void acceptSearchMatch(SearchMatch searchMatch) throws CoreException {
                    System.out.println(searchMatch.toString());
                }
            }, (IProgressMonitor) null);
        } catch (CoreException unused) {
        }
        hashSet.addAll(hashSet2);
        return hashSet;
    }

    private char[][] getModuleList(TypeDeclarationPattern typeDeclarationPattern) {
        if (!typeDeclarationPattern.moduleGraph) {
            return typeDeclarationPattern.moduleNames;
        }
        char[][] cArr = typeDeclarationPattern.moduleGraphElements;
        if (cArr != null) {
            return cArr;
        }
        typeDeclarationPattern.moduleGraphElements = CharOperation.NO_CHAR_CHAR;
        List asList = Arrays.asList(CharOperation.toStrings(typeDeclarationPattern.moduleNames));
        int size = asList.size();
        HashSet<String> hashSet = new HashSet<>();
        for (int i10 = 0; i10 < size; i10++) {
            hashSet = getModuleGraph((String) asList.get(i10), typeDeclarationPattern, hashSet);
        }
        int size2 = hashSet.size();
        if (size2 > 0) {
            String[] strArr = (String[]) hashSet.toArray(new String[0]);
            char[][] cArr2 = new char[size2];
            for (int i11 = 0; i11 < size2; i11++) {
                cArr2[i11] = strArr[i11].toCharArray();
            }
            typeDeclarationPattern.moduleGraphElements = cArr2;
        }
        return typeDeclarationPattern.moduleGraphElements;
    }

    private int matchModule(TypeDeclarationPattern typeDeclarationPattern, TypeBinding typeBinding) {
        char[] cArr;
        if (!(typeBinding instanceof ReferenceBinding)) {
            return 1;
        }
        ModuleBinding module = ((ReferenceBinding) typeBinding).module();
        if (module == null || (cArr = module.moduleName) == null || typeDeclarationPattern.moduleNames == null) {
            return 2;
        }
        String str = new String(cArr);
        Pattern[] patternArr = typeDeclarationPattern.modulePatterns;
        if (patternArr == null) {
            for (char[] cArr2 : getModuleList(typeDeclarationPattern)) {
                int matchNameValue = matchNameValue(cArr2, module.moduleName);
                if (matchNameValue != 0) {
                    return matchNameValue;
                }
            }
        } else {
            for (Pattern pattern : patternArr) {
                if (pattern.matcher(str).matches()) {
                    return 3;
                }
            }
        }
        return 0;
    }

    @Override
    public int match(TypeDeclaration typeDeclaration, MatchingNodeSet matchingNodeSet) {
        char[] cArr = this.pattern.simpleName;
        if (cArr == null || matchesName(cArr, typeDeclaration.name)) {
            return matchingNodeSet.addMatch(typeDeclaration, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        if (aSTNode instanceof TypeDeclaration) {
            return resolveLevel(((TypeDeclaration) aSTNode).binding);
        }
        return 0;
    }

    public int resolveLevelForType(char[] cArr, char[] cArr2, char[] cArr3, TypeBinding typeBinding) {
        if (cArr3 == null) {
            return resolveLevelForType(cArr, cArr2, typeBinding);
        }
        if (cArr2 == null) {
            return resolveLevelForType(cArr, cArr3, typeBinding);
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            return 0;
        }
        char[] concat = CharOperation.concat(cArr2, cArr3, '.');
        if (CharOperation.equals(this.pattern.pkg, CharOperation.concatWith(typeBinding.getPackage().compoundName, '.'))) {
            return resolveLevelForType(cArr, concat, typeBinding);
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof TypeBinding)) {
            return 0;
        }
        TypeBinding typeBinding = (TypeBinding) binding;
        char c10 = this.pattern.typeSuffix;
        if (c10 != 'A') {
            if (c10 != 'C') {
                if (c10 != 'E') {
                    if (c10 != 'I') {
                        switch (c10) {
                            case '\t':
                                if (!typeBinding.isClass() && !typeBinding.isEnum()) {
                                    return 0;
                                }
                                break;
                            case '\n':
                                if (!typeBinding.isClass() && (!typeBinding.isInterface() || typeBinding.isAnnotationType())) {
                                    return 0;
                                }
                                break;
                            case 11:
                                if (!typeBinding.isInterface() && !typeBinding.isAnnotationType()) {
                                    return 0;
                                }
                                break;
                        }
                    } else if (!typeBinding.isInterface() || typeBinding.isAnnotationType()) {
                        return 0;
                    }
                } else if (!typeBinding.isEnum()) {
                    return 0;
                }
            } else if (!typeBinding.isClass()) {
                return 0;
            }
        } else if (!typeBinding.isAnnotationType()) {
            return 0;
        }
        if (matchModule(this.pattern, typeBinding) == 0) {
            return 0;
        }
        TypeDeclarationPattern typeDeclarationPattern = this.pattern;
        if (typeDeclarationPattern instanceof QualifiedTypeDeclarationPattern) {
            QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = (QualifiedTypeDeclarationPattern) typeDeclarationPattern;
            return resolveLevelForType(qualifiedTypeDeclarationPattern.simpleName, qualifiedTypeDeclarationPattern.qualification, typeBinding);
        }
        char[][] cArr = typeDeclarationPattern.enclosingTypeNames;
        char[] concatWith = cArr == null ? null : CharOperation.concatWith(cArr, '.');
        TypeDeclarationPattern typeDeclarationPattern2 = this.pattern;
        return resolveLevelForType(typeDeclarationPattern2.simpleName, typeDeclarationPattern2.pkg, concatWith, typeBinding);
    }
}
