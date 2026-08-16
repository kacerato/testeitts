package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.MethodNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.search.MethodNameRequestorWrapper;
import org.eclipse.jdt.internal.core.search.TypeNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.search.TypeNameRequestorWrapper;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfAccessedFieldsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedMethodsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedTypesPattern;

public class SearchEngine {
    private BasicSearchEngine basicEngine;

    public static class ResultCollectorAdapter extends SearchRequestor {
        IJavaSearchResultCollector resultCollector;

        public ResultCollectorAdapter(IJavaSearchResultCollector iJavaSearchResultCollector) {
            this.resultCollector = iJavaSearchResultCollector;
        }

        @Override
        public void acceptSearchMatch(SearchMatch searchMatch) throws CoreException {
            this.resultCollector.accept(searchMatch.getResource(), searchMatch.getOffset(), searchMatch.getOffset() + searchMatch.getLength(), (IJavaElement) searchMatch.getElement(), searchMatch.getAccuracy());
        }

        @Override
        public void beginReporting() {
            this.resultCollector.aboutToStart();
        }

        @Override
        public void endReporting() {
            this.resultCollector.done();
        }
    }

    public static class SearchPatternAdapter implements ISearchPattern {
        SearchPattern pattern;

        public SearchPatternAdapter(SearchPattern searchPattern) {
            this.pattern = searchPattern;
        }
    }

    public static class TypeNameRequestorAdapter implements IRestrictedAccessTypeRequestor {
        ITypeNameRequestor nameRequestor;

        public TypeNameRequestorAdapter(ITypeNameRequestor iTypeNameRequestor) {
            this.nameRequestor = iTypeNameRequestor;
        }

        @Override
        public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
            if (Flags.isInterface(i10)) {
                this.nameRequestor.acceptInterface(cArr, cArr2, cArr3, str);
            } else {
                this.nameRequestor.acceptClass(cArr, cArr2, cArr3, str);
            }
        }
    }

    public SearchEngine() {
        this.basicEngine = new BasicSearchEngine();
    }

    public static IJavaSearchScope createHierarchyScope(IType iType) throws JavaModelException {
        return BasicSearchEngine.createHierarchyScope(iType);
    }

    public static IJavaSearchScope createJavaSearchScope(IResource[] iResourceArr) {
        int length = iResourceArr.length;
        IJavaElement[] iJavaElementArr = new IJavaElement[length];
        for (int i10 = 0; i10 < length; i10++) {
            iJavaElementArr[i10] = JavaCore.create(iResourceArr[i10]);
        }
        return createJavaSearchScope(iJavaElementArr);
    }

    public static MethodNameMatch createMethodNameMatch(IMethod iMethod, int i10) {
        return BasicSearchEngine.createMethodNameMatch(iMethod, i10);
    }

    public static ISearchPattern createOrSearchPattern(ISearchPattern iSearchPattern, ISearchPattern iSearchPattern2) {
        return new SearchPatternAdapter(SearchPattern.createOrPattern(((SearchPatternAdapter) iSearchPattern).pattern, ((SearchPatternAdapter) iSearchPattern2).pattern));
    }

    public static ISearchPattern createSearchPattern(String str, int i10, int i11, boolean z10) {
        int i12 = (str.indexOf(42) == -1 && str.indexOf(63) == -1) ? 0 : 2;
        if (z10) {
            i12 |= 8;
        }
        return new SearchPatternAdapter(SearchPattern.createPattern(str, i10, i11, i12));
    }

    public static IJavaSearchScope createStrictHierarchyScope(IJavaProject iJavaProject, IType iType, boolean z10, boolean z11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return BasicSearchEngine.createStrictHierarchyScope(iJavaProject, iType, z10, z11, workingCopyOwner);
    }

    public static TypeNameMatch createTypeNameMatch(IType iType, int i10) {
        return BasicSearchEngine.createTypeNameMatch(iType, i10);
    }

    public static IJavaSearchScope createWorkspaceScope() {
        return BasicSearchEngine.createWorkspaceScope();
    }

    public static SearchParticipant getDefaultSearchParticipant() {
        return BasicSearchEngine.getDefaultSearchParticipant();
    }

    public void search(IWorkspace iWorkspace, String str, int i10, int i11, IJavaSearchScope iJavaSearchScope, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        int i12;
        try {
            if (str.indexOf(42) == -1 && str.indexOf(63) == -1) {
                i12 = 0;
                search(SearchPattern.createPattern(str, i10, i11, i12 | 8), new SearchParticipant[]{getDefaultSearchParticipant()}, iJavaSearchScope, new ResultCollectorAdapter(iJavaSearchResultCollector), iJavaSearchResultCollector.getProgressMonitor());
            }
            i12 = 2;
            search(SearchPattern.createPattern(str, i10, i11, i12 | 8), new SearchParticipant[]{getDefaultSearchParticipant()}, iJavaSearchScope, new ResultCollectorAdapter(iJavaSearchResultCollector), iJavaSearchResultCollector.getProgressMonitor());
        } catch (CoreException e10) {
            if (e10 instanceof JavaModelException) {
                throw ((JavaModelException) e10);
            }
            throw new JavaModelException(e10);
        }
    }

    public void searchAllMethodNames(char[] cArr, int i10, char[] cArr2, int i11, char[] cArr3, int i12, char[] cArr4, int i13, IJavaSearchScope iJavaSearchScope, MethodNameRequestor methodNameRequestor, int i14, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllMethodNames(cArr, i10, cArr2, i11, cArr3, i12, cArr4, i13, iJavaSearchScope, new MethodNameRequestorWrapper(methodNameRequestor), i14, iProgressMonitor);
    }

    public void searchAllTypeNames(char[] cArr, char[] cArr2, int i10, int i11, IJavaSearchScope iJavaSearchScope, TypeNameRequestor typeNameRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        searchAllTypeNames(cArr, 0, cArr2, i10, i11, iJavaSearchScope, typeNameRequestor, i12, iProgressMonitor);
    }

    public void searchDeclarationsOfAccessedFields(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfAccessedFields(iJavaElement, searchRequestor, iProgressMonitor);
    }

    public void searchDeclarationsOfReferencedTypes(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfReferencedTypes(iJavaElement, searchRequestor, iProgressMonitor);
    }

    public void searchDeclarationsOfSentMessages(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfSentMessages(iJavaElement, searchRequestor, iProgressMonitor);
    }

    public static IJavaSearchScope createHierarchyScope(IType iType, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return BasicSearchEngine.createHierarchyScope(iType, workingCopyOwner);
    }

    public void searchAllTypeNames(char[] cArr, int i10, char[] cArr2, int i11, int i12, IJavaSearchScope iJavaSearchScope, TypeNameRequestor typeNameRequestor, int i13, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllTypeNames(cArr, i10, cArr2, i11, i12, iJavaSearchScope, new TypeNameRequestorWrapper(typeNameRequestor), i13, iProgressMonitor);
    }

    public void searchDeclarationsOfAccessedFields(IWorkspace iWorkspace, IJavaElement iJavaElement, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        this.basicEngine.searchDeclarations(iJavaElement, new ResultCollectorAdapter(iJavaSearchResultCollector), new DeclarationOfAccessedFieldsPattern(iJavaElement), iJavaSearchResultCollector.getProgressMonitor());
    }

    public void searchDeclarationsOfReferencedTypes(IWorkspace iWorkspace, IJavaElement iJavaElement, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        this.basicEngine.searchDeclarations(iJavaElement, new ResultCollectorAdapter(iJavaSearchResultCollector), new DeclarationOfReferencedTypesPattern(iJavaElement), iJavaSearchResultCollector.getProgressMonitor());
    }

    public void searchDeclarationsOfSentMessages(IWorkspace iWorkspace, IJavaElement iJavaElement, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        this.basicEngine.searchDeclarations(iJavaElement, new ResultCollectorAdapter(iJavaSearchResultCollector), new DeclarationOfReferencedMethodsPattern(iJavaElement), iJavaSearchResultCollector.getProgressMonitor());
    }

    public SearchEngine(ICompilationUnit[] iCompilationUnitArr) {
        this.basicEngine = new BasicSearchEngine(iCompilationUnitArr);
    }

    public static ISearchPattern createSearchPattern(IJavaElement iJavaElement, int i10) {
        return new SearchPatternAdapter(SearchPattern.createPattern(iJavaElement, i10));
    }

    public void searchAllMethodNames(char[] cArr, int i10, char[] cArr2, int i11, char[] cArr3, int i12, char[] cArr4, int i13, IJavaSearchScope iJavaSearchScope, MethodNameMatchRequestor methodNameMatchRequestor, int i14, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllMethodNames(cArr, i10, cArr2, i11, cArr3, i12, cArr4, i13, iJavaSearchScope, new MethodNameMatchRequestorWrapper(methodNameMatchRequestor, iJavaSearchScope), i14, iProgressMonitor);
    }

    public void searchAllTypeNames(char[] cArr, int i10, char[] cArr2, int i11, int i12, IJavaSearchScope iJavaSearchScope, TypeNameMatchRequestor typeNameMatchRequestor, int i13, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllTypeNames(cArr, i10, cArr2, i11, i12, iJavaSearchScope, new TypeNameMatchRequestorWrapper(typeNameMatchRequestor, iJavaSearchScope), i13, iProgressMonitor);
    }

    public SearchEngine(IWorkingCopy[] iWorkingCopyArr) {
        int length = iWorkingCopyArr.length;
        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[length];
        System.arraycopy(iWorkingCopyArr, 0, iCompilationUnitArr, 0, length);
        this.basicEngine = new BasicSearchEngine(iCompilationUnitArr);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr) {
        return BasicSearchEngine.createJavaSearchScope(iJavaElementArr);
    }

    public void searchAllMethodNames(char[] cArr, int i10, char[] cArr2, int i11, IJavaSearchScope iJavaSearchScope, MethodNameRequestor methodNameRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllMethodNames(cArr, i10, cArr2, i11, iJavaSearchScope, new MethodNameRequestorWrapper(methodNameRequestor), i12, iProgressMonitor);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr, boolean z10) {
        return BasicSearchEngine.createJavaSearchScope(iJavaElementArr, z10);
    }

    public void searchAllTypeNames(char[][] cArr, char[][] cArr2, IJavaSearchScope iJavaSearchScope, TypeNameRequestor typeNameRequestor, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllTypeNames(cArr, cArr2, 8, 0, iJavaSearchScope, new TypeNameRequestorWrapper(typeNameRequestor), i10, iProgressMonitor);
    }

    public static IJavaSearchScope createJavaSearchScope(boolean z10, IJavaElement[] iJavaElementArr, boolean z11) {
        return BasicSearchEngine.createJavaSearchScope(z10, iJavaElementArr, z11);
    }

    public void searchAllMethodNames(char[] cArr, int i10, char[] cArr2, int i11, IJavaSearchScope iJavaSearchScope, MethodNameMatchRequestor methodNameMatchRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllMethodNames(cArr, i10, cArr2, i11, iJavaSearchScope, new MethodNameMatchRequestorWrapper(methodNameMatchRequestor, iJavaSearchScope), i12, iProgressMonitor);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr, int i10) {
        return BasicSearchEngine.createJavaSearchScope(iJavaElementArr, i10);
    }

    public void searchAllTypeNames(char[][] cArr, char[][] cArr2, IJavaSearchScope iJavaSearchScope, TypeNameMatchRequestor typeNameMatchRequestor, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllTypeNames(cArr, cArr2, 8, 0, iJavaSearchScope, new TypeNameMatchRequestorWrapper(typeNameMatchRequestor, iJavaSearchScope), i10, iProgressMonitor);
    }

    public static IJavaSearchScope createJavaSearchScope(boolean z10, IJavaElement[] iJavaElementArr, int i10) {
        return BasicSearchEngine.createJavaSearchScope(z10, iJavaElementArr, i10);
    }

    public SearchEngine(WorkingCopyOwner workingCopyOwner) {
        this.basicEngine = new BasicSearchEngine(workingCopyOwner);
    }

    public void search(IWorkspace iWorkspace, IJavaElement iJavaElement, int i10, IJavaSearchScope iJavaSearchScope, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        search(iWorkspace, createSearchPattern(iJavaElement, i10), iJavaSearchScope, iJavaSearchResultCollector);
    }

    public void searchAllTypeNames(char[] cArr, char[] cArr2, int i10, int i11, IJavaSearchScope iJavaSearchScope, ITypeNameRequestor iTypeNameRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.basicEngine.searchAllTypeNames(cArr, 0, cArr2, i10, i11, iJavaSearchScope, new TypeNameRequestorAdapter(iTypeNameRequestor), i12, iProgressMonitor);
    }

    public void search(IWorkspace iWorkspace, ISearchPattern iSearchPattern, IJavaSearchScope iJavaSearchScope, IJavaSearchResultCollector iJavaSearchResultCollector) throws JavaModelException {
        try {
            search(((SearchPatternAdapter) iSearchPattern).pattern, new SearchParticipant[]{getDefaultSearchParticipant()}, iJavaSearchScope, new ResultCollectorAdapter(iJavaSearchResultCollector), iJavaSearchResultCollector.getProgressMonitor());
        } catch (CoreException e10) {
            if (e10 instanceof JavaModelException) {
                throw ((JavaModelException) e10);
            }
            throw new JavaModelException(e10);
        }
    }

    public void searchAllTypeNames(IWorkspace iWorkspace, char[] cArr, char[] cArr2, int i10, boolean z10, int i11, IJavaSearchScope iJavaSearchScope, ITypeNameRequestor iTypeNameRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        searchAllTypeNames(cArr, cArr2, z10 ? i10 | 8 : i10, i11, iJavaSearchScope, iTypeNameRequestor, i12, iProgressMonitor);
    }

    public void search(SearchPattern searchPattern, SearchParticipant[] searchParticipantArr, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException {
        this.basicEngine.search(searchPattern, searchParticipantArr, iJavaSearchScope, searchRequestor, iProgressMonitor);
    }
}
