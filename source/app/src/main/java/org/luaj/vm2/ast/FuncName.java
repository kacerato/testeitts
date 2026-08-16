package org.luaj.vm2.ast;

import java.util.ArrayList;
import java.util.List;

public class FuncName extends SyntaxElement {
    public List dots;
    public String method;
    public final Name name;

    public FuncName(String str) {
        this.name = new Name(str);
    }

    public void adddot(String str) {
        if (this.dots == null) {
            this.dots = new ArrayList();
        }
        this.dots.add(str);
    }
}
