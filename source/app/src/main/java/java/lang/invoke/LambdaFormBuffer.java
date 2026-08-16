package java.lang.invoke;

import java.lang.invoke.LambdaForm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import yd.C16181m;

public final class LambdaFormBuffer {
    private int arity;
    private int length;
    private LambdaForm.Name[] names;
    private LambdaForm.Name[] originalNames;
    private byte flags;
    private int firstChange;
    private LambdaForm.Name resultName;
    private ArrayList<LambdaForm.Name> dups;
    private static final int F_TRANS = 16;
    private static final int F_OWNED = 3;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !LambdaFormBuffer.class.desiredAssertionStatus();
    }

    public LambdaFormBuffer(LambdaForm lf2) {
        this.arity = lf2.arity;
        setNames(lf2.names);
        int result = lf2.result;
        result = result == -2 ? this.length - 1 : result;
        if (result >= 0 && lf2.names[result].type != LambdaForm.BasicType.V_TYPE) {
            this.resultName = lf2.names[result];
        }
        if (!$assertionsDisabled && !lf2.nameRefsAreLegal()) {
            throw new AssertionError();
        }
    }

    private LambdaForm lambdaForm() {
        if ($assertionsDisabled || !inTrans()) {
            return LambdaForm.create(this.arity, nameArray(), resultIndex());
        }
        throw new AssertionError();
    }

    public LambdaForm.Name name(int i10) {
        if ($assertionsDisabled || i10 < this.length) {
            return this.names[i10];
        }
        throw new AssertionError();
    }

    LambdaForm.Name[] nameArray() {
        return (LambdaForm.Name[]) Arrays.copyOf(this.names, this.length);
    }

    int resultIndex() {
        if (this.resultName == null) {
            return -1;
        }
        int index = indexOf(this.resultName, this.names);
        if ($assertionsDisabled || index >= 0) {
            return index;
        }
        throw new AssertionError();
    }

    void setNames(LambdaForm.Name[] names2) {
        this.originalNames = names2;
        this.names = names2;
        this.length = names2.length;
        this.flags = (byte) 0;
    }

    private boolean verifyArity() {
        for (int i10 = 0; i10 < this.arity && i10 < this.firstChange; i10++) {
            if (!$assertionsDisabled && !this.names[i10].isParam()) {
                throw new AssertionError((Object) (C16181m.f130230g + i10 + "=" + ((Object) this.names[i10])));
            }
        }
        for (int i11 = this.arity; i11 < this.length; i11++) {
            if (!$assertionsDisabled && this.names[i11].isParam()) {
                throw new AssertionError((Object) (C16181m.f130230g + i11 + "=" + ((Object) this.names[i11])));
            }
        }
        for (int i12 = this.length; i12 < this.names.length; i12++) {
            if (!$assertionsDisabled && this.names[i12] != null) {
                throw new AssertionError((Object) (C16181m.f130230g + i12 + "=" + ((Object) this.names[i12])));
            }
        }
        if (this.resultName != null) {
            int resultIndex = indexOf(this.resultName, this.names);
            if (!$assertionsDisabled && resultIndex < 0) {
                throw new AssertionError((Object) ("not found: " + this.resultName.exprString() + ((Object) Arrays.asList(this.names))));
            }
            if ($assertionsDisabled || this.names[resultIndex] == this.resultName) {
                return true;
            }
            throw new AssertionError();
        }
        return true;
    }

    private boolean verifyFirstChange() {
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < this.length; i10++) {
            if (this.names[i10] != this.originalNames[i10]) {
                if ($assertionsDisabled || this.firstChange == i10) {
                    return true;
                }
                throw new AssertionError(Arrays.asList(Integer.valueOf(this.firstChange), Integer.valueOf(i10), this.originalNames[i10].exprString(), Arrays.asList(this.names)));
            }
        }
        if ($assertionsDisabled || this.firstChange == this.length) {
            return true;
        }
        throw new AssertionError(Arrays.asList(Integer.valueOf(this.firstChange), Arrays.asList(this.names)));
    }

    private static int indexOf(LambdaForm.NamedFunction fn2, List<LambdaForm.NamedFunction> fns) {
        for (int i10 = 0; i10 < fns.size(); i10++) {
            if (fns.get(i10) == fn2) {
                return i10;
            }
        }
        return -1;
    }

    private static int indexOf(LambdaForm.Name n10, LambdaForm.Name[] ns) {
        for (int i10 = 0; i10 < ns.length; i10++) {
            if (ns[i10] == n10) {
                return i10;
            }
        }
        return -1;
    }

    boolean inTrans() {
        return (this.flags & 16) != 0;
    }

    int ownedCount() {
        return this.flags & 3;
    }

    void growNames(int insertPos, int growLength) {
        int oldLength = this.length;
        int newLength = oldLength + growLength;
        int oc2 = ownedCount();
        if (oc2 == 0 || newLength > this.names.length) {
            this.names = (LambdaForm.Name[]) Arrays.copyOf(this.names, ((this.names.length + growLength) * 5) / 4);
            if (oc2 == 0) {
                this.flags = (byte) (this.flags + 1);
                oc2++;
                if (!$assertionsDisabled && ownedCount() != oc2) {
                    throw new AssertionError();
                }
            }
        }
        if (this.originalNames != null && this.originalNames.length < this.names.length) {
            this.originalNames = (LambdaForm.Name[]) Arrays.copyOf(this.originalNames, this.names.length);
            if (oc2 == 1) {
                this.flags = (byte) (this.flags + 1);
                int oc3 = oc2 + 1;
                if (!$assertionsDisabled && ownedCount() != oc3) {
                    throw new AssertionError();
                }
            }
        }
        if (growLength == 0) {
            return;
        }
        int insertEnd = insertPos + growLength;
        int tailLength = oldLength - insertPos;
        System.arraycopy(this.names, insertPos, this.names, insertEnd, tailLength);
        Arrays.fill(this.names, insertPos, insertEnd, (Object) null);
        if (this.originalNames != null) {
            System.arraycopy(this.originalNames, insertPos, this.originalNames, insertEnd, tailLength);
            Arrays.fill(this.originalNames, insertPos, insertEnd, (Object) null);
        }
        this.length = newLength;
        if (this.firstChange >= insertPos) {
            this.firstChange += growLength;
        }
    }

    public int lastIndexOf(LambdaForm.Name n10) {
        int result = -1;
        for (int i10 = 0; i10 < this.length; i10++) {
            if (this.names[i10] == n10) {
                result = i10;
            }
        }
        return result;
    }

    private void noteDuplicate(int pos1, int pos2) {
        LambdaForm.Name n10 = this.names[pos1];
        if (!$assertionsDisabled && n10 != this.names[pos2]) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.originalNames[pos1] == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.originalNames[pos2] != null && this.originalNames[pos2] != n10) {
            throw new AssertionError();
        }
        if (this.dups == null) {
            this.dups = new ArrayList<>();
        }
        this.dups.add(n10);
    }

    private void clearDuplicatesAndNulls() {
        if (this.dups != null) {
            if (!$assertionsDisabled && ownedCount() < 1) {
                throw new AssertionError();
            }
            Iterator<LambdaForm.Name> it = this.dups.iterator();
            while (it.hasNext()) {
                LambdaForm.Name dup = it.next();
                int i10 = this.firstChange;
                while (true) {
                    if (i10 >= this.length) {
                        break;
                    }
                    if (this.names[i10] != dup || this.originalNames[i10] == dup) {
                        i10++;
                    } else {
                        this.names[i10] = null;
                        if (!$assertionsDisabled && !Arrays.asList(this.names).contains(dup)) {
                            throw new AssertionError();
                        }
                    }
                }
            }
            this.dups.clear();
        }
        int oldLength = this.length;
        int i11 = this.firstChange;
        while (i11 < this.length) {
            if (this.names[i11] == null) {
                int i12 = this.length - 1;
                this.length = i12;
                System.arraycopy(this.names, i11 + 1, this.names, i11, i12 - i11);
                i11--;
            }
            i11++;
        }
        if (this.length < oldLength) {
            Arrays.fill(this.names, this.length, oldLength, (Object) null);
        }
        if (!$assertionsDisabled && Arrays.asList(this.names).subList(0, this.length).contains(null)) {
            throw new AssertionError();
        }
    }

    public void startEdit() {
        if (!$assertionsDisabled && !verifyArity()) {
            throw new AssertionError();
        }
        int oc2 = ownedCount();
        if (!$assertionsDisabled && inTrans()) {
            throw new AssertionError();
        }
        this.flags = (byte) (this.flags | 16);
        LambdaForm.Name[] oldNames = this.names;
        LambdaForm.Name[] ownBuffer = oc2 == 2 ? this.originalNames : null;
        if (!$assertionsDisabled && ownBuffer == oldNames) {
            throw new AssertionError();
        }
        if (ownBuffer != null && ownBuffer.length >= this.length) {
            this.names = copyNamesInto(ownBuffer);
        } else {
            this.names = (LambdaForm.Name[]) Arrays.copyOf(oldNames, Math.max(this.length + 2, oldNames.length));
            if (oc2 < 2) {
                this.flags = (byte) (this.flags + 1);
            }
            if (!$assertionsDisabled && ownedCount() != oc2 + 1) {
                throw new AssertionError();
            }
        }
        this.originalNames = oldNames;
        if (!$assertionsDisabled && this.originalNames == this.names) {
            throw new AssertionError();
        }
        this.firstChange = this.length;
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
    }

    public void changeName(int i10, LambdaForm.Name name) {
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && i10 >= this.length) {
            throw new AssertionError();
        }
        LambdaForm.Name oldName = this.names[i10];
        if (!$assertionsDisabled && oldName != this.originalNames[i10]) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !verifyFirstChange()) {
            throw new AssertionError();
        }
        if (ownedCount() == 0) {
            growNames(0, 0);
        }
        this.names[i10] = name;
        if (this.firstChange > i10) {
            this.firstChange = i10;
        }
        if (this.resultName != null && this.resultName == oldName) {
            this.resultName = name;
        }
    }

    public void setResult(LambdaForm.Name name) {
        if (!$assertionsDisabled && name != null && lastIndexOf(name) < 0) {
            throw new AssertionError();
        }
        this.resultName = name;
    }

    public LambdaForm endEdit() {
        LambdaForm.Name newName;
        if (!$assertionsDisabled && !verifyFirstChange()) {
            throw new AssertionError();
        }
        for (int i10 = Math.max(this.firstChange, this.arity); i10 < this.length; i10++) {
            LambdaForm.Name name = this.names[i10];
            if (name != null && (newName = name.replaceNames(this.originalNames, this.names, this.firstChange, i10)) != name) {
                this.names[i10] = newName;
                if (this.resultName == name) {
                    this.resultName = newName;
                }
            }
        }
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        this.flags = (byte) (this.flags & (-17));
        clearDuplicatesAndNulls();
        this.originalNames = null;
        if (this.firstChange < this.arity) {
            LambdaForm.Name[] exprs = new LambdaForm.Name[this.arity - this.firstChange];
            int argp = this.firstChange;
            int exprp = 0;
            for (int i11 = this.firstChange; i11 < this.arity; i11++) {
                LambdaForm.Name name2 = this.names[i11];
                if (name2 != null && name2.isParam()) {
                    int i12 = argp;
                    argp++;
                    this.names[i12] = name2;
                } else {
                    int i13 = exprp;
                    exprp++;
                    exprs[i13] = name2;
                }
            }
            if (!$assertionsDisabled && exprp != this.arity - argp) {
                throw new AssertionError();
            }
            System.arraycopy(exprs, 0, this.names, argp, exprp);
            this.arity -= exprp;
        }
        if ($assertionsDisabled || verifyArity()) {
            return lambdaForm();
        }
        throw new AssertionError();
    }

    private LambdaForm.Name[] copyNamesInto(LambdaForm.Name[] buffer) {
        System.arraycopy(this.names, 0, buffer, 0, this.length);
        Arrays.fill(buffer, this.length, buffer.length, (Object) null);
        return buffer;
    }

    public LambdaFormBuffer replaceFunctions(List<LambdaForm.NamedFunction> oldFns, List<LambdaForm.NamedFunction> newFns, Object... forArguments) {
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        if (oldFns.isEmpty()) {
            return this;
        }
        for (int i10 = this.arity; i10 < this.length; i10++) {
            LambdaForm.Name n10 = this.names[i10];
            int nfi = indexOf(n10.function, oldFns);
            if (nfi >= 0 && Arrays.equals(n10.arguments, forArguments)) {
                changeName(i10, new LambdaForm.Name(newFns.get(nfi), n10.arguments));
            }
        }
        return this;
    }

    private void replaceName(int pos, LambdaForm.Name binding) {
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !verifyArity()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pos >= this.arity) {
            throw new AssertionError();
        }
        LambdaForm.Name param = this.names[pos];
        if (!$assertionsDisabled && !param.isParam()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && param.type != binding.type) {
            throw new AssertionError();
        }
        changeName(pos, binding);
    }

    public LambdaFormBuffer renameParameter(int pos, LambdaForm.Name newParam) {
        if (!$assertionsDisabled && !newParam.isParam()) {
            throw new AssertionError();
        }
        replaceName(pos, newParam);
        return this;
    }

    public LambdaFormBuffer replaceParameterByNewExpression(int pos, LambdaForm.Name binding) {
        if (!$assertionsDisabled && binding.isParam()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && lastIndexOf(binding) >= 0) {
            throw new AssertionError();
        }
        replaceName(pos, binding);
        return this;
    }

    public LambdaFormBuffer replaceParameterByCopy(int pos, int valuePos) {
        if (!$assertionsDisabled && pos == valuePos) {
            throw new AssertionError();
        }
        replaceName(pos, this.names[valuePos]);
        noteDuplicate(pos, valuePos);
        return this;
    }

    private void insertName(int pos, LambdaForm.Name expr, boolean isParameter) {
        if (!$assertionsDisabled && !inTrans()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !verifyArity()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (!isParameter ? pos >= this.arity : pos <= this.arity)) {
            throw new AssertionError();
        }
        growNames(pos, 1);
        if (isParameter) {
            this.arity++;
        }
        changeName(pos, expr);
    }

    public LambdaFormBuffer insertExpression(int pos, LambdaForm.Name expr) {
        if (!$assertionsDisabled && expr.isParam()) {
            throw new AssertionError();
        }
        insertName(pos, expr, false);
        return this;
    }

    public LambdaFormBuffer insertParameter(int pos, LambdaForm.Name param) {
        if (!$assertionsDisabled && !param.isParam()) {
            throw new AssertionError();
        }
        insertName(pos, param, true);
        return this;
    }
}
