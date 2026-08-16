package org.google.googlejavaformat.java.javadoc;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import com.google.common.collect.Ordering;
import org.google.googlejavaformat.java.javadoc.Token;
import w2.H;
import w2.P;

final class JavadocWriter {
    private static final AbstractC12564r1<Token.Type> START_OF_LINE_TOKENS = D2.l(Token.Type.LIST_ITEM_OPEN_TAG, Token.Type.PARAGRAPH_OPEN_TAG, Token.Type.HEADER_OPEN_TAG);
    private boolean atStartOfLine;
    private final int blockIndent;
    private boolean continuingFooterTag;
    private boolean continuingListItemOfInnermostList;
    private int indentForMoeEndStripComment;
    private final JavadocOptions options;
    private int remainingOnLine;
    private Token requestedMoeBeginStripComment;
    private boolean wroteAnythingSignificant;
    private final StringBuilder output = new StringBuilder();
    private final NestingCounter continuingListItemCount = new NestingCounter();
    private final NestingCounter continuingListCount = new NestingCounter();
    private final NestingCounter postWriteModifiedContinuingListCount = new NestingCounter();
    private RequestedWhitespace requestedWhitespace = RequestedWhitespace.NONE;

    public enum AutoIndent {
        AUTO_INDENT,
        NO_AUTO_INDENT
    }

    public enum RequestedWhitespace {
        NONE,
        WHITESPACE,
        NEWLINE,
        BLANK_LINE
    }

    public JavadocWriter(int blockIndent, JavadocOptions options) {
        this.blockIndent = blockIndent;
        this.options = (JavadocOptions) H.E(options);
    }

    private void appendSpaces(int count) {
        this.output.append(P.j(" ", count));
    }

    private int innerIndent() {
        int value = (this.continuingListItemCount.value() * 4) + (this.continuingListCount.value() * 2);
        return this.continuingFooterTag ? value + 4 : value;
    }

    private void requestBlankLine() {
        requestWhitespace(RequestedWhitespace.BLANK_LINE);
    }

    private void requestNewline() {
        requestWhitespace(RequestedWhitespace.NEWLINE);
    }

    private void writeBlankLine() {
        this.output.append("\n");
        appendSpaces(this.blockIndent + 1);
        this.output.append("*");
        writeNewline();
    }

    private void writeNewline() {
        writeNewline(AutoIndent.AUTO_INDENT);
    }

    private void writeToken(Token token) {
        if (this.requestedMoeBeginStripComment != null) {
            requestNewline();
        }
        RequestedWhitespace requestedWhitespace = this.requestedWhitespace;
        RequestedWhitespace requestedWhitespace2 = RequestedWhitespace.BLANK_LINE;
        if (requestedWhitespace == requestedWhitespace2 && (this.postWriteModifiedContinuingListCount.isPositive() || this.continuingFooterTag)) {
            this.requestedWhitespace = RequestedWhitespace.NEWLINE;
        }
        RequestedWhitespace requestedWhitespace3 = this.requestedWhitespace;
        if (requestedWhitespace3 == requestedWhitespace2) {
            writeBlankLine();
            this.requestedWhitespace = RequestedWhitespace.NONE;
        } else if (requestedWhitespace3 == RequestedWhitespace.NEWLINE) {
            writeNewline();
            this.requestedWhitespace = RequestedWhitespace.NONE;
        }
        int i10 = this.requestedWhitespace == RequestedWhitespace.WHITESPACE ? 1 : 0;
        if (!this.atStartOfLine && token.length() + i10 > this.remainingOnLine) {
            writeNewline();
        }
        if (!this.atStartOfLine && i10 != 0) {
            this.output.append(" ");
            this.remainingOnLine--;
        }
        Token token2 = this.requestedMoeBeginStripComment;
        if (token2 != null) {
            this.output.append(token2.getValue());
            this.requestedMoeBeginStripComment = null;
            this.indentForMoeEndStripComment = innerIndent();
            requestNewline();
            writeToken(token);
            return;
        }
        this.output.append(token.getValue());
        if (!START_OF_LINE_TOKENS.contains(token.getType())) {
            this.atStartOfLine = false;
        }
        this.remainingOnLine -= token.length();
        this.requestedWhitespace = RequestedWhitespace.NONE;
        this.wroteAnythingSignificant = true;
    }

    public void requestMoeBeginStripComment(Token token) {
        this.requestedMoeBeginStripComment = (Token) H.E(token);
    }

    public void requestWhitespace() {
        requestWhitespace(RequestedWhitespace.WHITESPACE);
    }

    public String toString() {
        return this.output.toString();
    }

    public void writeBeginJavadoc() {
        this.output.append("/**");
        writeNewline();
    }

    public void writeBlockquoteOpenOrClose(Token token) {
        requestBlankLine();
        writeToken(token);
        requestBlankLine();
    }

    public void writeBr(Token token) {
        writeToken(token);
        requestNewline();
    }

    public void writeCodeClose(Token token) {
        writeToken(token);
    }

    public void writeCodeOpen(Token token) {
        writeToken(token);
    }

    public void writeEndJavadoc() {
        this.output.append("\n");
        appendSpaces(this.blockIndent + 1);
        this.output.append("*/");
    }

    public void writeFooterJavadocTagStart(Token token) {
        this.continuingListItemOfInnermostList = false;
        this.continuingListItemCount.reset();
        this.continuingListCount.reset();
        this.postWriteModifiedContinuingListCount.reset();
        if (this.wroteAnythingSignificant) {
            if (this.continuingFooterTag) {
                this.continuingFooterTag = false;
                requestNewline();
            } else {
                requestBlankLine();
            }
        }
        writeToken(token);
        this.continuingFooterTag = true;
    }

    public void writeHeaderClose(Token token) {
        writeToken(token);
        requestBlankLine();
    }

    public void writeHeaderOpen(Token token) {
        requestBlankLine();
        writeToken(token);
    }

    public void writeHtmlComment(Token token) {
        requestNewline();
        writeToken(token);
        requestNewline();
    }

    public void writeLineBreakNoAutoIndent() {
        writeNewline(AutoIndent.NO_AUTO_INDENT);
    }

    public void writeListClose(Token token) {
        requestNewline();
        this.continuingListItemCount.decrementIfPositive();
        this.continuingListCount.decrementIfPositive();
        writeToken(token);
        this.postWriteModifiedContinuingListCount.decrementIfPositive();
        requestBlankLine();
    }

    public void writeListItemOpen(Token token) {
        requestNewline();
        if (this.continuingListItemOfInnermostList) {
            this.continuingListItemOfInnermostList = false;
            this.continuingListItemCount.decrementIfPositive();
        }
        writeToken(token);
        this.continuingListItemOfInnermostList = true;
        this.continuingListItemCount.increment();
    }

    public void writeListOpen(Token token) {
        requestBlankLine();
        writeToken(token);
        this.continuingListItemOfInnermostList = false;
        this.continuingListCount.increment();
        this.postWriteModifiedContinuingListCount.increment();
        requestNewline();
    }

    public void writeLiteral(Token token) {
        writeToken(token);
    }

    public void writeMoeEndStripComment(Token token) {
        writeLineBreakNoAutoIndent();
        appendSpaces(this.indentForMoeEndStripComment);
        writeToken(token);
        requestNewline();
    }

    public void writeParagraphOpen(Token token) {
        if (this.wroteAnythingSignificant) {
            requestBlankLine();
            writeToken(token);
        }
    }

    public void writePreClose(Token token) {
        writeToken(token);
        requestBlankLine();
    }

    public void writePreOpen(Token token) {
        requestBlankLine();
        writeToken(token);
    }

    public void writeTableClose(Token token) {
        writeToken(token);
        requestBlankLine();
    }

    public void writeTableOpen(Token token) {
        requestBlankLine();
        writeToken(token);
    }

    private void requestWhitespace(RequestedWhitespace requestedWhitespace) {
        this.requestedWhitespace = (RequestedWhitespace) Ordering.A().s(requestedWhitespace, this.requestedWhitespace);
    }

    private void writeNewline(AutoIndent autoIndent) {
        this.output.append("\n");
        appendSpaces(this.blockIndent + 1);
        this.output.append("*");
        appendSpaces(1);
        this.remainingOnLine = (this.options.maxLineLength() - this.blockIndent) - 3;
        if (autoIndent == AutoIndent.AUTO_INDENT) {
            appendSpaces(innerIndent());
            this.remainingOnLine -= innerIndent();
        }
        this.atStartOfLine = true;
    }
}
