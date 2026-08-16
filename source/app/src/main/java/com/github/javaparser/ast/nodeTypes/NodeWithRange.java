package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.Position;
import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import java.util.Optional;
import java.util.function.Function;

public interface NodeWithRange<N> {
    @Deprecated
    default boolean containsWithin(Node other) {
        return containsWithinRange(other);
    }

    default boolean containsWithinRange(Node other) {
        if (hasRange() && other.hasRange()) {
            return getRange().get().contains(other.getRange().get());
        }
        return false;
    }

    default Optional<Position> getBegin() {
        return getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position position;
                position = ((Range) obj).begin;
                return position;
            }
        });
    }

    default Optional<Position> getEnd() {
        return getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position position;
                position = ((Range) obj).end;
                return position;
            }
        });
    }

    Optional<Range> getRange();

    default boolean hasRange() {
        return getRange().isPresent();
    }

    N setRange(Range range);
}
