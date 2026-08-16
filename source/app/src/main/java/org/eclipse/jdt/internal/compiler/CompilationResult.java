package org.eclipse.jdt.internal.compiler;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CompilationResult {
    private static final int[] EMPTY_LINE_ENDS = Util.EMPTY_INT_ARRAY;
    private static final Comparator PROBLEM_COMPARATOR = new Comparator() {
        @Override
        public int compare(Object obj, Object obj2) {
            return ((CategorizedProblem) obj).getSourceStart() - ((CategorizedProblem) obj2).getSourceStart();
        }
    };
    public ICompilationUnit compilationUnit;
    public char[] fileName;
    private Set firstErrors;
    private boolean hasMandatoryErrors;
    public int[] lineSeparatorPositions;
    private int maxProblemPerUnit;
    private int numberOfErrors;
    public char[][] packageName;
    public int problemCount;
    public CategorizedProblem[] problems;
    private Map<CategorizedProblem, ReferenceContext> problemsMap;
    public char[][][] qualifiedReferences;
    public RecoveryScannerData recoveryScannerData;
    public char[][] rootReferences;
    public char[][] simpleNameReferences;
    public int taskCount;
    public CategorizedProblem[] tasks;
    public int totalUnitsKnown;
    public int unitIndex;
    public boolean hasAnnotations = false;
    public boolean hasFunctionalTypes = false;
    public Map compiledTypes = new Hashtable(11);
    public boolean hasBeenAccepted = false;
    public boolean hasInconsistentToplevelHierarchies = false;
    public boolean hasSyntaxError = false;
    public boolean checkSecondaryTypes = false;

    public CompilationResult(char[] cArr, int i10, int i11, int i12) {
        this.fileName = cArr;
        this.unitIndex = i10;
        this.totalUnitsKnown = i11;
        this.maxProblemPerUnit = i12;
    }

    private int computePriority(CategorizedProblem categorizedProblem) {
        int sourceLineNumber = 10000 - categorizedProblem.getSourceLineNumber();
        if (sourceLineNumber < 0) {
            sourceLineNumber = 0;
        }
        if (categorizedProblem.isError()) {
            sourceLineNumber += 100000;
        }
        Map<CategorizedProblem, ReferenceContext> map = this.problemsMap;
        ReferenceContext referenceContext = map == null ? null : map.get(categorizedProblem);
        if (referenceContext == null) {
            return sourceLineNumber + 40000;
        }
        if (!(referenceContext instanceof AbstractMethodDeclaration)) {
            sourceLineNumber += 40000;
        } else if (((AbstractMethodDeclaration) referenceContext).isStatic()) {
            sourceLineNumber += 10000;
        }
        return this.firstErrors.contains(categorizedProblem) ? sourceLineNumber + 20000 : sourceLineNumber;
    }

    private void quickPrioritize(CategorizedProblem[] categorizedProblemArr, int i10, int i11) {
        if (i10 >= i11) {
            return;
        }
        int computePriority = computePriority(categorizedProblemArr[((i11 - i10) / 2) + i10]);
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (computePriority(categorizedProblemArr[i13]) >= computePriority) {
                while (computePriority < computePriority(categorizedProblemArr[i12])) {
                    i12++;
                }
                if (i12 <= i13) {
                    CategorizedProblem categorizedProblem = categorizedProblemArr[i12];
                    categorizedProblemArr[i12] = categorizedProblemArr[i13];
                    categorizedProblemArr[i13] = categorizedProblem;
                    i12++;
                    i13--;
                }
                if (i12 > i13) {
                    break;
                }
            } else {
                i13--;
            }
        }
        if (i10 < i13) {
            quickPrioritize(categorizedProblemArr, i10, i13);
        }
        if (i12 < i11) {
            quickPrioritize(categorizedProblemArr, i12, i11);
        }
    }

    private void recordTask(CategorizedProblem categorizedProblem) {
        int i10 = this.taskCount;
        if (i10 == 0) {
            this.tasks = new CategorizedProblem[5];
        } else {
            CategorizedProblem[] categorizedProblemArr = this.tasks;
            if (i10 == categorizedProblemArr.length) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i10 * 2];
                this.tasks = categorizedProblemArr2;
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i10);
            }
        }
        CategorizedProblem[] categorizedProblemArr3 = this.tasks;
        int i11 = this.taskCount;
        this.taskCount = i11 + 1;
        categorizedProblemArr3[i11] = categorizedProblem;
    }

    public CategorizedProblem[] getAllProblems() {
        CategorizedProblem[] problems = getProblems();
        int i10 = 0;
        int length = problems != null ? problems.length : 0;
        CategorizedProblem[] tasks = getTasks();
        int length2 = tasks != null ? tasks.length : 0;
        if (length2 == 0) {
            return problems;
        }
        if (length == 0) {
            return tasks;
        }
        int i11 = length + length2;
        CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[i11];
        int i12 = 0;
        int i13 = 0;
        while (i10 + i12 < i11) {
            CategorizedProblem categorizedProblem = null;
            CategorizedProblem categorizedProblem2 = i10 < length2 ? tasks[i10] : null;
            CategorizedProblem categorizedProblem3 = i12 < length ? problems[i12] : null;
            if (categorizedProblem3 != null) {
                if (categorizedProblem2 == null || categorizedProblem3.getSourceStart() < categorizedProblem2.getSourceStart()) {
                    i12++;
                    categorizedProblem = categorizedProblem3;
                    categorizedProblemArr[i13] = categorizedProblem;
                    i13++;
                }
                i10++;
                categorizedProblem = categorizedProblem2;
                categorizedProblemArr[i13] = categorizedProblem;
                i13++;
            } else {
                if (categorizedProblem2 == null) {
                    categorizedProblemArr[i13] = categorizedProblem;
                    i13++;
                }
                i10++;
                categorizedProblem = categorizedProblem2;
                categorizedProblemArr[i13] = categorizedProblem;
                i13++;
            }
        }
        return categorizedProblemArr;
    }

    public CategorizedProblem[] getCUProblems() {
        int i10;
        int i11;
        int i12;
        if (this.problems != null) {
            CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[this.problemCount];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                i10 = this.problemCount;
                if (i13 >= i10) {
                    break;
                }
                CategorizedProblem categorizedProblem = this.problems[i13];
                if (categorizedProblem.getID() != 536871825) {
                    i12 = i14 + 1;
                    categorizedProblemArr[i14] = categorizedProblem;
                } else {
                    ICompilationUnit iCompilationUnit = this.compilationUnit;
                    if (iCompilationUnit != null && CharOperation.equals(iCompilationUnit.getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME)) {
                        i12 = i14 + 1;
                        categorizedProblemArr[i14] = categorizedProblem;
                    }
                    i13++;
                }
                i14 = i12;
                i13++;
            }
            if (i14 < i10) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i14];
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i14);
                this.problemCount = i14;
                categorizedProblemArr = categorizedProblemArr2;
            }
            this.problems = categorizedProblemArr;
            int i15 = this.maxProblemPerUnit;
            if (i15 > 0 && (i11 = this.problemCount) > i15) {
                quickPrioritize(categorizedProblemArr, 0, i11 - 1);
                int i16 = this.maxProblemPerUnit;
                this.problemCount = i16;
                CategorizedProblem[] categorizedProblemArr3 = this.problems;
                CategorizedProblem[] categorizedProblemArr4 = new CategorizedProblem[i16];
                this.problems = categorizedProblemArr4;
                System.arraycopy(categorizedProblemArr3, 0, categorizedProblemArr4, 0, i16);
            }
            CategorizedProblem[] categorizedProblemArr5 = this.problems;
            Arrays.sort(categorizedProblemArr5, 0, categorizedProblemArr5.length, PROBLEM_COMPARATOR);
        }
        return this.problems;
    }

    public ClassFile[] getClassFiles() {
        ClassFile[] classFileArr = new ClassFile[this.compiledTypes.size()];
        this.compiledTypes.values().toArray(classFileArr);
        return classFileArr;
    }

    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public ReferenceContext getContext(CategorizedProblem categorizedProblem) {
        if (categorizedProblem != null) {
            return this.problemsMap.get(categorizedProblem);
        }
        return null;
    }

    public CategorizedProblem[] getErrors() {
        int i10;
        CategorizedProblem[] problems = getProblems();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.problemCount;
            if (i11 >= i10) {
                break;
            }
            if (problems[i11].isError()) {
                i12++;
            }
            i11++;
        }
        if (i12 == i10) {
            return problems;
        }
        CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < this.problemCount; i14++) {
            if (problems[i14].isError()) {
                categorizedProblemArr[i13] = problems[i14];
                i13++;
            }
        }
        return categorizedProblemArr;
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public int[] getLineSeparatorPositions() {
        int[] iArr = this.lineSeparatorPositions;
        return iArr == null ? EMPTY_LINE_ENDS : iArr;
    }

    public CategorizedProblem[] getProblems() {
        int i10;
        CategorizedProblem[] categorizedProblemArr = this.problems;
        if (categorizedProblemArr != null) {
            int i11 = this.problemCount;
            if (i11 != categorizedProblemArr.length) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i11];
                this.problems = categorizedProblemArr2;
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i11);
            }
            int i12 = this.maxProblemPerUnit;
            if (i12 > 0 && (i10 = this.problemCount) > i12) {
                quickPrioritize(this.problems, 0, i10 - 1);
                int i13 = this.maxProblemPerUnit;
                this.problemCount = i13;
                CategorizedProblem[] categorizedProblemArr3 = this.problems;
                CategorizedProblem[] categorizedProblemArr4 = new CategorizedProblem[i13];
                this.problems = categorizedProblemArr4;
                System.arraycopy(categorizedProblemArr3, 0, categorizedProblemArr4, 0, i13);
            }
            CategorizedProblem[] categorizedProblemArr5 = this.problems;
            Arrays.sort(categorizedProblemArr5, 0, categorizedProblemArr5.length, PROBLEM_COMPARATOR);
        }
        return this.problems;
    }

    public CategorizedProblem[] getTasks() {
        CategorizedProblem[] categorizedProblemArr = this.tasks;
        if (categorizedProblemArr != null) {
            int i10 = this.taskCount;
            if (i10 != categorizedProblemArr.length) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i10];
                this.tasks = categorizedProblemArr2;
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i10);
            }
            CategorizedProblem[] categorizedProblemArr3 = this.tasks;
            Arrays.sort(categorizedProblemArr3, 0, categorizedProblemArr3.length, PROBLEM_COMPARATOR);
        }
        return this.tasks;
    }

    public boolean hasErrors() {
        return this.numberOfErrors != 0;
    }

    public boolean hasMandatoryErrors() {
        return this.hasMandatoryErrors;
    }

    public boolean hasProblems() {
        return this.problemCount != 0;
    }

    public boolean hasTasks() {
        return this.taskCount != 0;
    }

    public boolean hasWarnings() {
        if (this.problems != null) {
            for (int i10 = 0; i10 < this.problemCount; i10++) {
                if (this.problems[i10].isWarning()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void record(CategorizedProblem categorizedProblem, ReferenceContext referenceContext) {
        record(categorizedProblem, referenceContext, true);
    }

    public void recordPackageName(char[][] cArr) {
        this.packageName = cArr;
    }

    public void removeProblem(CategorizedProblem categorizedProblem) {
        Map<CategorizedProblem, ReferenceContext> map = this.problemsMap;
        if (map != null) {
            map.remove(categorizedProblem);
        }
        Set set = this.firstErrors;
        if (set != null) {
            set.remove(categorizedProblem);
        }
        if (categorizedProblem.isError()) {
            this.numberOfErrors--;
        }
        this.problemCount--;
    }

    public CompilationResult tagAsAccepted() {
        this.hasBeenAccepted = true;
        this.problemsMap = null;
        this.firstErrors = null;
        return this;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.fileName != null) {
            stringBuffer.append("Filename : ");
            stringBuffer.append(this.fileName);
            stringBuffer.append('\n');
        }
        if (this.compiledTypes != null) {
            stringBuffer.append("COMPILED type(s)\t\n");
            for (char[] cArr : this.compiledTypes.o()) {
                stringBuffer.append("\t - ");
                stringBuffer.append(cArr);
                stringBuffer.append('\n');
            }
        } else {
            stringBuffer.append("No COMPILED type\n");
        }
        if (this.problems != null) {
            stringBuffer.append(this.problemCount);
            stringBuffer.append(" PROBLEM(s) detected \n");
            for (int i10 = 0; i10 < this.problemCount; i10++) {
                stringBuffer.append("\t - ");
                stringBuffer.append((Object) this.problems[i10]);
                stringBuffer.append('\n');
            }
        } else {
            stringBuffer.append("No PROBLEM\n");
        }
        return stringBuffer.toString();
    }

    public void record(CategorizedProblem categorizedProblem, ReferenceContext referenceContext, boolean z10) {
        if (categorizedProblem.getID() == 536871362) {
            recordTask(categorizedProblem);
            return;
        }
        int i10 = this.problemCount;
        if (i10 == 0) {
            this.problems = new CategorizedProblem[5];
        } else {
            CategorizedProblem[] categorizedProblemArr = this.problems;
            if (i10 == categorizedProblemArr.length) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i10 * 2];
                this.problems = categorizedProblemArr2;
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i10);
            }
        }
        CategorizedProblem[] categorizedProblemArr3 = this.problems;
        int i11 = this.problemCount;
        this.problemCount = i11 + 1;
        categorizedProblemArr3[i11] = categorizedProblem;
        if (referenceContext != null) {
            if (this.problemsMap == null) {
                this.problemsMap = new HashMap(5);
            }
            if (this.firstErrors == null) {
                this.firstErrors = new HashSet(5);
            }
            if (categorizedProblem.isError() && !referenceContext.hasErrors()) {
                this.firstErrors.add(categorizedProblem);
            }
            this.problemsMap.put(categorizedProblem, referenceContext);
        }
        if (categorizedProblem.isError()) {
            this.numberOfErrors++;
            if (z10) {
                this.hasMandatoryErrors = true;
            }
            if ((categorizedProblem.getID() & 1073741824) != 0) {
                this.hasSyntaxError = true;
            }
        }
    }

    public CompilationResult(ICompilationUnit iCompilationUnit, int i10, int i11, int i12) {
        this.fileName = iCompilationUnit.getFileName();
        this.compilationUnit = iCompilationUnit;
        this.unitIndex = i10;
        this.totalUnitsKnown = i11;
        this.maxProblemPerUnit = i12;
    }

    public void record(char[] cArr, ClassFile classFile) {
        SourceTypeBinding sourceTypeBinding = classFile.referenceBinding;
        if (sourceTypeBinding != null && !sourceTypeBinding.isLocalType() && sourceTypeBinding.isHierarchyInconsistent()) {
            this.hasInconsistentToplevelHierarchies = true;
        }
        this.compiledTypes.put(cArr, classFile);
    }
}
