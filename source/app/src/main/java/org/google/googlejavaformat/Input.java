package org.google.googlejavaformat;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.C12557p1;
import w2.z;

public abstract class Input extends InputOutput {

    public interface Tok {
        int getColumn();

        int getIndex();

        String getOriginalText();

        int getPosition();

        String getText();

        boolean isComment();

        boolean isJavadocComment();

        boolean isNewline();

        boolean isSlashSlashComment();

        boolean isSlashStarComment();

        int length();
    }

    public interface Token {
        Tok getTok();

        AbstractC12521g1<? extends Tok> getToksAfter();

        AbstractC12521g1<? extends Tok> getToksBefore();
    }

    public FormatterDiagnostic createDiagnostic(int inputPosition, String message) {
        return FormatterDiagnostic.create(getLineNumber(inputPosition), getColumnNumber(inputPosition), message);
    }

    public abstract int getColumnNumber(int inputPosition);

    public abstract int getLineNumber(int inputPosition);

    public abstract AbstractC12529i1<Integer, Integer> getPositionToColumnMap();

    public abstract C12557p1<Integer, ? extends Token> getPositionTokenMap();

    public abstract String getText();

    public abstract AbstractC12521g1<? extends Token> getTokens();

    @Override
    public String toString() {
        return z.c(this).f("super", super.toString()).toString();
    }
}
