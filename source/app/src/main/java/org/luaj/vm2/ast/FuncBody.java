package org.luaj.vm2.ast;

public class FuncBody extends SyntaxElement {
    public Block block;
    public ParList parlist;
    public NameScope scope;

    public FuncBody(ParList parList, Block block) {
        this.parlist = parList == null ? ParList.EMPTY_PARLIST : parList;
        this.block = block;
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
