package org.luaj.vm2.ast;

import java.util.List;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.ast.Exp;
import org.luaj.vm2.ast.Stat;

public class NameResolver extends Visitor {
    private NameScope scope = null;

    private void popScope() {
        this.scope = this.scope.outerScope;
    }

    private void pushScope() {
        this.scope = new NameScope(this.scope);
    }

    public void defineLocalVar(Name name) {
        name.variable = this.scope.define(name.name);
    }

    public void defineLocalVars(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            defineLocalVar((Name) list.get(i10));
        }
    }

    public Variable resolveNameReference(Name name) {
        Variable find = this.scope.find(name.name);
        if (find.isLocal() && this.scope.functionNestingCount != find.definingScope.functionNestingCount) {
            find.isupvalue = true;
        }
        return find;
    }

    @Override
    public void visit(Block block) {
        pushScope();
        block.scope = this.scope;
        super.visit(block);
        popScope();
    }

    @Override
    public void visit(Exp.NameExp nameExp) {
        Name name = nameExp.name;
        name.variable = resolveNameReference(name);
        super.visit(nameExp);
    }

    @Override
    public void visit(FuncBody funcBody) {
        pushScope();
        NameScope nameScope = this.scope;
        nameScope.functionNestingCount++;
        funcBody.scope = nameScope;
        super.visit(funcBody);
        popScope();
    }

    @Override
    public void visit(NameScope nameScope) {
    }

    @Override
    public void visit(ParList parList) {
        List list = parList.names;
        if (list != null) {
            defineLocalVars(list);
        }
        if (parList.isvararg) {
            this.scope.define("arg");
        }
        super.visit(parList);
    }

    @Override
    public void visit(Stat.Assign assign) {
        super.visit(assign);
        int size = assign.vars.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((Exp.VarExp) assign.vars.get(i10)).markHasAssignment();
        }
    }

    @Override
    public void visit(Stat.FuncDef funcDef) {
        Name name = funcDef.name.name;
        name.variable = resolveNameReference(name);
        funcDef.name.name.variable.hasassignments = true;
        super.visit(funcDef);
    }

    @Override
    public void visit(Stat.GenericFor genericFor) {
        pushScope();
        genericFor.scope = this.scope;
        defineLocalVars(genericFor.names);
        super.visit(genericFor);
        popScope();
    }

    @Override
    public void visit(Stat.LocalAssign localAssign) {
        visitExps(localAssign.values);
        defineLocalVars(localAssign.names);
        int size = localAssign.names.size();
        List list = localAssign.values;
        int size2 = list != null ? list.size() : 0;
        boolean z10 = size2 > 0 && size2 < size && ((Exp) localAssign.values.get(size2 + (-1))).isvarargexp();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 >= (z10 ? size2 - 1 : size2)) {
                break;
            }
            if (localAssign.values.get(i10) instanceof Exp.Constant) {
                ((Name) localAssign.names.get(i10)).variable.initialValue = ((Exp.Constant) localAssign.values.get(i10)).value;
            }
        }
        if (z10) {
            return;
        }
        while (size2 < size) {
            ((Name) localAssign.names.get(size2)).variable.initialValue = LuaValue.NIL;
            size2++;
        }
    }

    @Override
    public void visit(Stat.LocalFuncDef localFuncDef) {
        defineLocalVar(localFuncDef.name);
        super.visit(localFuncDef);
    }

    @Override
    public void visit(Stat.NumericFor numericFor) {
        pushScope();
        numericFor.scope = this.scope;
        defineLocalVar(numericFor.name);
        super.visit(numericFor);
        popScope();
    }
}
