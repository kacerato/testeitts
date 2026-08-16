package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class HeaderSection extends UniformItemSection {
    private final List<HeaderItem> list;

    public HeaderSection(DexFile dexFile) {
        super(null, dexFile, 4);
        HeaderItem headerItem = new HeaderItem();
        headerItem.setIndex(0);
        this.list = Collections.singletonList(headerItem);
    }

    @Override
    public IndexedItem get(Constant constant) {
        return null;
    }

    @Override
    public Collection<? extends Item> items() {
        return this.list;
    }

    @Override
    public void orderItems() {
    }
}
