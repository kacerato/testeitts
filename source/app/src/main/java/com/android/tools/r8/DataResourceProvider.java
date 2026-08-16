package com.android.tools.r8;

public interface DataResourceProvider {

    public interface Visitor {
        void visit(DataDirectoryResource dataDirectoryResource);

        void visit(DataEntryResource dataEntryResource);
    }

    void accept(Visitor visitor) throws ResourceException;
}
