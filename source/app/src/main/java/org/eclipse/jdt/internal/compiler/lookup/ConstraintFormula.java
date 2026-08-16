package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

public abstract class ConstraintFormula extends ReductionResult {
    static final char LEFT_ANGLE_BRACKET = '\u27e8';
    static final char RIGHT_ANGLE_BRACKET = '\u27e9';
    static final List<InferenceVariable> EMPTY_VARIABLE_LIST = Collections.emptyList();
    static final ConstraintFormula[] NO_CONSTRAINTS = new ConstraintTypeFormula[0];

    public void appendTypeName(StringBuffer stringBuffer, TypeBinding typeBinding) {
        if (typeBinding instanceof CaptureBinding18) {
            stringBuffer.append(typeBinding.toString());
        } else {
            stringBuffer.append(typeBinding.readableName());
        }
    }

    public boolean applySubstitution(BoundSet boundSet, InferenceVariable[] inferenceVariableArr) {
        for (InferenceVariable inferenceVariable : inferenceVariableArr) {
            TypeBinding instantiation = boundSet.getInstantiation(inferenceVariable, null);
            if (instantiation == null) {
                return false;
            }
            this.right = this.right.substituteInferenceVariable(inferenceVariable, instantiation);
        }
        return true;
    }

    public Collection<InferenceVariable> inputVariables(InferenceContext18 inferenceContext18) {
        return EMPTY_VARIABLE_LIST;
    }

    public Collection<InferenceVariable> outputVariables(InferenceContext18 inferenceContext18) {
        HashSet hashSet = new HashSet();
        this.right.collectInferenceVariables(hashSet);
        if (!hashSet.isEmpty()) {
            hashSet.removeAll(inputVariables(inferenceContext18));
        }
        return hashSet;
    }

    public abstract Object reduce(InferenceContext18 inferenceContext18) throws InferenceFailureException;
}
