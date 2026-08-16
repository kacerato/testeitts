package org.eclipse.jdt.internal.compiler;

public class DefaultErrorHandlingPolicies {
    public static IErrorHandlingPolicy exitAfterAllProblems() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return false;
            }

            @Override
            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public static IErrorHandlingPolicy exitOnFirstError() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return false;
            }

            @Override
            public boolean stopOnFirstError() {
                return true;
            }
        };
    }

    public static IErrorHandlingPolicy ignoreAllProblems() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return true;
            }

            @Override
            public boolean proceedOnErrors() {
                return true;
            }

            @Override
            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public static IErrorHandlingPolicy proceedOnFirstError() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return true;
            }

            @Override
            public boolean stopOnFirstError() {
                return true;
            }
        };
    }

    public static IErrorHandlingPolicy proceedWithAllProblems() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return true;
            }

            @Override
            public boolean stopOnFirstError() {
                return false;
            }
        };
    }
}
