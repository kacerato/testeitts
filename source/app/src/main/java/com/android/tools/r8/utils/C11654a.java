package com.android.tools.r8.utils;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC6706c8;
import java.io.IOException;
import java.util.TreeSet;

public final class C11654a implements DataResourceProvider.Visitor {

    public final TreeSet f58575a;

    public final TreeSet f58576b;

    public C11654a(TreeSet treeSet, TreeSet treeSet2) {
        this.f58575a = treeSet;
        this.f58576b = treeSet2;
    }

    @Override
    public final void visit(DataDirectoryResource dataDirectoryResource) {
        this.f58575a.add(DataDirectoryResource.fromName(dataDirectoryResource.getName(), dataDirectoryResource.getOrigin()));
    }

    @Override
    public final void visit(DataEntryResource dataEntryResource) {
        try {
            this.f58576b.add(DataEntryResource.fromBytes(AbstractC6706c8.a(dataEntryResource.getByteStream()), dataEntryResource.getName(), dataEntryResource.getOrigin()));
        } catch (ResourceException | IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
