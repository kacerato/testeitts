package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;

public class VariablesInfo {
    ClassFile[] classFiles;
    char[] className;
    char[] packageName;
    int variableCount;
    GlobalVariable[] variables;

    public VariablesInfo(char[] cArr, char[] cArr2, ClassFile[] classFileArr, GlobalVariable[] globalVariableArr, int i10) {
        this.packageName = cArr;
        this.className = cArr2;
        this.classFiles = classFileArr;
        this.variables = globalVariableArr;
        this.variableCount = i10;
    }

    public int indexOf(GlobalVariable globalVariable) {
        for (int i10 = 0; i10 < this.variableCount; i10++) {
            if (globalVariable.equals(this.variables[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public GlobalVariable varNamed(char[] cArr) {
        GlobalVariable[] globalVariableArr = this.variables;
        for (int i10 = 0; i10 < this.variableCount; i10++) {
            GlobalVariable globalVariable = globalVariableArr[i10];
            if (CharOperation.equals(cArr, globalVariable.name)) {
                return globalVariable;
            }
        }
        return null;
    }
}
