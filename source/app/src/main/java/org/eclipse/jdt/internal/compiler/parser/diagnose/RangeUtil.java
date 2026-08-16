package org.eclipse.jdt.internal.compiler.parser.diagnose;

import java.lang.reflect.Array;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public class RangeUtil {
    public static final int IGNORE = 2;
    public static final int LBRACE_MISSING = 1;
    public static final int NO_FLAG = 0;

    public static class RangeResult {
        private static final int INITIAL_SIZE = 10;
        int pos = 0;
        int[] intervalStarts = new int[10];
        int[] intervalEnds = new int[10];
        int[] intervalFlags = new int[10];

        private int compare(int i10, int i11) {
            return i10 - i11;
        }

        private void quickSort(int[] iArr, int[] iArr2, int[] iArr3, int i10, int i11) {
            int i12;
            int i13;
            int i14 = iArr[((i11 - i10) / 2) + i10];
            int i15 = i10;
            int i16 = i11;
            while (true) {
                if (compare(iArr[i15], i14) >= 0) {
                    while (compare(i14, iArr[i16]) < 0) {
                        i16--;
                    }
                    if (i15 <= i16) {
                        int i17 = iArr[i15];
                        iArr[i15] = iArr[i16];
                        iArr[i16] = i17;
                        int i18 = iArr2[i15];
                        iArr2[i15] = iArr2[i16];
                        iArr2[i16] = i18;
                        int i19 = iArr3[i15];
                        iArr3[i15] = iArr3[i16];
                        iArr3[i16] = i19;
                        i15++;
                        i16--;
                    }
                    i12 = i15;
                    i13 = i16;
                    if (i12 > i13) {
                        break;
                    }
                    i16 = i13;
                    i15 = i12;
                } else {
                    i15++;
                }
            }
            if (i10 < i13) {
                quickSort(iArr, iArr2, iArr3, i10, i13);
            }
            if (i12 < i11) {
                quickSort(iArr, iArr2, iArr3, i12, i11);
            }
        }

        public void addInterval(int i10, int i11) {
            addInterval(i10, i11, 0);
        }

        public int[][] getRanges() {
            int i10 = this.pos;
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int[] iArr3 = new int[i10];
            System.arraycopy(this.intervalStarts, 0, iArr, 0, i10);
            System.arraycopy(this.intervalEnds, 0, iArr2, 0, this.pos);
            System.arraycopy(this.intervalFlags, 0, iArr3, 0, this.pos);
            if (i10 > 1) {
                quickSort(iArr, iArr2, iArr3, 0, i10 - 1);
            }
            return new int[][]{iArr, iArr2, iArr3};
        }

        public void addInterval(int i10, int i11, int i12) {
            int i13 = this.pos;
            int[] iArr = this.intervalStarts;
            if (i13 >= iArr.length) {
                int[] iArr2 = new int[i13 * 2];
                this.intervalStarts = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i13);
                int[] iArr3 = this.intervalEnds;
                int i14 = this.pos;
                int[] iArr4 = new int[i14 * 2];
                this.intervalEnds = iArr4;
                System.arraycopy(iArr3, 0, iArr4, 0, i14);
                int[] iArr5 = this.intervalFlags;
                int i15 = this.pos;
                int[] iArr6 = new int[i15 * 2];
                this.intervalFlags = iArr6;
                System.arraycopy(iArr5, 0, iArr6, 0, i15);
            }
            int[] iArr7 = this.intervalStarts;
            int i16 = this.pos;
            iArr7[i16] = i10;
            this.intervalEnds[i16] = i11;
            this.intervalFlags[i16] = i12;
            this.pos = i16 + 1;
        }
    }

    public static int[][] computeDietRange(TypeDeclaration[] typeDeclarationArr) {
        if (typeDeclarationArr == null || typeDeclarationArr.length == 0) {
            return (int[][]) Array.newInstance(Integer.TYPE, 3, 0);
        }
        RangeResult rangeResult = new RangeResult();
        computeDietRange0(typeDeclarationArr, rangeResult);
        return rangeResult.getRanges();
    }

    private static void computeDietRange0(TypeDeclaration[] typeDeclarationArr, RangeResult rangeResult) {
        int i10;
        for (int i11 = 0; i11 < typeDeclarationArr.length; i11++) {
            TypeDeclaration[] typeDeclarationArr2 = typeDeclarationArr[i11].memberTypes;
            if (typeDeclarationArr2 != null && typeDeclarationArr2.length > 0) {
                computeDietRange0(typeDeclarationArr2, rangeResult);
            }
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclarationArr[i11].methods;
            if (abstractMethodDeclarationArr != null) {
                for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                    if (containsIgnoredBody(abstractMethodDeclaration)) {
                        if (containsErrorInSignature(abstractMethodDeclaration)) {
                            abstractMethodDeclaration.bits |= 32;
                            rangeResult.addInterval(abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd, 2);
                        } else {
                            int i12 = abstractMethodDeclaration.sourceEnd + 1;
                            int i13 = abstractMethodDeclaration.bodyStart;
                            rangeResult.addInterval(i13, abstractMethodDeclaration.bodyEnd, i12 != i13 ? 0 : 1);
                        }
                    }
                }
            }
            FieldDeclaration[] fieldDeclarationArr = typeDeclarationArr[i11].fields;
            if (fieldDeclarationArr != null) {
                for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                    if (fieldDeclaration instanceof Initializer) {
                        Initializer initializer = (Initializer) fieldDeclaration;
                        int i14 = initializer.declarationSourceEnd;
                        int i15 = initializer.bodyEnd;
                        if (i14 != i15 || (i10 = initializer.declarationSourceStart) == i14) {
                            rangeResult.addInterval(initializer.bodyStart, i15);
                        } else {
                            initializer.bits |= 32;
                            rangeResult.addInterval(i10, i14, 2);
                        }
                    }
                }
            }
        }
    }

    public static boolean containsErrorInSignature(AbstractMethodDeclaration abstractMethodDeclaration) {
        return abstractMethodDeclaration.sourceEnd + 1 == abstractMethodDeclaration.bodyStart || abstractMethodDeclaration.bodyEnd == abstractMethodDeclaration.declarationSourceEnd;
    }

    public static boolean containsIgnoredBody(AbstractMethodDeclaration abstractMethodDeclaration) {
        return (abstractMethodDeclaration.isDefaultConstructor() || abstractMethodDeclaration.isClinit() || (abstractMethodDeclaration.modifiers & 16777216) != 0) ? false : true;
    }
}
