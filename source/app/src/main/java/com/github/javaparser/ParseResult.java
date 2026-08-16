package com.github.javaparser;

import com.github.javaparser.ast.comments.CommentsCollection;
import com.github.javaparser.utils.LineSeparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;

public class ParseResult<T> {
    private final CommentsCollection commentsCollection;
    private final List<Problem> problems;
    private final T result;

    public ParseResult(T result, List<Problem> problems, CommentsCollection commentsCollection) {
        this.commentsCollection = commentsCollection;
        this.result = result;
        this.problems = problems;
    }

    public Optional<CommentsCollection> getCommentsCollection() {
        return Optional.ofNullable(this.commentsCollection);
    }

    public Problem getProblem(int i10) {
        return getProblems().get(i10);
    }

    public List<Problem> getProblems() {
        return this.problems;
    }

    public Optional<T> getResult() {
        return Optional.ofNullable(this.result);
    }

    public void ifSuccessful(Consumer<T> consumer) {
        if (isSuccessful()) {
            consumer.accept(this.result);
        }
    }

    public boolean isSuccessful() {
        return this.problems.isEmpty() && this.result != null;
    }

    public String toString() {
        if (isSuccessful()) {
            return "Parsing successful";
        }
        StringBuilder sb2 = new StringBuilder("Parsing failed:");
        sb2.append((Object) LineSeparator.SYSTEM);
        Iterator<Problem> it = this.problems.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
            sb2.append((Object) LineSeparator.SYSTEM);
        }
        return sb2.toString();
    }
}
