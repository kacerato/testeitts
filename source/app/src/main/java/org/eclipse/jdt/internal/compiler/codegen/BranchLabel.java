package org.eclipse.jdt.internal.compiler.codegen;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public class BranchLabel extends Label {
    public static final int USED = 2;
    public static final int WIDE = 1;
    BranchLabel delegate;
    private int forwardReferenceCount;
    private int[] forwardReferences;
    public int tagBits;

    public BranchLabel() {
        this.forwardReferences = new int[10];
        this.forwardReferenceCount = 0;
    }

    public void addForwardReference(int i10) {
        BranchLabel branchLabel = this.delegate;
        if (branchLabel != null) {
            branchLabel.addForwardReference(i10);
            return;
        }
        int i11 = this.forwardReferenceCount;
        if (i11 < 1) {
            int[] iArr = this.forwardReferences;
            int length = iArr.length;
            if (i11 >= length) {
                int[] iArr2 = new int[length * 2];
                this.forwardReferences = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            int[] iArr3 = this.forwardReferences;
            int i12 = this.forwardReferenceCount;
            this.forwardReferenceCount = i12 + 1;
            iArr3[i12] = i10;
            return;
        }
        int[] iArr4 = this.forwardReferences;
        int i13 = iArr4[i11 - 1];
        if (i13 < i10) {
            int length2 = iArr4.length;
            if (i11 >= length2) {
                int[] iArr5 = new int[length2 * 2];
                this.forwardReferences = iArr5;
                System.arraycopy(iArr4, 0, iArr5, 0, length2);
            }
            int[] iArr6 = this.forwardReferences;
            int i14 = this.forwardReferenceCount;
            this.forwardReferenceCount = i14 + 1;
            iArr6[i14] = i10;
            return;
        }
        if (i13 > i10) {
            for (int i15 = 0; i15 < i11; i15++) {
                if (iArr4[i15] == i10) {
                    return;
                }
            }
            int length3 = iArr4.length;
            if (i11 >= length3) {
                int[] iArr7 = new int[length3 * 2];
                this.forwardReferences = iArr7;
                System.arraycopy(iArr4, 0, iArr7, 0, length3);
            }
            int[] iArr8 = this.forwardReferences;
            int i16 = this.forwardReferenceCount;
            int i17 = i16 + 1;
            this.forwardReferenceCount = i17;
            iArr8[i16] = i10;
            Arrays.sort(iArr8, 0, i17);
        }
    }

    public void becomeDelegateFor(BranchLabel branchLabel) {
        int i10;
        branchLabel.delegate = this;
        int i11 = branchLabel.forwardReferenceCount;
        if (i11 == 0) {
            return;
        }
        int i12 = this.forwardReferenceCount;
        int[] iArr = new int[i12 + i11];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = this.forwardReferences[i15];
            while (true) {
                if (i14 >= i11) {
                    i10 = i13 + 1;
                    iArr[i13] = i16;
                    break;
                }
                int i17 = branchLabel.forwardReferences[i14];
                if (i16 < i17) {
                    i10 = i13 + 1;
                    iArr[i13] = i16;
                    break;
                } else if (i16 == i17) {
                    i10 = i13 + 1;
                    iArr[i13] = i16;
                    i14++;
                    break;
                } else {
                    iArr[i13] = i17;
                    i14++;
                    i13++;
                }
            }
            i13 = i10;
        }
        while (i14 < i11) {
            iArr[i13] = branchLabel.forwardReferences[i14];
            i14++;
            i13++;
        }
        this.forwardReferences = iArr;
        this.forwardReferenceCount = i13;
    }

    public void branch() {
        this.tagBits |= 2;
        BranchLabel branchLabel = this.delegate;
        if (branchLabel != null) {
            branchLabel.branch();
            return;
        }
        if (this.position != -1) {
            this.codeStream.writePosition(this);
            return;
        }
        addForwardReference(this.codeStream.position);
        CodeStream codeStream = this.codeStream;
        codeStream.position += 2;
        codeStream.classFileOffset += 2;
    }

    public void branchWide() {
        this.tagBits |= 2;
        BranchLabel branchLabel = this.delegate;
        if (branchLabel != null) {
            branchLabel.branchWide();
            return;
        }
        if (this.position != -1) {
            this.codeStream.writeWidePosition(this);
            return;
        }
        addForwardReference(this.codeStream.position);
        this.tagBits |= 1;
        CodeStream codeStream = this.codeStream;
        codeStream.position += 4;
        codeStream.classFileOffset += 4;
    }

    public int forwardReferenceCount() {
        BranchLabel branchLabel = this.delegate;
        if (branchLabel != null) {
            branchLabel.forwardReferenceCount();
        }
        return this.forwardReferenceCount;
    }

    public int[] forwardReferences() {
        BranchLabel branchLabel = this.delegate;
        if (branchLabel != null) {
            branchLabel.forwardReferences();
        }
        return this.forwardReferences;
    }

    public void initialize(CodeStream codeStream) {
        this.codeStream = codeStream;
        this.position = -1;
        this.forwardReferenceCount = 0;
        this.delegate = null;
    }

    public boolean isCaseLabel() {
        return false;
    }

    public boolean isStandardLabel() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void place() {
        boolean z10;
        int i10;
        if (this.position == -1) {
            CodeStream codeStream = this.codeStream;
            this.position = codeStream.position;
            codeStream.addLabel(this);
            int i11 = this.position;
            int i12 = this.forwardReferenceCount;
            if (i12 != 0) {
                if (this.forwardReferences[i12 - 1] + 2 == i11) {
                    if (this.codeStream.bCodeStream[r4.classFileOffset - 3] == -89) {
                        z10 = true;
                        if (z10) {
                            CodeStream codeStream2 = this.codeStream;
                            if (codeStream2.lastAbruptCompletion == i11) {
                                codeStream2.lastAbruptCompletion = -1;
                            }
                            int i13 = i11 - 3;
                            this.position = i13;
                            codeStream2.position = i13;
                            codeStream2.classFileOffset -= 3;
                            this.forwardReferenceCount = i12 - 1;
                            if (codeStream2.lastEntryPC == i11) {
                                codeStream2.lastEntryPC = i13;
                            }
                            if ((codeStream2.generateAttributes & 28) != 0) {
                                LocalVariableBinding[] localVariableBindingArr = codeStream2.locals;
                                for (LocalVariableBinding localVariableBinding : localVariableBindingArr) {
                                    if (localVariableBinding != null && (i10 = localVariableBinding.initializationCount) > 0) {
                                        int[] iArr = localVariableBinding.initializationPCs;
                                        if (iArr[((i10 - 1) << 1) + 1] == i11) {
                                            iArr[((i10 - 1) << 1) + 1] = this.position;
                                        }
                                        if (iArr[(i10 - 1) << 1] == i11) {
                                            iArr[(i10 - 1) << 1] = this.position;
                                        }
                                    }
                                }
                            }
                            CodeStream codeStream3 = this.codeStream;
                            if ((codeStream3.generateAttributes & 2) != 0) {
                                codeStream3.removeUnusedPcToSourceMapEntries();
                            }
                        }
                    }
                }
                z10 = false;
                if (z10) {
                }
            } else {
                z10 = false;
            }
            for (int i14 = 0; i14 < this.forwardReferenceCount; i14++) {
                this.codeStream.writePosition(this, this.forwardReferences[i14]);
            }
            if (z10) {
                this.codeStream.optimizeBranch(i11, this);
            }
        }
    }

    public String toString() {
        int i10;
        String name = getClass().getName();
        StringBuffer stringBuffer = new StringBuffer(name.substring(name.lastIndexOf(46) + 1));
        stringBuffer.append('@');
        stringBuffer.append(Integer.toHexString(hashCode()));
        stringBuffer.append("(position=");
        stringBuffer.append(this.position);
        if (this.delegate != null) {
            stringBuffer.append("delegate=");
            stringBuffer.append((Object) this.delegate);
        }
        stringBuffer.append(", forwards = [");
        int i11 = 0;
        while (true) {
            i10 = this.forwardReferenceCount;
            if (i11 >= i10 - 1) {
                break;
            }
            stringBuffer.append(String.valueOf(this.forwardReferences[i11]) + ", ");
            i11++;
        }
        if (i10 >= 1) {
            stringBuffer.append(this.forwardReferences[i10 - 1]);
        }
        stringBuffer.append("] )");
        return stringBuffer.toString();
    }

    public BranchLabel(CodeStream codeStream) {
        super(codeStream);
        this.forwardReferences = new int[10];
        this.forwardReferenceCount = 0;
    }
}
