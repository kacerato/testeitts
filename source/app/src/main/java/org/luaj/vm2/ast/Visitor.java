package org.luaj.vm2.ast;

import java.util.List;
import org.luaj.vm2.ast.Exp;
import org.luaj.vm2.ast.Stat;

public abstract class Visitor {
    public void visit(String str) {
    }

    public void visitExps(List list) {
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Exp) list.get(i10)).accept(this);
            }
        }
    }

    public void visitNames(List list) {
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                visit((Name) list.get(i10));
            }
        }
    }

    public void visitVars(List list) {
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Exp.VarExp) list.get(i10)).accept(this);
            }
        }
    }

    public void visit(Block block) {
        visit(block.scope);
        List list = block.stats;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Stat) block.stats.get(i10)).accept(this);
            }
        }
    }

    public void visit(Chunk chunk) {
        chunk.block.accept(this);
    }

    public void visit(Exp.AnonFuncDef anonFuncDef) {
        anonFuncDef.body.accept(this);
    }

    public void visit(Exp.BinopExp binopExp) {
        binopExp.lhs.accept(this);
        binopExp.rhs.accept(this);
    }

    public void visit(Exp.Constant constant) {
    }

    public void visit(Exp.FieldExp fieldExp) {
        fieldExp.lhs.accept(this);
        visit(fieldExp.name);
    }

    public void visit(Exp.FuncCall funcCall) {
        funcCall.lhs.accept(this);
        funcCall.args.accept(this);
    }

    public void visit(Exp.IndexExp indexExp) {
        indexExp.lhs.accept(this);
        indexExp.exp.accept(this);
    }

    public void visit(Exp.MethodCall methodCall) {
        methodCall.lhs.accept(this);
        visit(methodCall.name);
        methodCall.args.accept(this);
    }

    public void visit(Exp.NameExp nameExp) {
        visit(nameExp.name);
    }

    public void visit(Exp.ParensExp parensExp) {
        parensExp.exp.accept(this);
    }

    public void visit(Exp.UnopExp unopExp) {
        unopExp.rhs.accept(this);
    }

    public void visit(Exp.VarargsExp varargsExp) {
    }

    public void visit(FuncArgs funcArgs) {
        visitExps(funcArgs.exps);
    }

    public void visit(FuncBody funcBody) {
        visit(funcBody.scope);
        funcBody.parlist.accept(this);
        funcBody.block.accept(this);
    }

    public void visit(Name name) {
    }

    public void visit(NameScope nameScope) {
    }

    public void visit(ParList parList) {
        visitNames(parList.names);
    }

    public void visit(Stat.Assign assign) {
        visitVars(assign.vars);
        visitExps(assign.exps);
    }

    public void visit(Stat.Break r12) {
    }

    public void visit(Stat.FuncCallStat funcCallStat) {
        funcCallStat.funccall.accept(this);
    }

    public void visit(Stat.FuncDef funcDef) {
        funcDef.body.accept(this);
    }

    public void visit(Stat.GenericFor genericFor) {
        visit(genericFor.scope);
        visitNames(genericFor.names);
        visitExps(genericFor.exps);
        genericFor.block.accept(this);
    }

    public void visit(Stat.Goto r12) {
    }

    public void visit(Stat.IfThenElse ifThenElse) {
        ifThenElse.ifexp.accept(this);
        ifThenElse.ifblock.accept(this);
        List list = ifThenElse.elseifblocks;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Exp) ifThenElse.elseifexps.get(i10)).accept(this);
                ((Block) ifThenElse.elseifblocks.get(i10)).accept(this);
            }
        }
        Block block = ifThenElse.elseblock;
        if (block != null) {
            visit(block);
        }
    }

    public void visit(Stat.Label label) {
    }

    public void visit(Stat.LocalAssign localAssign) {
        visitNames(localAssign.names);
        visitExps(localAssign.values);
    }

    public void visit(Stat.LocalFuncDef localFuncDef) {
        visit(localFuncDef.name);
        localFuncDef.body.accept(this);
    }

    public void visit(Stat.NumericFor numericFor) {
        visit(numericFor.scope);
        visit(numericFor.name);
        numericFor.initial.accept(this);
        numericFor.limit.accept(this);
        Exp exp = numericFor.step;
        if (exp != null) {
            exp.accept(this);
        }
        numericFor.block.accept(this);
    }

    public void visit(Stat.RepeatUntil repeatUntil) {
        repeatUntil.block.accept(this);
        repeatUntil.exp.accept(this);
    }

    public void visit(Stat.Return r12) {
        visitExps(r12.values);
    }

    public void visit(Stat.WhileDo whileDo) {
        whileDo.exp.accept(this);
        whileDo.block.accept(this);
    }

    public void visit(TableConstructor tableConstructor) {
        List list = tableConstructor.fields;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((TableField) tableConstructor.fields.get(i10)).accept(this);
            }
        }
    }

    public void visit(TableField tableField) {
        visit(tableField.name);
        Exp exp = tableField.index;
        if (exp != null) {
            exp.accept(this);
        }
        tableField.rhs.accept(this);
    }
}
