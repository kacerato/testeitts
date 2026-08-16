package org.openjdk.tools.sjavac.options;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.sjavac.Module;
import org.openjdk.tools.sjavac.ProblemException;
import org.openjdk.tools.sjavac.Source;

public class SourceLocation {
    List<String> excludes;
    List<String> includes;
    private Path path;

    public SourceLocation(Path path, List<String> list, List<String> list2) {
        this.path = path;
        this.includes = list;
        this.excludes = list2;
    }

    public void findSourceFiles(Set<String> set, Map<String, Source> map, Map<String, Module> map2, Module module, boolean z10, boolean z11) throws IOException {
        try {
            Source.scanRoot(this.path.toFile(), set, this.excludes, this.includes, map, map2, module, z10, false, z11);
        } catch (ProblemException e10) {
            e10.printStackTrace();
        }
    }

    public List<String> getExcludes() {
        return this.excludes;
    }

    public List<String> getIncludes() {
        return this.includes;
    }

    public Path getPath() {
        return this.path;
    }

    public String toString() {
        return String.format("%s[\"%s\", includes: %s, excludes: %s]", getClass().getSimpleName(), this.path, this.includes, this.excludes);
    }
}
