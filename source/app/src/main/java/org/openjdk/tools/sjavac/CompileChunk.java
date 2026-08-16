package org.openjdk.tools.sjavac;

import java.net.URI;
import java.util.HashSet;
import java.util.Set;

public class CompileChunk implements Comparable<CompileChunk> {
    public int numDependents;
    public int numPackages;
    public Set<URI> srcs = new HashSet();
    public StringBuilder pkgNames = new StringBuilder();
    public String pkgFromTos = "";

    public boolean equal(CompileChunk compileChunk) {
        return this.numDependents == compileChunk.numDependents;
    }

    @Override
    public int compareTo(CompileChunk compileChunk) {
        return this.numDependents == compileChunk.numDependents ? 0 : -1;
    }
}
