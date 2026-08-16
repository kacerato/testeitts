package org.eclipse.jdt.internal.core.nd.field;

public interface IField {
    default int getAlignment() {
        return 1;
    }

    String getFieldName();

    int getOffset();

    int getRecordSize();

    void setOffset(int i10);
}
