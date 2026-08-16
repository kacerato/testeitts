package org.openjdk.tools.javac.comp;

import java.util.AbstractQueue;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.util.Context;

public class Todo extends AbstractQueue<Env<AttrContext>> {
    protected static final Context.Key<Todo> todoKey = new Context.Key<>();
    LinkedList<Env<AttrContext>> contents = new LinkedList<>();
    LinkedList<Queue<Env<AttrContext>>> contentsByFile;
    Map<JavaFileObject, FileQueue> fileMap;

    public class FileQueue extends AbstractQueue<Env<AttrContext>> {
        LinkedList<Env<AttrContext>> fileContents = new LinkedList<>();

        public FileQueue() {
        }

        @Override
        public Iterator<Env<AttrContext>> iterator() {
            return this.fileContents.iterator();
        }

        @Override
        public int size() {
            return this.fileContents.size();
        }

        @Override
        public boolean offer(Env<AttrContext> env) {
            if (!this.fileContents.offer(env)) {
                return false;
            }
            Todo.this.contents.add(env);
            return true;
        }

        @Override
        public Env<AttrContext> peek() {
            if (this.fileContents.size() == 0) {
                return null;
            }
            return this.fileContents.get(0);
        }

        @Override
        public Env<AttrContext> poll() {
            if (this.fileContents.size() == 0) {
                return null;
            }
            Env<AttrContext> remove = this.fileContents.remove(0);
            Todo.this.contents.remove(remove);
            return remove;
        }
    }

    public Todo(Context context) {
        context.put((Context.Key<Context.Key<Todo>>) todoKey, (Context.Key<Todo>) this);
    }

    private void addByFile(Env<AttrContext> env) {
        JavaFileObject javaFileObject = env.toplevel.sourcefile;
        if (this.fileMap == null) {
            this.fileMap = new HashMap();
        }
        FileQueue fileQueue = this.fileMap.get(javaFileObject);
        if (fileQueue == null) {
            fileQueue = new FileQueue();
            this.fileMap.put(javaFileObject, fileQueue);
            this.contentsByFile.add(fileQueue);
        }
        fileQueue.fileContents.add(env);
    }

    public static Todo instance(Context context) {
        Todo todo = (Todo) context.get(todoKey);
        return todo == null ? new Todo(context) : todo;
    }

    private void removeByFile(Env<AttrContext> env) {
        JavaFileObject javaFileObject = env.toplevel.sourcefile;
        FileQueue fileQueue = this.fileMap.get(javaFileObject);
        if (fileQueue != null && fileQueue.fileContents.remove(env) && fileQueue.isEmpty()) {
            this.fileMap.remove(javaFileObject);
            this.contentsByFile.remove(fileQueue);
        }
    }

    public void append(Env<AttrContext> env) {
        add(env);
    }

    public Queue<Env<AttrContext>> groupByFile(Env<AttrContext> env) {
        return new LinkedList(this.fileMap.get(env.toplevel.sourcefile));
    }

    @Override
    public Iterator<Env<AttrContext>> iterator() {
        return this.contents.iterator();
    }

    public void retainFiles(Collection<? extends JavaFileObject> collection) {
        Iterator<Env<AttrContext>> it = this.contents.iterator();
        while (it.hasNext()) {
            Env<AttrContext> next = it.next();
            if (!collection.contains(next.toplevel.sourcefile)) {
                if (this.contentsByFile != null) {
                    removeByFile(next);
                }
                it.remove();
            }
        }
    }

    @Override
    public int size() {
        return this.contents.size();
    }

    public Queue<Queue<Env<AttrContext>>> groupByFile() {
        if (this.contentsByFile == null) {
            this.contentsByFile = new LinkedList<>();
            Iterator<Env<AttrContext>> it = this.contents.iterator();
            while (it.hasNext()) {
                addByFile(it.next());
            }
        }
        return this.contentsByFile;
    }

    @Override
    public boolean offer(Env<AttrContext> env) {
        if (!this.contents.add(env)) {
            return false;
        }
        if (this.contentsByFile == null) {
            return true;
        }
        addByFile(env);
        return true;
    }

    @Override
    public Env<AttrContext> peek() {
        if (size() == 0) {
            return null;
        }
        return this.contents.get(0);
    }

    @Override
    public Env<AttrContext> poll() {
        if (size() == 0) {
            return null;
        }
        Env<AttrContext> remove = this.contents.remove(0);
        if (this.contentsByFile != null) {
            removeByFile(remove);
        }
        return remove;
    }
}
