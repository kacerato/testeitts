package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;

public class CodeSnippetEnvironment implements INameEnvironment, EvaluationConstants {
    EvaluationContext context;
    INameEnvironment env;

    public CodeSnippetEnvironment(INameEnvironment iNameEnvironment, EvaluationContext evaluationContext) {
        this.env = iNameEnvironment;
        this.context = evaluationContext;
    }

    @Override
    public void cleanup() {
        this.env.cleanup();
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr) {
        NameEnvironmentAnswer findType = this.env.findType(cArr);
        if (findType != null) {
            return findType;
        }
        if (CharOperation.equals(cArr, EvaluationConstants.ROOT_COMPOUND_NAME)) {
            IBinaryType rootCodeSnippetBinary = this.context.getRootCodeSnippetBinary();
            if (rootCodeSnippetBinary == null) {
                return null;
            }
            return new NameEnvironmentAnswer(rootCodeSnippetBinary, (AccessRestriction) null);
        }
        for (ClassFile classFile : this.context.installedVars.classFiles) {
            if (CharOperation.equals(cArr, classFile.getCompoundName())) {
                try {
                    return new NameEnvironmentAnswer(new ClassFileReader(classFile.getBytes(), null), (AccessRestriction) null);
                } catch (ClassFormatException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    @Override
    public boolean isPackage(char[][] cArr, char[] cArr2) {
        return this.env.isPackage(cArr, cArr2);
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2) {
        NameEnvironmentAnswer findType = this.env.findType(cArr, cArr2);
        return findType != null ? findType : findType(CharOperation.arrayConcat(cArr2, cArr));
    }
}
