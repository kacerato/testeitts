package org.openjdk.tools.sjavac.comp.dependencies;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.GraphUtils;
import org.openjdk.tools.sjavac.Util;
import org.openjdk.tools.sjavac.comp.JavaFileObjectWithLocation;
import org.openjdk.tools.sjavac.comp.PubAPIs;

public class NewDependencyCollector implements TaskListener {
    private final Context context;
    private Map<String, Map<String, Set<String>>> cpDeps;
    private Map<String, Map<String, Set<String>>> deps;
    private final Collection<JavaFileObject> explicitJFOs;

    public NewDependencyCollector(Context context, Collection<JavaFileObject> collection) {
        this.context = context;
        this.explicitJFOs = collection;
    }

    private Set<Symbol.ClassSymbol> allSupertypes(Symbol.TypeSymbol typeSymbol) {
        if (typeSymbol == null || !(typeSymbol instanceof Symbol.ClassSymbol)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) typeSymbol;
        hashSet.add(classSymbol);
        hashSet.addAll(allSupertypes(classSymbol.getSuperclass().tsym));
        Iterator<Type> it = classSymbol.getInterfaces().iterator();
        while (it.hasNext()) {
            hashSet.addAll(allSupertypes(it.next().tsym));
        }
        return hashSet;
    }

    private void collectPubApisOfDependencies(Context context, Collection<JavaFileObject> collection) {
        PubAPIs instance = PubAPIs.instance(context);
        Iterator<Dependencies.GraphDependencies.CompletionNode> it = getDependencyNodes(context, collection, false).iterator();
        while (it.hasNext()) {
            Symbol.ClassSymbol outermostClass = it.next().getClassSymbol().outermostClass();
            JavaFileManager.Location locationOf = getLocationOf(outermostClass);
            if (locationOf == StandardLocation.CLASS_PATH || locationOf == StandardLocation.SOURCE_PATH) {
                instance.visitPubapi(outermostClass);
            }
        }
    }

    private Collection<? extends GraphUtils.Node<?, ?>> getAllDependencies(final Dependencies.GraphDependencies.CompletionNode completionNode) {
        return (Collection) Stream.of((Object[]) completionNode.getSupportedDependencyKinds()).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream lambda$getAllDependencies$3;
                lambda$getAllDependencies$3 = NewDependencyCollector.lambda$getAllDependencies$3(Dependencies.GraphDependencies.CompletionNode.this, (GraphUtils.DependencyKind) obj);
                return lambda$getAllDependencies$3;
            }
        }).collect(Collectors.toSet());
    }

    private Set<Dependencies.GraphDependencies.CompletionNode> getDependencyNodes(Context context, final Collection<JavaFileObject> collection, final boolean z10) {
        return (Set) ((Dependencies.GraphDependencies) Dependencies.instance(context)).getNodes().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Dependencies.GraphDependencies.CompletionNode lambda$getDependencyNodes$0;
                lambda$getDependencyNodes$0 = NewDependencyCollector.lambda$getDependencyNodes$0((Dependencies.GraphDependencies.Node) obj);
                return lambda$getDependencyNodes$0;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDependencyNodes$1;
                lambda$getDependencyNodes$1 = NewDependencyCollector.lambda$getDependencyNodes$1((Dependencies.GraphDependencies.CompletionNode) obj);
                return lambda$getDependencyNodes$1;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDependencyNodes$2;
                lambda$getDependencyNodes$2 = NewDependencyCollector.lambda$getDependencyNodes$2(z10, collection, (Dependencies.GraphDependencies.CompletionNode) obj);
                return lambda$getDependencyNodes$2;
            }
        }).collect(Collectors.toSet());
    }

    private JavaFileManager.Location getLocationOf(Symbol.ClassSymbol classSymbol) {
        JavaFileObject javaFileObject = classSymbol.outermostClass().classfile;
        if (javaFileObject instanceof JavaFileObjectWithLocation) {
            return ((JavaFileObjectWithLocation) javaFileObject).getLocation();
        }
        return null;
    }

    public static Stream lambda$getAllDependencies$3(Dependencies.GraphDependencies.CompletionNode completionNode, GraphUtils.DependencyKind dependencyKind) {
        return completionNode.getDependenciesByKind(dependencyKind).stream();
    }

    public static Dependencies.GraphDependencies.CompletionNode lambda$getDependencyNodes$0(Dependencies.GraphDependencies.Node node) {
        return (Dependencies.GraphDependencies.CompletionNode) node;
    }

    public static boolean lambda$getDependencyNodes$1(Dependencies.GraphDependencies.CompletionNode completionNode) {
        return completionNode.getClassSymbol().fullname != null;
    }

    public static boolean lambda$getDependencyNodes$2(boolean z10, Collection collection, Dependencies.GraphDependencies.CompletionNode completionNode) {
        return z10 == collection.contains(completionNode.getClassSymbol().classfile);
    }

    @Override
    public void finished(TaskEvent taskEvent) {
        if (taskEvent.getKind() == TaskEvent.Kind.COMPILATION) {
            collectPubApisOfDependencies(this.context, this.explicitJFOs);
            this.deps = getDependencies(this.context, this.explicitJFOs, false);
            this.cpDeps = getDependencies(this.context, this.explicitJFOs, true);
        }
    }

    public Map<String, Map<String, Set<String>>> getDependencies(boolean z10) {
        return z10 ? this.cpDeps : this.deps;
    }

    public boolean isSymbolRelevant(boolean z10, Symbol.ClassSymbol classSymbol) {
        return getLocationOf(classSymbol) == (z10 ? StandardLocation.CLASS_PATH : StandardLocation.SOURCE_PATH);
    }

    private Map<String, Map<String, Set<String>>> getDependencies(Context context, Collection<JavaFileObject> collection, boolean z10) {
        HashMap hashMap = new HashMap();
        for (Dependencies.GraphDependencies.CompletionNode completionNode : getDependencyNodes(context, collection, true)) {
            String name = completionNode.getClassSymbol().outermostClass().flatname.toString();
            String pkgNameOfClassName = Util.pkgNameOfClassName(name);
            Map map = (Map) hashMap.get(pkgNameOfClassName);
            if (map == null) {
                map = new HashMap();
                hashMap.put(pkgNameOfClassName, map);
            }
            Collection collection2 = (Set) map.get(name);
            if (collection2 == null) {
                collection2 = new HashSet();
                map.put(name, collection2);
            }
            Iterator<? extends GraphUtils.Node<?, ?>> it = getAllDependencies(completionNode).iterator();
            while (it.hasNext()) {
                Dependencies.GraphDependencies.CompletionNode completionNode2 = (Dependencies.GraphDependencies.CompletionNode) it.next();
                if (completionNode2 != completionNode && completionNode2.getClassSymbol().fullname != null && isSymbolRelevant(z10, completionNode2.getClassSymbol())) {
                    collection2.add(completionNode2.getClassSymbol().outermostClass().flatname.toString());
                }
            }
            for (Symbol.ClassSymbol classSymbol : allSupertypes(completionNode.getClassSymbol())) {
                if (isSymbolRelevant(z10, classSymbol)) {
                    collection2.add(classSymbol.outermostClass().flatname.toString());
                }
            }
        }
        return hashMap;
    }
}
