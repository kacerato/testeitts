package com.github.javaparser;

import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Utils;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ParseProblemException extends RuntimeException {
    private final List<Problem> problems;

    public ParseProblemException(List<Problem> problems) {
        super(createMessage((List) Utils.assertNotNull(problems)));
        this.problems = problems;
    }

    private static String createMessage(List<Problem> problems) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<Problem> it = problems.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
            sb2.append((Object) LineSeparator.SYSTEM);
        }
        return sb2.toString();
    }

    public List<Problem> getProblems() {
        return this.problems;
    }

    public ParseProblemException(Throwable throwable) {
        this((List<Problem>) Collections.singletonList(new Problem(throwable.getMessage(), null, throwable)));
    }
}
