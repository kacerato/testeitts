package org.eclipse.jdt.internal.core.nd.field;

public abstract class BaseField implements IField {
    private String fieldName;
    protected int offset;

    @Override
    public final String getFieldName() {
        return this.fieldName;
    }

    @Override
    public final int getOffset() {
        return this.offset;
    }

    public final void setFieldName(String str) {
        this.fieldName = str;
    }

    @Override
    public final void setOffset(int i10) {
        this.offset = i10;
    }
}
