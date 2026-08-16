package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.exception.util.ExceptionContextProvider;
import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class MathArithmeticException extends ArithmeticException implements ExceptionContextProvider {
    private static final long serialVersionUID = -6024911025449780478L;
    private final ExceptionContext context;

    public MathArithmeticException() {
        ExceptionContext exceptionContext = new ExceptionContext(this);
        this.context = exceptionContext;
        exceptionContext.addMessage(LocalizedFormats.ARITHMETIC_EXCEPTION, new Object[0]);
    }

    @Override
    public ExceptionContext getContext() {
        return this.context;
    }

    @Override
    public String getLocalizedMessage() {
        return this.context.getLocalizedMessage();
    }

    @Override
    public String getMessage() {
        return this.context.getMessage();
    }

    public MathArithmeticException(Localizable localizable, Object... objArr) {
        ExceptionContext exceptionContext = new ExceptionContext(this);
        this.context = exceptionContext;
        exceptionContext.addMessage(localizable, objArr);
    }
}
