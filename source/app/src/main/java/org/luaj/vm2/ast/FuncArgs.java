package org.luaj.vm2.ast;

import java.util.ArrayList;
import java.util.List;
import org.luaj.vm2.LuaString;

public class FuncArgs extends SyntaxElement {
    public final List exps;

    public FuncArgs(List list) {
        this.exps = list;
    }

    public static FuncArgs explist(List list) {
        return new FuncArgs(list);
    }

    public static FuncArgs string(LuaString luaString) {
        return new FuncArgs(luaString);
    }

    public static FuncArgs tableconstructor(TableConstructor tableConstructor) {
        return new FuncArgs(tableConstructor);
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public FuncArgs(LuaString luaString) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(Exp.constant(luaString));
    }

    public FuncArgs(TableConstructor tableConstructor) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(tableConstructor);
    }
}
