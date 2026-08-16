package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public interface Invocation extends InvocationSite {
    Expression[] arguments();

    MethodBinding binding();

    void cleanUpInferenceContexts();

    InferenceContext18 getInferenceContext(ParameterizedMethodBinding parameterizedMethodBinding);

    void registerInferenceContext(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding, InferenceContext18 inferenceContext18);

    void registerResult(TypeBinding typeBinding, MethodBinding methodBinding);
}
