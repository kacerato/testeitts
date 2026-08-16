package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;

public interface EvaluationConstants {
    public static final char[] CODE_SNIPPET_NAME;
    public static final char[] DELEGATE_THIS;
    public static final char[] LOCAL_VAR_PREFIX;
    public static final char[] PACKAGE_NAME;
    public static final String RESULT_TYPE_FIELD = "resultType";
    public static final String RESULT_VALUE_FIELD = "resultValue";
    public static final char[] ROOT_CLASS_NAME;
    public static final char[][] ROOT_COMPOUND_NAME;
    public static final String ROOT_FULL_CLASS_NAME;
    public static final String RUN_METHOD = "run";
    public static final char[] SETRESULT_ARGUMENTS;
    public static final char[] SETRESULT_SELECTOR;
    public static final char[] CODE_SNIPPET_CLASS_NAME_PREFIX = "CodeSnippet_".toCharArray();
    public static final char[] GLOBAL_VARS_CLASS_NAME_PREFIX = "GlobalVariables_".toCharArray();

    static {
        char[] charArray = "org.eclipse.jdt.internal.eval.target".toCharArray();
        PACKAGE_NAME = charArray;
        CODE_SNIPPET_NAME = "org/eclipse/jdt/internal/eval/target/CodeSnippet".toCharArray();
        char[] charArray2 = "CodeSnippet".toCharArray();
        ROOT_CLASS_NAME = charArray2;
        ROOT_FULL_CLASS_NAME = new String(charArray) + "." + new String(charArray2);
        SETRESULT_SELECTOR = "setResult".toCharArray();
        SETRESULT_ARGUMENTS = "Ljava.lang.Object;Ljava.lang.Class;".toCharArray();
        ROOT_COMPOUND_NAME = CharOperation.arrayConcat(CharOperation.splitOn('.', charArray), charArray2);
        LOCAL_VAR_PREFIX = "val$".toCharArray();
        DELEGATE_THIS = "val$this".toCharArray();
    }
}
