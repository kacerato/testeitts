package com.github.javaparser;

import com.github.javaparser.utils.Utils;
import java.util.Objects;

public class Position implements Comparable<Position> {
    public static final int ABSOLUTE_BEGIN_LINE = -1;
    public static final int ABSOLUTE_END_LINE = -2;
    public static final int FIRST_COLUMN = 1;
    public static final int FIRST_LINE = 1;
    public static final Position HOME = new Position(1, 1);
    public final int column;
    public final int line;

    public Position(int line, int column) {
        if (line < -2) {
            throw new IllegalArgumentException("Can't position at line " + line);
        }
        if (column >= -1) {
            this.line = line;
            this.column = column;
        } else {
            throw new IllegalArgumentException("Can't position at column " + column);
        }
    }

    @Deprecated
    public static Position pos(int line, int column) {
        return new Position(line, column);
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        Position position = (Position) o10;
        return Integer.valueOf(this.line).equals(Integer.valueOf(position.line)) && Integer.valueOf(this.column).equals(Integer.valueOf(position.column));
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.line), Integer.valueOf(this.column));
    }

    public boolean invalid() {
        return !valid();
    }

    public boolean isAfter(Position otherPosition) {
        Utils.assertNotNull(otherPosition);
        int i10 = this.line;
        int i11 = otherPosition.line;
        return i10 == i11 ? this.column > otherPosition.column : i10 > i11 || i11 == -1;
    }

    public boolean isAfterOrEqual(Position otherPosition) {
        return isAfter(otherPosition) || equals(otherPosition);
    }

    public boolean isBefore(Position otherPosition) {
        Utils.assertNotNull(otherPosition);
        int i10 = this.line;
        int i11 = otherPosition.line;
        return i10 == i11 ? this.column < otherPosition.column : i10 < i11 || i11 == -2;
    }

    public boolean isBeforeOrEqual(Position otherPosition) {
        return isBefore(otherPosition) || equals(otherPosition);
    }

    public Position nextLine() {
        return new Position(this.line + 1, 1);
    }

    public Position orIfInvalid(Position alternativePosition) {
        Utils.assertNotNull(alternativePosition);
        return (!valid() && alternativePosition.valid()) ? alternativePosition : this;
    }

    public Position right(int characters) {
        return new Position(this.line, this.column + characters);
    }

    public String toString() {
        return "(line " + this.line + ",col " + this.column + ")";
    }

    public boolean valid() {
        int i10 = this.line;
        if (-2 == i10 || -1 == i10) {
            return true;
        }
        return i10 >= 1 && this.column >= 1;
    }

    public Position withColumn(int column) {
        return new Position(this.line, column);
    }

    public Position withLine(int line) {
        return new Position(line, this.column);
    }

    @Override
    public int compareTo(Position otherPosition) {
        Utils.assertNotNull(otherPosition);
        if (isBefore(otherPosition)) {
            return -1;
        }
        return isAfter(otherPosition) ? 1 : 0;
    }
}
