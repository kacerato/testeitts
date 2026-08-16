package org.eclipse.jdt.internal.compiler.impl;

public class CompilerStats implements Comparable {
    public long analyzeTime;
    public long endTime;
    public long generateTime;
    public long lineCount;
    public long parseTime;
    public long resolveTime;
    public long startTime;

    @Override
    public int compareTo(Object obj) {
        long elapsedTime = elapsedTime();
        long elapsedTime2 = ((CompilerStats) obj).elapsedTime();
        if (elapsedTime < elapsedTime2) {
            return -1;
        }
        return elapsedTime == elapsedTime2 ? 0 : 1;
    }

    public long elapsedTime() {
        return this.endTime - this.startTime;
    }
}
