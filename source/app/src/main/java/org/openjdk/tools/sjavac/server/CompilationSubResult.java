package org.openjdk.tools.sjavac.server;

import java.io.Serializable;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class CompilationSubResult implements Serializable {
    static final long serialVersionUID = 46739181113L;
    public Main.Result result;
    public Map<String, Set<URI>> packageArtifacts = new HashMap();
    public Map<String, Map<String, Set<String>>> packageDependencies = new HashMap();
    public Map<String, Map<String, Set<String>>> packageCpDependencies = new HashMap();
    public Map<String, PubApi> packagePubapis = new HashMap();
    public Map<String, PubApi> dependencyPubapis = new HashMap();
    public String stdout = "";
    public String stderr = "";

    public CompilationSubResult(Main.Result result) {
        this.result = result;
    }

    public void setResult(Main.Result result) {
        this.result = result;
    }
}
