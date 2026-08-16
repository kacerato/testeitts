package org.eclipse.jdt.internal.formatter;

import java.util.List;

public abstract class TokenTraverser {
    private Token current;
    private int lineBreaksAfter;
    private int lineBreaksBefore;
    private Token next;
    private Token previous;
    private boolean spaceAfter;
    private boolean spaceBefore;
    protected int counter = 0;
    protected int value = 0;
    private boolean structureChanged = false;

    private void initTraverse(List<Token> list, int i10) {
        Token token;
        if (list.isEmpty()) {
            return;
        }
        boolean z10 = false;
        this.structureChanged = false;
        this.next = null;
        this.previous = null;
        if (i10 > 0) {
            this.previous = list.get(i10 - 1);
        }
        this.current = list.get(i10);
        Token token2 = this.previous;
        this.lineBreaksBefore = Math.max(token2 != null ? token2.getLineBreaksAfter() : 0, this.current.getLineBreaksBefore());
        boolean isSpaceBefore = this.current.isSpaceBefore();
        this.spaceBefore = isSpaceBefore;
        if (this.lineBreaksBefore == 0) {
            if (isSpaceBefore || ((token = this.previous) != null && token.isSpaceAfter())) {
                z10 = true;
            }
            this.spaceBefore = z10;
        }
    }

    public Token getCurrent() {
        return this.current;
    }

    public int getLineBreaksAfter() {
        return this.lineBreaksAfter;
    }

    public int getLineBreaksBefore() {
        return this.lineBreaksBefore;
    }

    public Token getNext() {
        return this.next;
    }

    public Token getPrevious() {
        return this.previous;
    }

    public boolean isSpaceAfter() {
        return this.spaceAfter;
    }

    public boolean isSpaceBefore() {
        return this.spaceBefore;
    }

    public void structureChanged() {
        this.structureChanged = true;
    }

    public abstract boolean token(Token token, int i10);

    public int traverse(List<Token> list, int i10) {
        Token token;
        initTraverse(list, i10);
        while (true) {
            boolean z10 = true;
            if (i10 >= list.size()) {
                return list.size() - 1;
            }
            if (this.structureChanged) {
                initTraverse(list, i10);
            }
            this.next = null;
            if (i10 < list.size() - 1) {
                this.next = list.get(i10 + 1);
            }
            int lineBreaksAfter = this.current.getLineBreaksAfter();
            Token token2 = this.next;
            this.lineBreaksAfter = Math.max(lineBreaksAfter, token2 != null ? token2.getLineBreaksBefore() : 0);
            boolean isSpaceAfter = this.current.isSpaceAfter();
            this.spaceAfter = isSpaceAfter;
            if (this.lineBreaksAfter == 0) {
                if (!isSpaceAfter && ((token = this.next) == null || !token.isSpaceBefore())) {
                    z10 = false;
                }
                this.spaceAfter = z10;
            }
            if (!token(this.current, i10)) {
                return i10;
            }
            Token token3 = this.next;
            if (token3 != null) {
                this.previous = this.current;
                this.current = token3;
                int i11 = this.lineBreaksAfter;
                this.lineBreaksBefore = i11;
                this.spaceBefore = this.spaceAfter;
                if (i11 > 0) {
                    this.spaceBefore = token3.isSpaceBefore();
                }
            }
            i10++;
        }
    }
}
