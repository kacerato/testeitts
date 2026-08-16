package org.luaj.vm2.ast;

import java.util.ArrayList;
import java.util.List;

public class ParList extends SyntaxElement {
    public static final List EMPTY_NAMELIST;
    public static final ParList EMPTY_PARLIST;
    public final boolean isvararg;
    public final List names;

    static {
        ArrayList arrayList = new ArrayList();
        EMPTY_NAMELIST = arrayList;
        EMPTY_PARLIST = new ParList(arrayList, false);
    }

    public ParList(List list, boolean z10) {
        this.names = list;
        this.isvararg = z10;
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
