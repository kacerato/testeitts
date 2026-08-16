package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;

public class DefaultCommentMapper {
    static final int STORAGE_INCREMENT = 16;
    Comment[] comments;
    int lastTrailingPtr;
    long[] leadingIndexes;
    ASTNode[] leadingNodes;
    int leadingPtr;
    Scanner scanner;
    long[] trailingIndexes;
    ASTNode[] trailingNodes;
    int trailingPtr;

    public class CommentMapperVisitor extends DefaultASTVisitor {
        ASTNode topSiblingParent = null;
        ASTNode[] siblings = new ASTNode[10];
        int[][] parentLineRange = new int[10];
        int siblingPtr = -1;

        public CommentMapperVisitor() {
        }

        @Override
        public void endVisitNode(ASTNode aSTNode) {
            ASTNode aSTNode2 = this.topSiblingParent == aSTNode ? this.siblings[this.siblingPtr] : null;
            if (aSTNode2 != null) {
                try {
                    DefaultCommentMapper.this.storeTrailingComments(aSTNode2, (aSTNode.getStartPosition() + aSTNode.getLength()) - 1, true, this.parentLineRange[this.siblingPtr]);
                } catch (Exception unused) {
                }
            }
            ASTNode aSTNode3 = this.topSiblingParent;
            if (aSTNode3 == null || aSTNode3 != aSTNode) {
                return;
            }
            this.siblingPtr--;
            this.topSiblingParent = aSTNode.getParent();
        }

        @Override
        public boolean visit(CompilationUnit compilationUnit) {
            return true;
        }

        @Override
        public boolean visitNode(ASTNode aSTNode) {
            ASTNode parent = aSTNode.getParent();
            int startPosition = parent.getStartPosition();
            ASTNode aSTNode2 = parent == this.topSiblingParent ? this.siblings[this.siblingPtr] : null;
            if (aSTNode2 != null) {
                try {
                    startPosition = DefaultCommentMapper.this.storeTrailingComments(aSTNode2, aSTNode.getStartPosition(), false, this.parentLineRange[this.siblingPtr]);
                } catch (Exception unused) {
                }
            }
            if ((aSTNode.typeAndFlags & 1) != 0) {
                return false;
            }
            int i10 = this.siblingPtr;
            int[] iArr = i10 > -1 ? this.parentLineRange[i10] : new int[]{1, DefaultCommentMapper.this.scanner.linePtr + 1};
            try {
                DefaultCommentMapper.this.storeLeadingComments(aSTNode, startPosition, iArr);
            } catch (Exception unused2) {
            }
            if (this.topSiblingParent != parent) {
                ASTNode[] aSTNodeArr = this.siblings;
                int length = aSTNodeArr.length;
                int i11 = this.siblingPtr + 1;
                this.siblingPtr = i11;
                if (length == i11) {
                    ASTNode[] aSTNodeArr2 = new ASTNode[i11 * 2];
                    this.siblings = aSTNodeArr2;
                    System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, i11);
                    int[][] iArr2 = this.parentLineRange;
                    int i12 = this.siblingPtr;
                    int[][] iArr3 = new int[i12 * 2];
                    this.parentLineRange = iArr3;
                    System.arraycopy(iArr2, 0, iArr3, 0, i12);
                }
                if (this.topSiblingParent == null) {
                    this.parentLineRange[this.siblingPtr] = iArr;
                } else {
                    int startPosition2 = parent.getStartPosition();
                    int lineNumber = DefaultCommentMapper.this.getLineNumber(startPosition2, iArr);
                    int lineNumber2 = DefaultCommentMapper.this.getLineNumber((startPosition2 + parent.getLength()) - 1, iArr);
                    int[][] iArr4 = this.parentLineRange;
                    int i13 = this.siblingPtr;
                    int[] iArr5 = iArr4[i13];
                    if (iArr5 == null) {
                        iArr4[i13] = new int[]{lineNumber, lineNumber2};
                    } else {
                        iArr5[0] = lineNumber;
                        iArr5[1] = lineNumber2;
                    }
                }
                this.topSiblingParent = parent;
            }
            this.siblings[this.siblingPtr] = aSTNode;
            return true;
        }

        @Override
        public boolean visit(Modifier modifier) {
            return false;
        }
    }

    public DefaultCommentMapper(Comment[] commentArr) {
        this.comments = commentArr;
    }

    private int getCommentIndex(int i10, int i11, int i12) {
        int i13 = -1;
        int i14 = 0;
        if (i11 == 0) {
            Comment[] commentArr = this.comments;
            return (commentArr.length <= 0 || commentArr[0].getStartPosition() != 0) ? -1 : 0;
        }
        int length = this.comments.length - 1;
        while (true) {
            if (i10 > length) {
                break;
            }
            i14 = ((length - i10) / 2) + i10;
            Comment comment = this.comments[i14];
            int startPosition = comment.getStartPosition();
            if (i11 >= startPosition) {
                if (i11 < startPosition + comment.getLength()) {
                    i13 = i14;
                    break;
                }
                i10 = i14 + 1;
            } else {
                length = i14 - 1;
            }
        }
        return (i13 >= 0 || i12 == 0) ? i13 : i11 < this.comments[i14].getStartPosition() ? i12 < 0 ? i14 - 1 : i14 : i12 < 0 ? i14 : i14 + 1;
    }

    public int firstLeadingCommentIndex(ASTNode aSTNode) {
        if (this.leadingPtr < 0) {
            return -1;
        }
        for (int i10 = 0; i10 <= this.leadingPtr; i10++) {
            if (this.leadingNodes[i10] == aSTNode) {
                return (int) (this.leadingIndexes[i10] >> 32);
            }
        }
        return -1;
    }

    public Comment getComment(int i10) {
        int commentIndex;
        Comment[] commentArr = this.comments;
        if (commentArr == null || commentArr.length == 0 || (commentIndex = getCommentIndex(0, i10, 0)) < 0) {
            return null;
        }
        return this.comments[commentIndex];
    }

    public int getExtendedEnd(ASTNode aSTNode) {
        int startPosition = aSTNode.getStartPosition() + aSTNode.getLength();
        if (this.trailingPtr >= 0) {
            long j10 = -1;
            for (int i10 = 0; j10 < 0 && i10 <= this.trailingPtr; i10++) {
                if (this.trailingNodes[i10] == aSTNode) {
                    j10 = this.trailingIndexes[i10];
                }
            }
            if (j10 >= 0) {
                Comment comment = this.comments[(int) j10];
                startPosition = comment.getStartPosition() + comment.getLength();
            }
        }
        return startPosition - 1;
    }

    public int getExtendedLength(ASTNode aSTNode) {
        return (getExtendedEnd(aSTNode) - getExtendedStartPosition(aSTNode)) + 1;
    }

    public int getExtendedStartPosition(ASTNode aSTNode) {
        if (this.leadingPtr >= 0) {
            long j10 = -1;
            for (int i10 = 0; j10 < 0 && i10 <= this.leadingPtr; i10++) {
                if (this.leadingNodes[i10] == aSTNode) {
                    j10 = this.leadingIndexes[i10];
                }
            }
            if (j10 >= 0) {
                return this.comments[(int) (j10 >> 32)].getStartPosition();
            }
        }
        return aSTNode.getStartPosition();
    }

    public final int getLineNumber(int i10, int[] iArr) {
        int[] iArr2 = this.scanner.lineEnds;
        int length = iArr2.length;
        int i11 = iArr[0];
        if (i11 > length) {
            i11 = length;
        }
        int i12 = i11 - 1;
        int i13 = iArr[1];
        if (i13 <= length) {
            length = i13;
        }
        return Util.getLineNumber(i10, iArr2, i12, length - 1);
    }

    public boolean hasSameTable(Comment[] commentArr) {
        return this.comments == commentArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r7.trailingPtr >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        r8 = r7.trailingIndexes;
        r2 = r7.trailingPtr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (r8[r2] == (-1)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        r2 = r2 - 1;
        r7.trailingPtr = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        if (r2 >= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r7.trailingIndexes = null;
        r7.trailingNodes = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        r8 = r7.trailingPtr + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
    
        if (r8 <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        if (r8 >= r7.trailingIndexes.length) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        r0 = r7.trailingNodes;
        r2 = new org.eclipse.jdt.core.dom.ASTNode[r8];
        r7.trailingNodes = r2;
        java.lang.System.arraycopy(r0, 0, r2, 0, r8);
        r0 = r7.trailingIndexes;
        r2 = new long[r8];
        r7.trailingIndexes = r2;
        java.lang.System.arraycopy(r0, 0, r2, 0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        r7.scanner = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initialize(CompilationUnit compilationUnit, Scanner scanner) {
        this.leadingPtr = -1;
        this.trailingPtr = -1;
        Comment[] commentArr = compilationUnit.optionalCommentTable;
        this.comments = commentArr;
        if (commentArr == null || commentArr.length == 0) {
            return;
        }
        this.scanner = scanner;
        scanner.tokenizeWhiteSpace = true;
        compilationUnit.accept(new CommentMapperVisitor());
        int i10 = this.leadingPtr + 1;
        if (i10 > 0 && i10 < this.leadingIndexes.length) {
            ASTNode[] aSTNodeArr = this.leadingNodes;
            ASTNode[] aSTNodeArr2 = new ASTNode[i10];
            this.leadingNodes = aSTNodeArr2;
            System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, i10);
            long[] jArr = this.leadingIndexes;
            long[] jArr2 = new long[i10];
            this.leadingIndexes = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, i10);
        }
    }

    public int lastTrailingCommentIndex(ASTNode aSTNode) {
        if (this.trailingPtr < 0) {
            return -1;
        }
        for (int i10 = 0; i10 <= this.trailingPtr; i10++) {
            if (this.trailingNodes[i10] == aSTNode) {
                return (int) this.trailingIndexes[i10];
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00be, code lost:
    
        r1 = r16.leadingPtr + 1;
        r16.leadingPtr = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c5, code lost:
    
        if (r1 != 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c7, code lost:
    
        r16.leadingNodes = new org.eclipse.jdt.core.dom.ASTNode[16];
        r16.leadingIndexes = new long[16];
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ed, code lost:
    
        r1 = r16.leadingNodes;
        r2 = r16.leadingPtr;
        r1[r2] = r17;
        r16.leadingIndexes[r2] = (r11 << 32) + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0105, code lost:
    
        return r16.comments[r8].getStartPosition();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d0, code lost:
    
        r3 = r16.leadingNodes;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d3, code lost:
    
        if (r1 != r3.length) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d5, code lost:
    
        r4 = ((r1 * 3) / 2) + 16;
        r2 = new org.eclipse.jdt.core.dom.ASTNode[r4];
        r16.leadingNodes = r2;
        java.lang.System.arraycopy(r3, 0, r2, 0, r1);
        r1 = r16.leadingIndexes;
        r2 = new long[r4];
        r16.leadingIndexes = r2;
        java.lang.System.arraycopy(r1, 0, r2, 0, r16.leadingPtr);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006d, code lost:
    
        if (r9 == r8) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int storeLeadingComments(ASTNode aSTNode, int i10, int[] iArr) {
        int i11;
        int i12 = i10;
        int startPosition = aSTNode.getStartPosition();
        int lineNumber = getLineNumber(i12, iArr);
        int lineNumber2 = getLineNumber(startPosition, iArr);
        int i13 = -1;
        int commentIndex = getCommentIndex(0, startPosition, -1);
        if (commentIndex == -1) {
            return startPosition;
        }
        int i14 = startPosition;
        int i15 = -1;
        int i16 = commentIndex;
        while (i16 >= 0 && i14 >= i12) {
            Comment comment = this.comments[i16];
            int startPosition2 = comment.getStartPosition();
            int length = comment.getLength() + startPosition2;
            int i17 = length - 1;
            int lineNumber3 = getLineNumber(startPosition2, iArr);
            if (i17 > i12 && (lineNumber3 != lineNumber || lineNumber3 == lineNumber2)) {
                if (length < i14) {
                    this.scanner.resetTo(length, i14);
                    try {
                        if (this.scanner.getNextToken() == 1000) {
                            Scanner scanner = this.scanner;
                            if (scanner.currentPosition == i14) {
                                char[] currentIdentifierSource = scanner.getCurrentIdentifierSource();
                                int i18 = -1;
                                int i19 = 0;
                                while (true) {
                                    i18 = CharOperation.indexOf('\n', currentIdentifierSource, i18 + 1);
                                    if (i18 < 0) {
                                        break;
                                    }
                                    i19++;
                                }
                                if (i19 > 1) {
                                }
                            }
                        }
                    } catch (InvalidInputException unused) {
                    }
                }
                i15 = i16;
                i14 = startPosition2;
                i13 = -1;
                i16--;
            }
            i11 = -1;
        }
        i11 = i13;
        if (i15 == i11) {
            return startPosition;
        }
        int startPosition3 = this.comments[i15].getStartPosition();
        if (i12 < startPosition3 && lineNumber != lineNumber2) {
            this.scanner.resetTo(i12, startPosition3);
            while (true) {
                try {
                    Scanner scanner2 = this.scanner;
                    if (scanner2.currentPosition >= startPosition3) {
                        break;
                    }
                    if (scanner2.getNextToken() != 1000) {
                        i12 = this.scanner.getCurrentTokenEndPosition();
                    }
                } catch (InvalidInputException unused2) {
                }
            }
            int lineNumber4 = getLineNumber(i12, iArr);
            int length2 = this.comments.length;
            while (i15 < length2 && lineNumber4 == getLineNumber(this.comments[i15].getStartPosition(), iArr) && lineNumber2 != lineNumber4) {
                i15++;
            }
        }
        return startPosition;
        return startPosition;
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ad, code lost:
    
        if (r15 == r12) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int storeTrailingComments(ASTNode aSTNode, int i10, boolean z10, int[] iArr) {
        int i11;
        int i12;
        int i13;
        int i14;
        int startPosition = aSTNode.getStartPosition() + aSTNode.getLength();
        int i15 = startPosition - 1;
        int i16 = -1;
        if (i15 == i10) {
            int i17 = this.trailingPtr + 1;
            this.trailingPtr = i17;
            if (i17 == 0) {
                this.trailingNodes = new ASTNode[16];
                this.trailingIndexes = new long[16];
                this.lastTrailingPtr = -1;
            } else {
                ASTNode[] aSTNodeArr = this.trailingNodes;
                if (i17 == aSTNodeArr.length) {
                    int i18 = ((i17 * 3) / 2) + 16;
                    ASTNode[] aSTNodeArr2 = new ASTNode[i18];
                    this.trailingNodes = aSTNodeArr2;
                    System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, i17);
                    long[] jArr = this.trailingIndexes;
                    long[] jArr2 = new long[i18];
                    this.trailingIndexes = jArr2;
                    System.arraycopy(jArr, 0, jArr2, 0, this.trailingPtr);
                }
            }
            ASTNode[] aSTNodeArr3 = this.trailingNodes;
            int i19 = this.trailingPtr;
            aSTNodeArr3[i19] = aSTNode;
            this.trailingIndexes[i19] = -1;
            return i15;
        }
        int lineNumber = getLineNumber(i15, iArr);
        int commentIndex = getCommentIndex(0, i15, 1);
        if (commentIndex == -1) {
            return i15;
        }
        int length = this.comments.length;
        int i20 = startPosition;
        int i21 = -1;
        int i22 = -1;
        int i23 = commentIndex;
        while (i23 < length && startPosition < i10) {
            Comment comment = this.comments[i23];
            int startPosition2 = comment.getStartPosition();
            if (startPosition2 >= i10) {
                break;
            }
            if (i20 < startPosition2) {
                this.scanner.resetTo(i20, startPosition2);
                try {
                    if (this.scanner.getNextToken() == 1000) {
                        Scanner scanner = this.scanner;
                        if (scanner.currentPosition == startPosition2) {
                            char[] currentIdentifierSource = scanner.getCurrentIdentifierSource();
                            i11 = i22;
                            i14 = length;
                            int i24 = -1;
                            int i25 = 0;
                            while (true) {
                                i24 = CharOperation.indexOf('\n', currentIdentifierSource, i24 + 1);
                                if (i24 < 0) {
                                    break;
                                }
                                i25++;
                            }
                            if (i25 > 1) {
                                i12 = -1;
                                break;
                            }
                        }
                    }
                    i11 = i22;
                } catch (InvalidInputException unused) {
                }
            } else {
                i11 = i22;
                i14 = length;
            }
            i22 = getLineNumber(startPosition2, iArr) == lineNumber ? i23 : i11;
            i20 = startPosition2 + comment.getLength();
            i21 = i23;
            length = i14;
            i16 = -1;
            i23++;
            startPosition = startPosition2;
        }
        i11 = i22;
        i12 = i16;
        if (i21 == i12) {
            return i15;
        }
        if (!z10 && getLineNumber(i10, iArr) - getLineNumber(i20, iArr) <= 1) {
            int i26 = i11;
            if (i26 == i12) {
                return i15;
            }
            i21 = i26;
        }
        int i27 = this.trailingPtr + 1;
        this.trailingPtr = i27;
        if (i27 == 0) {
            this.trailingNodes = new ASTNode[16];
            this.trailingIndexes = new long[16];
            this.lastTrailingPtr = -1;
        } else {
            ASTNode[] aSTNodeArr4 = this.trailingNodes;
            if (i27 == aSTNodeArr4.length) {
                int i28 = ((i27 * 3) / 2) + 16;
                ASTNode[] aSTNodeArr5 = new ASTNode[i28];
                this.trailingNodes = aSTNodeArr5;
                System.arraycopy(aSTNodeArr4, 0, aSTNodeArr5, 0, i27);
                long[] jArr3 = this.trailingIndexes;
                long[] jArr4 = new long[i28];
                this.trailingIndexes = jArr4;
                System.arraycopy(jArr3, 0, jArr4, 0, this.trailingPtr);
            }
        }
        ASTNode[] aSTNodeArr6 = this.trailingNodes;
        int i29 = this.trailingPtr;
        aSTNodeArr6[i29] = aSTNode;
        long j10 = i21 + (commentIndex << 32);
        this.trailingIndexes[i29] = j10;
        int startPosition3 = (this.comments[i21].getStartPosition() + this.comments[i21].getLength()) - 1;
        int i30 = this.trailingPtr - 1;
        ASTNode aSTNode2 = aSTNode;
        while (i30 >= 0 && this.trailingIndexes[i30] == -1) {
            ASTNode aSTNode3 = this.trailingNodes[i30];
            if (aSTNode2 != aSTNode3.getParent()) {
                break;
            }
            this.trailingIndexes[i30] = j10;
            i30--;
            aSTNode2 = aSTNode3;
        }
        int i31 = this.lastTrailingPtr;
        if (i30 > i31) {
            int i32 = i30 - i31;
            int i33 = i30 + 1;
            while (true) {
                i13 = this.trailingPtr;
                if (i33 > i13) {
                    break;
                }
                ASTNode[] aSTNodeArr7 = this.trailingNodes;
                int i34 = i33 - i32;
                aSTNodeArr7[i34] = aSTNodeArr7[i33];
                long[] jArr5 = this.trailingIndexes;
                jArr5[i34] = jArr5[i33];
                i33++;
            }
            this.trailingPtr = i13 - i32;
        }
        this.lastTrailingPtr = this.trailingPtr;
        return startPosition3;
        return i15;
    }
}
