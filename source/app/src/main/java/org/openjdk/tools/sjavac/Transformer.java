package org.openjdk.tools.sjavac;

import java.net.URI;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public interface Transformer {
    void setExtra(String str);

    void setExtra(Options options);

    boolean transform(CompilationService compilationService, Map<String, Set<URI>> map, Set<URI> set, Map<String, Set<String>> map2, URI uri, Map<String, Set<URI>> map3, Map<String, Map<String, Set<String>>> map4, Map<String, Map<String, Set<String>>> map5, Map<String, PubApi> map6, Map<String, PubApi> map7, int i10, boolean z10, int i11);
}
