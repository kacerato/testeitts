package org.blacksquircle.ui.editorkit.model;

import Nf.a;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;

public final class LinesCollection implements Iterable<Line>, a {

    @NotNull
    private final List<Line> lines = H.U(new Line(0));

    public static final class Line implements Comparable<Line> {
        private int start;

        public Line(int i10) {
            this.start = i10;
        }

        public static Line copy$default(Line line, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = line.start;
            }
            return line.copy(i10);
        }

        public final int component1() {
            return this.start;
        }

        @NotNull
        public final Line copy(int i10) {
            return new Line(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Line) && this.start == ((Line) obj).start;
        }

        public final int getStart() {
            return this.start;
        }

        public int hashCode() {
            return Integer.hashCode(this.start);
        }

        public final void setStart(int i10) {
            this.start = i10;
        }

        @NotNull
        public String toString() {
            return "Line(start=" + this.start + ')';
        }

        @Override
        public int compareTo(@NotNull Line other) {
            M.p(other, "other");
            return this.start - other.start;
        }
    }

    public final void add(int i10, int i11) {
        this.lines.add(i10, new Line(i11));
    }

    public final void clear() {
        this.lines.clear();
        this.lines.add(new Line(0));
    }

    public final int getIndexForEndOfLine(int i10) {
        return getIndexForLine(i10 + 1) - 1;
    }

    public final int getIndexForLine(int i10) {
        if (i10 >= getLineCount()) {
            return -1;
        }
        return this.lines.get(i10).getStart();
    }

    public final int getIndexForStartOfLine(int i10) {
        return getIndexForLine(i10);
    }

    @NotNull
    public final Line getLine(int i10) {
        return (i10 <= -1 || i10 >= getLineCount()) ? new Line(0) : this.lines.get(i10);
    }

    public final int getLineCount() {
        return this.lines.size();
    }

    public final int getLineForIndex(int i10) {
        int lineCount = getLineCount() - 1;
        int i11 = 0;
        while (i11 < lineCount) {
            int i12 = (i11 + lineCount) / 2;
            if (i10 >= getIndexForLine(i12)) {
                if (i10 > getIndexForLine(i12)) {
                    i11 = i12 + 1;
                    if (i10 < getIndexForLine(i11)) {
                    }
                }
                return i12;
            }
            lineCount = i12;
        }
        return getLineCount() - 1;
    }

    @Override
    @NotNull
    public Iterator<Line> iterator() {
        return this.lines.iterator();
    }

    public final void remove(int i10) {
        if (i10 != 0) {
            this.lines.remove(i10);
        }
    }

    public final void shiftIndexes(int i10, int i11) {
        if (i10 > 0 && i10 < getLineCount()) {
            while (i10 < getLineCount()) {
                int indexForLine = getIndexForLine(i10) + i11;
                if (i10 <= 0 || indexForLine > 0) {
                    this.lines.get(i10).setStart(indexForLine);
                } else {
                    remove(i10);
                    i10--;
                }
                i10++;
            }
        }
    }
}
