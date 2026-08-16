package org.eclipse.jdt.internal.compiler.codegen;

import java.text.MessageFormat;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class StackMapFrame {
    public static final int APPEND_FRAME = 2;
    public static final int CHOP_FRAME = 1;
    public static final int FULL_FRAME = 4;
    public static final int SAME_FRAME = 0;
    public static final int SAME_FRAME_EXTENDED = 3;
    public static final int SAME_LOCALS_1_STACK_ITEMS = 5;
    public static final int SAME_LOCALS_1_STACK_ITEMS_EXTENDED = 6;
    public static final int USED = 1;
    public int localIndex;
    public VerificationTypeInfo[] locals;
    private int numberOfDifferentLocals;
    private int numberOfLocals = -1;
    public int numberOfStackItems;

    public int f102475pc;
    public VerificationTypeInfo[] stackItems;
    public int tagBits;

    public StackMapFrame(int i10) {
        this.numberOfDifferentLocals = -1;
        this.locals = new VerificationTypeInfo[i10];
        this.numberOfDifferentLocals = -1;
    }

    private boolean equals(VerificationTypeInfo verificationTypeInfo, VerificationTypeInfo verificationTypeInfo2) {
        if (verificationTypeInfo == null) {
            return verificationTypeInfo2 == null;
        }
        if (verificationTypeInfo2 == null) {
            return false;
        }
        return verificationTypeInfo.equals(verificationTypeInfo2);
    }

    private String print(VerificationTypeInfo[] verificationTypeInfoArr, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        if (verificationTypeInfoArr != null) {
            for (int i11 = 0; i11 < i10; i11++) {
                if (i11 != 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                VerificationTypeInfo verificationTypeInfo = verificationTypeInfoArr[i11];
                if (verificationTypeInfo == null) {
                    stringBuffer.append("top");
                } else {
                    stringBuffer.append((Object) verificationTypeInfo);
                }
            }
        }
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return String.valueOf(stringBuffer);
    }

    private void printFrame(StringBuffer stringBuffer, StackMapFrame stackMapFrame) {
        VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame.locals;
        stringBuffer.append(MessageFormat.format("[pc : {0} locals: {1} stack items: {2}\nlocals: {3}\nstack: {4}\n]", Integer.toString(stackMapFrame.f102475pc), Integer.toString(stackMapFrame.getNumberOfLocals()), Integer.toString(stackMapFrame.numberOfStackItems), print(stackMapFrame.locals, verificationTypeInfoArr == null ? 0 : verificationTypeInfoArr.length), print(stackMapFrame.stackItems, stackMapFrame.numberOfStackItems)));
    }

    public void addLocal(int i10, VerificationTypeInfo verificationTypeInfo) {
        VerificationTypeInfo[] verificationTypeInfoArr = this.locals;
        if (verificationTypeInfoArr == null) {
            VerificationTypeInfo[] verificationTypeInfoArr2 = new VerificationTypeInfo[i10 + 1];
            this.locals = verificationTypeInfoArr2;
            verificationTypeInfoArr2[i10] = verificationTypeInfo;
        } else {
            int length = verificationTypeInfoArr.length;
            if (i10 >= length) {
                VerificationTypeInfo[] verificationTypeInfoArr3 = new VerificationTypeInfo[i10 + 1];
                this.locals = verificationTypeInfoArr3;
                System.arraycopy(verificationTypeInfoArr, 0, verificationTypeInfoArr3, 0, length);
            }
            this.locals[i10] = verificationTypeInfo;
        }
    }

    public void addStackItem(VerificationTypeInfo verificationTypeInfo) {
        if (verificationTypeInfo != null) {
            VerificationTypeInfo[] verificationTypeInfoArr = this.stackItems;
            if (verificationTypeInfoArr == null) {
                this.stackItems = r2;
                VerificationTypeInfo[] verificationTypeInfoArr2 = {verificationTypeInfo};
                this.numberOfStackItems = 1;
                return;
            }
            int length = verificationTypeInfoArr.length;
            if (this.numberOfStackItems == length) {
                VerificationTypeInfo[] verificationTypeInfoArr3 = new VerificationTypeInfo[length + 1];
                this.stackItems = verificationTypeInfoArr3;
                System.arraycopy(verificationTypeInfoArr, 0, verificationTypeInfoArr3, 0, length);
            }
            VerificationTypeInfo[] verificationTypeInfoArr4 = this.stackItems;
            int i10 = this.numberOfStackItems;
            this.numberOfStackItems = i10 + 1;
            verificationTypeInfoArr4[i10] = verificationTypeInfo;
            return;
        }
        throw new IllegalArgumentException("info cannot be null");
    }

    public StackMapFrame duplicate() {
        int length = this.locals.length;
        StackMapFrame stackMapFrame = new StackMapFrame(length);
        stackMapFrame.numberOfLocals = -1;
        stackMapFrame.numberOfDifferentLocals = -1;
        stackMapFrame.f102475pc = this.f102475pc;
        stackMapFrame.numberOfStackItems = this.numberOfStackItems;
        if (length != 0) {
            stackMapFrame.locals = new VerificationTypeInfo[length];
            for (int i10 = 0; i10 < length; i10++) {
                VerificationTypeInfo verificationTypeInfo = this.locals[i10];
                if (verificationTypeInfo != null) {
                    stackMapFrame.locals[i10] = verificationTypeInfo.duplicate();
                }
            }
        }
        int i11 = this.numberOfStackItems;
        if (i11 != 0) {
            stackMapFrame.stackItems = new VerificationTypeInfo[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                stackMapFrame.stackItems[i12] = this.stackItems[i12].duplicate();
            }
        }
        return stackMapFrame;
    }

    public int getFrameType(StackMapFrame stackMapFrame) {
        int offsetDelta = getOffsetDelta(stackMapFrame);
        int i10 = this.numberOfStackItems;
        if (i10 != 0) {
            if (i10 == 1 && numberOfDifferentLocals(stackMapFrame) == 0) {
                return offsetDelta <= 63 ? 5 : 6;
            }
            return 4;
        }
        switch (numberOfDifferentLocals(stackMapFrame)) {
            case -3:
            case -2:
            case -1:
                return 1;
            case 0:
                return offsetDelta <= 63 ? 0 : 3;
            case 1:
            case 2:
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public int getIndexOfDifferentLocals(int i10) {
        for (int length = this.locals.length - 1; length >= 0; length--) {
            if (this.locals[length] != null && i10 - 1 == 0) {
                return length;
            }
        }
        return 0;
    }

    public int getNumberOfLocals() {
        int i10 = this.numberOfLocals;
        if (i10 != -1) {
            return i10;
        }
        VerificationTypeInfo[] verificationTypeInfoArr = this.locals;
        int i11 = 0;
        int length = verificationTypeInfoArr == null ? 0 : verificationTypeInfoArr.length;
        int i12 = 0;
        while (i11 < length) {
            VerificationTypeInfo verificationTypeInfo = this.locals[i11];
            if (verificationTypeInfo != null) {
                int id2 = verificationTypeInfo.id();
                if (id2 == 7 || id2 == 8) {
                    i11++;
                }
                i12++;
            }
            i11++;
        }
        this.numberOfLocals = i12;
        return i12;
    }

    public int getOffsetDelta(StackMapFrame stackMapFrame) {
        int i10;
        if (stackMapFrame != null && (i10 = stackMapFrame.f102475pc) != -1) {
            return (this.f102475pc - i10) - 1;
        }
        return this.f102475pc;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00c5 A[ADDED_TO_REGION, LOOP:3: B:85:0x00c5->B:93:0x00e2, LOOP_START, PHI: r2 r8 r12 r13
  0x00c5: PHI (r2v7 int) = (r2v3 int), (r2v8 int) binds: [B:84:0x00c3, B:93:0x00e2] A[DONT_GENERATE, DONT_INLINE]
  0x00c5: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:84:0x00c3, B:93:0x00e2] A[DONT_GENERATE, DONT_INLINE]
  0x00c5: PHI (r12v3 int) = (r12v2 int), (r12v6 int) binds: [B:84:0x00c3, B:93:0x00e2] A[DONT_GENERATE, DONT_INLINE]
  0x00c5: PHI (r13v3 int) = (r13v2 int), (r13v4 int) binds: [B:84:0x00c3, B:93:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int numberOfDifferentLocals(StackMapFrame stackMapFrame) {
        int i10 = this.numberOfDifferentLocals;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        if (stackMapFrame == null) {
            this.numberOfDifferentLocals = 0;
            return 0;
        }
        VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame.locals;
        VerificationTypeInfo[] verificationTypeInfoArr2 = this.locals;
        int length = verificationTypeInfoArr == null ? 0 : verificationTypeInfoArr.length;
        int length2 = verificationTypeInfoArr2 == null ? 0 : verificationTypeInfoArr2.length;
        int numberOfLocals = stackMapFrame.getNumberOfLocals();
        int numberOfLocals2 = getNumberOfLocals();
        int i12 = Integer.MAX_VALUE;
        if (numberOfLocals == 0) {
            if (numberOfLocals2 != 0) {
                int i13 = 0;
                while (i11 < length2 && i13 < numberOfLocals2) {
                    VerificationTypeInfo verificationTypeInfo = verificationTypeInfoArr2[i11];
                    if (verificationTypeInfo == null) {
                        this.numberOfDifferentLocals = Integer.MAX_VALUE;
                        return Integer.MAX_VALUE;
                    }
                    int id2 = verificationTypeInfo.id();
                    if (id2 == 7 || id2 == 8) {
                        i11++;
                    }
                    i13++;
                    i11++;
                }
                i11 = numberOfLocals2;
            }
        } else if (numberOfLocals2 == 0) {
            int i14 = -numberOfLocals;
            int i15 = 0;
            while (i11 < length && i15 < numberOfLocals) {
                VerificationTypeInfo verificationTypeInfo2 = verificationTypeInfoArr[i11];
                if (verificationTypeInfo2 == null) {
                    this.numberOfDifferentLocals = Integer.MAX_VALUE;
                    return Integer.MAX_VALUE;
                }
                int id3 = verificationTypeInfo2.id();
                if (id3 == 7 || id3 == 8) {
                    i11++;
                }
                i15++;
                i11++;
            }
            i11 = i14;
        } else {
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i16 < length2 && i17 < numberOfLocals2) {
                VerificationTypeInfo verificationTypeInfo3 = verificationTypeInfoArr2[i16];
                if (verificationTypeInfo3 != null) {
                    i17++;
                    int id4 = verificationTypeInfo3.id();
                    if (id4 == 7 || id4 == 8) {
                        i16++;
                    }
                }
                if (i18 < length && i19 < numberOfLocals) {
                    VerificationTypeInfo verificationTypeInfo4 = verificationTypeInfoArr[i18];
                    if (verificationTypeInfo4 != null) {
                        i19++;
                        int id5 = verificationTypeInfo4.id();
                        if (id5 == 7 || id5 == 8) {
                            i18++;
                        }
                    }
                    if (!equals(verificationTypeInfo4, verificationTypeInfo3) || i18 != i16) {
                        this.numberOfDifferentLocals = Integer.MAX_VALUE;
                        return Integer.MAX_VALUE;
                    }
                    i18++;
                    i16++;
                    i12 = Integer.MAX_VALUE;
                } else {
                    if (verificationTypeInfo3 == null) {
                        this.numberOfDifferentLocals = i12;
                        return i12;
                    }
                    i16++;
                    i11 = 1;
                    if (i17 >= numberOfLocals2) {
                        while (i16 < length2 && i17 < numberOfLocals2) {
                            VerificationTypeInfo verificationTypeInfo5 = verificationTypeInfoArr2[i16];
                            if (verificationTypeInfo5 == null) {
                                this.numberOfDifferentLocals = i12;
                                return i12;
                            }
                            i11++;
                            i17++;
                            int id6 = verificationTypeInfo5.id();
                            if (id6 == 7 || id6 == 8) {
                                i16++;
                            }
                            i16++;
                            i12 = Integer.MAX_VALUE;
                        }
                    } else if (i19 < numberOfLocals) {
                        i11 = -i11;
                        while (i18 < length && i19 < numberOfLocals) {
                            VerificationTypeInfo verificationTypeInfo6 = verificationTypeInfoArr[i18];
                            if (verificationTypeInfo6 == null) {
                                this.numberOfDifferentLocals = Integer.MAX_VALUE;
                                return Integer.MAX_VALUE;
                            }
                            i11--;
                            i19++;
                            int id7 = verificationTypeInfo6.id();
                            if (id7 == 7 || id7 == 8) {
                                i18++;
                            }
                            i18++;
                        }
                    }
                }
            }
            i11 = 0;
            if (i17 >= numberOfLocals2) {
            }
        }
        this.numberOfDifferentLocals = i11;
        return i11;
    }

    public void putLocal(int i10, VerificationTypeInfo verificationTypeInfo) {
        VerificationTypeInfo[] verificationTypeInfoArr = this.locals;
        if (verificationTypeInfoArr == null) {
            VerificationTypeInfo[] verificationTypeInfoArr2 = new VerificationTypeInfo[i10 + 1];
            this.locals = verificationTypeInfoArr2;
            verificationTypeInfoArr2[i10] = verificationTypeInfo;
        } else {
            int length = verificationTypeInfoArr.length;
            if (i10 >= length) {
                VerificationTypeInfo[] verificationTypeInfoArr3 = new VerificationTypeInfo[i10 + 1];
                this.locals = verificationTypeInfoArr3;
                System.arraycopy(verificationTypeInfoArr, 0, verificationTypeInfoArr3, 0, length);
            }
            this.locals[i10] = verificationTypeInfo;
        }
    }

    public void replaceWithElementType() {
        VerificationTypeInfo duplicate = this.stackItems[this.numberOfStackItems - 1].duplicate();
        duplicate.replaceWithElementType();
        this.stackItems[this.numberOfStackItems - 1] = duplicate;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        printFrame(stringBuffer, this);
        return String.valueOf(stringBuffer);
    }

    public void addStackItem(TypeBinding typeBinding) {
        VerificationTypeInfo[] verificationTypeInfoArr = this.stackItems;
        if (verificationTypeInfoArr == null) {
            this.stackItems = r2;
            VerificationTypeInfo[] verificationTypeInfoArr2 = {new VerificationTypeInfo(typeBinding)};
            this.numberOfStackItems = 1;
            return;
        }
        int length = verificationTypeInfoArr.length;
        if (this.numberOfStackItems == length) {
            VerificationTypeInfo[] verificationTypeInfoArr3 = new VerificationTypeInfo[length + 1];
            this.stackItems = verificationTypeInfoArr3;
            System.arraycopy(verificationTypeInfoArr, 0, verificationTypeInfoArr3, 0, length);
        }
        VerificationTypeInfo[] verificationTypeInfoArr4 = this.stackItems;
        int i10 = this.numberOfStackItems;
        this.numberOfStackItems = i10 + 1;
        verificationTypeInfoArr4[i10] = new VerificationTypeInfo(typeBinding);
    }
}
