package org.openjdk.tools.javac.api;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.JavacTask;
import org.openjdk.source.util.Plugin;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.main.JavaCompiler;
import org.openjdk.tools.javac.model.JavacElements;
import org.openjdk.tools.javac.model.JavacTypes;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.PropagatedException;

public class BasicJavacTask extends JavacTask {
    protected Context context;
    private TaskListener taskListener;

    public BasicJavacTask(Context context, boolean z10) {
        this.context = context;
        if (z10) {
            context.put((Class<Class>) JavacTask.class, (Class) this);
        }
    }

    public static JavacTask instance(Context context) {
        JavacTask javacTask = (JavacTask) context.get(JavacTask.class);
        return javacTask == null ? new BasicJavacTask(context, true) : javacTask;
    }

    public static String lambda$initPlugins$0(Map.Entry entry) {
        return ((String) entry.getKey()) + "=" + ((String) entry.getValue());
    }

    @Override
    public void addModules(Iterable<String> iterable) {
        throw new IllegalStateException();
    }

    @Override
    public void addTaskListener(TaskListener taskListener) {
        MultiTaskListener.instance(this.context).add(taskListener);
    }

    @Override
    public Iterable<? extends Element> analyze() {
        throw new IllegalStateException();
    }

    @Override
    public Iterable<? extends JavaFileObject> generate() {
        throw new IllegalStateException();
    }

    public Context getContext() {
        return this.context;
    }

    @Override
    public Elements getElements() {
        Context context = this.context;
        if (context != null) {
            return JavacElements.instance(context);
        }
        throw new IllegalStateException();
    }

    public Collection<TaskListener> getTaskListeners() {
        return MultiTaskListener.instance(this.context).getTaskListeners();
    }

    @Override
    public TypeMirror getTypeMirror(Iterable<? extends Tree> iterable) {
        Tree tree = null;
        for (Tree tree2 : iterable) {
            Objects.requireNonNull(tree2);
            tree = tree2;
        }
        if (tree != null) {
            return ((JCTree) tree).type;
        }
        throw new IllegalArgumentException("empty path");
    }

    @Override
    public Types getTypes() {
        Context context = this.context;
        if (context != null) {
            return JavacTypes.instance(context);
        }
        throw new IllegalStateException();
    }

    public void initDocLint(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        new DocLint().init(this, (String[]) list.toArray(new String[list.size()]));
        JavaCompiler.instance(this.context).keepComments = true;
    }

    public void initPlugins(Set<List<String>> set) {
        PlatformDescription platformDescription = (PlatformDescription) this.context.get(PlatformDescription.class);
        if (platformDescription != null) {
            for (PlatformDescription.PluginInfo<Plugin> pluginInfo : platformDescription.getPlugins()) {
                java.util.List list = (java.util.List) pluginInfo.getOptions().entrySet().stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        String lambda$initPlugins$0;
                        lambda$initPlugins$0 = BasicJavacTask.lambda$initPlugins$0((Map.Entry) obj);
                        return lambda$initPlugins$0;
                    }
                }).collect(Collectors.toList());
                try {
                    pluginInfo.getPlugin().init(this, (String[]) list.toArray(new String[list.size()]));
                } catch (RuntimeException e10) {
                    throw new PropagatedException(e10);
                }
            }
        }
        if (set.isEmpty()) {
            return;
        }
        LinkedHashSet<List> linkedHashSet = new LinkedHashSet(set);
        Iterator it = JavacProcessingEnvironment.instance(this.context).getServiceLoader(Plugin.class).iterator();
        while (it.hasNext()) {
            Plugin plugin = (Plugin) it.next();
            for (List list2 : linkedHashSet) {
                if (plugin.getName().equals(list2.head)) {
                    linkedHashSet.remove(list2);
                    try {
                        List<A> list3 = list2.tail;
                        plugin.init(this, (String[]) list3.toArray(new String[list3.size()]));
                    } catch (RuntimeException e11) {
                        throw new PropagatedException(e11);
                    }
                }
            }
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            Log.instance(this.context).error("plugin.not.found", ((List) it2.next()).head);
        }
    }

    @Override
    public Iterable<? extends CompilationUnitTree> parse() {
        throw new IllegalStateException();
    }

    @Override
    public void removeTaskListener(TaskListener taskListener) {
        MultiTaskListener.instance(this.context).remove(taskListener);
    }

    @Override
    public void setLocale(Locale locale) {
        throw new IllegalStateException();
    }

    @Override
    public void setProcessors(Iterable<? extends Processor> iterable) {
        throw new IllegalStateException();
    }

    @Override
    public void setTaskListener(TaskListener taskListener) {
        MultiTaskListener instance = MultiTaskListener.instance(this.context);
        TaskListener taskListener2 = this.taskListener;
        if (taskListener2 != null) {
            instance.remove(taskListener2);
        }
        if (taskListener != null) {
            instance.add(taskListener);
        }
        this.taskListener = taskListener;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Boolean call() {
        throw new IllegalStateException();
    }
}
