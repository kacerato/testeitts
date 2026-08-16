package org.eclipse.jdt.internal.core.util;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class CommentRecorderParser extends Parser {
    protected static final int CommentIncrement = 100;
    int commentPtr;
    int[] commentStarts;
    int[] commentStops;

    public CommentRecorderParser(ProblemReporter problemReporter, boolean z10) {
        super(problemReporter, z10);
        this.commentStops = new int[10];
        this.commentStarts = new int[10];
        this.commentPtr = -1;
    }

    private void pushOnCommentsStack(int i10, int i11) {
        int i12;
        while (i10 <= i11) {
            Scanner scanner = this.scanner;
            if (scanner.commentPtr < i10) {
                return;
            }
            int i13 = scanner.commentStarts[i10];
            if (i13 < 0) {
                i13 = -i13;
            }
            int i14 = this.commentPtr;
            if (i14 == -1) {
                i12 = -1;
            } else {
                i12 = this.commentStarts[i14];
                if (i12 < 0) {
                    i12 = -i12;
                }
            }
            if (i12 == -1 || i13 > i12) {
                int[] iArr = this.commentStarts;
                int length = iArr.length;
                int i15 = i14 + 1;
                this.commentPtr = i15;
                if (i15 >= length) {
                    int i16 = length + 100;
                    int[] iArr2 = new int[i16];
                    this.commentStarts = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                    int[] iArr3 = this.commentStops;
                    int[] iArr4 = new int[i16];
                    this.commentStops = iArr4;
                    System.arraycopy(iArr3, 0, iArr4, 0, length);
                }
                int[] iArr5 = this.commentStarts;
                int i17 = this.commentPtr;
                Scanner scanner2 = this.scanner;
                iArr5[i17] = scanner2.commentStarts[i10];
                this.commentStops[i17] = scanner2.commentStops[i10];
            }
            i10++;
        }
    }

    @Override
    public void checkComment() {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        if ((!this.diet || this.dietInt != 0) && this.scanner.commentPtr >= 0) {
            flushCommentsDefinedPriorTo(this.endStatementPosition);
        }
        int i12 = this.scanner.commentPtr;
        while (true) {
            if (i12 < 0) {
                z11 = false;
                break;
            }
            Scanner scanner = this.scanner;
            int i13 = scanner.commentStarts[i12];
            if (i13 < 0 || (((i10 = this.modifiersSourceStart) != -1 && i10 < i13) || (i11 = scanner.commentStops[i12]) < 0)) {
                i12--;
            } else {
                z11 = true;
                int i14 = i11 - 1;
                JavadocParser javadocParser = this.javadocParser;
                if (javadocParser.shouldReportProblems) {
                    javadocParser.reportProblems = this.currentElement == null || i14 > this.lastJavadocEnd;
                } else {
                    javadocParser.reportProblems = false;
                }
                z10 = javadocParser.checkDeprecation(i12);
                this.javadoc = this.javadocParser.docComment;
                if (this.currentElement == null) {
                    this.lastJavadocEnd = i14;
                }
            }
        }
        if (z10) {
            checkAndSetModifiers(1048576);
        }
        if (i12 < 0 || !z11) {
            return;
        }
        int i15 = this.scanner.commentStarts[i12];
        if (i15 < 0) {
            i15 = -i15;
        }
        int i16 = this.forStartPosition;
        if (i16 == 0 || i16 < i15) {
            this.modifiersSourceStart = i15;
        }
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeader() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeAnnotationTypeDeclarationHeader();
    }

    @Override
    public void consumeClassHeader() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeClassHeader();
    }

    @Override
    public void consumeEmptyTypeDeclaration() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeEmptyTypeDeclaration();
    }

    @Override
    public void consumeEnterAnonymousClassBody(boolean z10) {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeEnterAnonymousClassBody(z10);
    }

    @Override
    public void consumeEnumHeader() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeEnumHeader();
    }

    @Override
    public void consumeInterfaceHeader() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeInterfaceHeader();
    }

    @Override
    public CompilationUnitDeclaration endParse(int i10) {
        CompilationUnitDeclaration endParse = super.endParse(i10);
        if (endParse.comments == null) {
            pushOnCommentsStack(0, this.scanner.commentPtr);
            endParse.comments = getCommentsPositions();
        }
        return endParse;
    }

    @Override
    public int flushCommentsDefinedPriorTo(int i10) {
        int commentPtr = getCommentPtr();
        if (commentPtr < 0) {
            return i10;
        }
        int i11 = commentPtr;
        int i12 = 0;
        while (i11 >= 0) {
            int i13 = this.scanner.commentStops[i11];
            if (i13 < 0) {
                i13 = -i13;
            }
            if (i13 <= i10) {
                break;
            }
            i11--;
            i12++;
        }
        if (i12 > 0) {
            while (i11 < commentPtr) {
                Scanner scanner = this.scanner;
                int i14 = i11 + 1;
                int i15 = -scanner.commentStops[i14];
                if (i15 <= 0) {
                    break;
                }
                int i16 = i15 - 1;
                int lineNumber = org.eclipse.jdt.internal.compiler.util.Util.getLineNumber(i10, scanner.lineEnds, 0, scanner.linePtr);
                Scanner scanner2 = this.scanner;
                if (lineNumber != org.eclipse.jdt.internal.compiler.util.Util.getLineNumber(i16, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    break;
                }
                i12--;
                i10 = i16;
                i11 = i14;
            }
        }
        if (i11 < 0) {
            return i10;
        }
        pushOnCommentsStack(0, i11);
        if (i12 != 0) {
            if (i12 == 1) {
                Scanner scanner3 = this.scanner;
                int[] iArr = scanner3.commentStarts;
                int i17 = i11 + 1;
                iArr[0] = iArr[i17];
                int[] iArr2 = scanner3.commentStops;
                iArr2[0] = iArr2[i17];
                int[] iArr3 = scanner3.commentTagStarts;
                iArr3[0] = iArr3[i17];
            } else if (i12 != 2) {
                int[] iArr4 = this.scanner.commentStarts;
                int i18 = i11 + 1;
                System.arraycopy(iArr4, i18, iArr4, 0, i12);
                int[] iArr5 = this.scanner.commentStops;
                System.arraycopy(iArr5, i18, iArr5, 0, i12);
                int[] iArr6 = this.scanner.commentTagStarts;
                System.arraycopy(iArr6, i18, iArr6, 0, i12);
            } else {
                Scanner scanner4 = this.scanner;
                int[] iArr7 = scanner4.commentStarts;
                int i19 = i11 + 1;
                iArr7[0] = iArr7[i19];
                int[] iArr8 = scanner4.commentStops;
                iArr8[0] = iArr8[i19];
                int[] iArr9 = scanner4.commentTagStarts;
                iArr9[0] = iArr9[i19];
                int i20 = i11 + 2;
                iArr7[1] = iArr7[i20];
                iArr8[1] = iArr8[i20];
                iArr9[1] = iArr9[i20];
            }
        }
        this.scanner.commentPtr = i12 - 1;
        return i10;
    }

    public int getCommentPtr() {
        RecoveredElement recoveredElement;
        int i10;
        Scanner scanner = this.scanner;
        int i11 = scanner.commentPtr;
        if (i11 == -1 && (recoveredElement = this.currentElement) != null && (i11 = this.commentPtr) >= 0) {
            int[] iArr = scanner.commentStarts;
            if (i11 >= iArr.length || (i10 = iArr[i11]) <= 0) {
                return -1;
            }
            int lastStart = recoveredElement.getLastStart();
            if (lastStart == -1) {
                lastStart = this.scanner.currentPosition;
            }
            if (i10 > lastStart) {
                return -1;
            }
        }
        return i11;
    }

    public int[][] getCommentsPositions() {
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, this.commentPtr + 1, 2);
        int i10 = this.commentPtr;
        for (int i11 = 0; i11 <= i10; i11++) {
            int[] iArr2 = iArr[i11];
            iArr2[0] = this.commentStarts[i11];
            iArr2[1] = this.commentStops[i11];
        }
        return iArr;
    }

    @Override
    public void initialize(boolean z10) {
        super.initialize(z10);
        this.commentPtr = -1;
    }

    @Override
    public void initializeScanner() {
        boolean z10 = this.options.getSeverity(256) != 256;
        CompilerOptions compilerOptions = this.options;
        this.scanner = new Scanner(false, false, z10, compilerOptions.sourceLevel, compilerOptions.taskTags, compilerOptions.taskPriorities, compilerOptions.isTaskCaseSensitive);
    }

    public void resetComments() {
        this.commentPtr = -1;
        Arrays.fill(this.commentStarts, 0);
        Arrays.fill(this.commentStops, 0);
        Arrays.fill(this.scanner.commentStops, 0);
        Arrays.fill(this.scanner.commentStarts, 0);
        Arrays.fill(this.scanner.commentTagStarts, 0);
        Scanner scanner = this.scanner;
        scanner.commentPtr = -1;
        scanner.lastCommentLinePosition = -1;
    }

    @Override
    public void resetModifiers() {
        pushOnCommentsStack(0, this.scanner.commentPtr);
        super.resetModifiers();
    }

    @Override
    public void initialize() {
        super.initialize();
        this.commentPtr = -1;
    }
}
