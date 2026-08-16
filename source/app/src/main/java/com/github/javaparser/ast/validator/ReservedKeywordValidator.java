package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.utils.CodeGenerationUtils;

public class ReservedKeywordValidator extends VisitorValidator {
    private final String error;
    private final String keyword;

    public ReservedKeywordValidator(String keyword) {
        this.keyword = keyword;
        this.error = CodeGenerationUtils.f("'%s' cannot be used as an identifier as it is a keyword.", keyword);
    }

    @Override
    public void visit(Name n10, ProblemReporter arg) {
        if (n10.getIdentifier().equals(this.keyword)) {
            arg.report(n10, this.error, new Object[0]);
        }
        super.visit(n10, (Name) arg);
    }

    @Override
    public void visit(SimpleName n10, ProblemReporter arg) {
        if (n10.getIdentifier().equals(this.keyword)) {
            arg.report(n10, this.error, new Object[0]);
        }
        super.visit(n10, (SimpleName) arg);
    }
}
