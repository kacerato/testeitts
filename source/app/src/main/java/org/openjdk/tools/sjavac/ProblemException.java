package org.openjdk.tools.sjavac;

public class ProblemException extends Exception {
    static final long serialVersionUID = -3387516993124229949L;

    public ProblemException(String str) {
        super(str);
    }
}
