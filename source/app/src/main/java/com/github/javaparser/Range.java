package com.github.javaparser;

public class Range {
    public final Position begin;
    public final Position end;

    public Range(Position begin, Position end) {
        if (begin == null) {
            throw new IllegalArgumentException("begin can't be null");
        }
        if (end == null) {
            throw new IllegalArgumentException("end can't be null");
        }
        if (begin.isBefore(end)) {
            this.begin = begin;
            this.end = end;
        } else {
            this.begin = end;
            this.end = begin;
        }
    }

    public static Range range(Position begin, Position end) {
        return new Range(begin, end);
    }

    public boolean contains(Range other) {
        if (this.begin.isBeforeOrEqual(other.begin)) {
            return this.end.isAfterOrEqual(other.end);
        }
        return false;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        Range range = (Range) o10;
        return this.begin.equals(range.begin) && this.end.equals(range.end);
    }

    public int getLineCount() {
        return (this.end.line - this.begin.line) + 1;
    }

    public int hashCode() {
        return (this.begin.hashCode() * 31) + this.end.hashCode();
    }

    public boolean isAfter(Position position) {
        return this.begin.isAfter(position);
    }

    public boolean isBefore(Position position) {
        return this.end.isBefore(position);
    }

    public boolean overlapsWith(Range other) {
        return contains(other.begin) || contains(other.end) || other.contains(this.begin) || other.contains(this.end);
    }

    public boolean strictlyContains(Range other) {
        return this.begin.isBefore(other.begin) && this.end.isAfter(other.end);
    }

    public String toString() {
        return ((Object) this.begin) + "-" + ((Object) this.end);
    }

    public Range withBegin(Position begin) {
        return range(begin, this.end);
    }

    public Range withBeginColumn(int beginColumn) {
        return range(this.begin.withColumn(beginColumn), this.end);
    }

    public Range withBeginLine(int beginLine) {
        return range(this.begin.withLine(beginLine), this.end);
    }

    public Range withEnd(Position end) {
        return range(this.begin, end);
    }

    public Range withEndColumn(int endColumn) {
        return range(this.begin, this.end.withColumn(endColumn));
    }

    public Range withEndLine(int endLine) {
        return range(this.begin, this.end.withLine(endLine));
    }

    public static Range range(int beginLine, int beginColumn, int endLine, int endColumn) {
        return new Range(new Position(beginLine, beginColumn), new Position(endLine, endColumn));
    }

    public boolean isAfter(Range other) {
        return this.begin.isAfter(other.end);
    }

    public boolean isBefore(Range other) {
        return this.end.isBefore(other.begin);
    }

    public boolean contains(Position position) {
        return strictlyContains(position) || this.begin.equals(position) || this.end.equals(position);
    }

    public boolean strictlyContains(Position position) {
        return position.isAfter(this.begin) && position.isBefore(this.end);
    }
}
