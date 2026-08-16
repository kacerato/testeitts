package org.eclipse.jdt.core.util;

public interface IStackMapFrame {
    int getFrameType();

    IVerificationTypeInfo[] getLocals();

    int getNumberOfLocals();

    int getNumberOfStackItems();

    int getOffsetDelta();

    IVerificationTypeInfo[] getStackItems();
}
