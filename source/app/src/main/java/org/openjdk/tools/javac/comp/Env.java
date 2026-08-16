package org.openjdk.tools.javac.comp;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.openjdk.tools.javac.tree.JCTree;

public class Env<A> implements Iterable<Env<A>> {
    public A info;
    public JCTree tree;
    public boolean baseClause = false;
    public Env<A> next = null;
    public Env<A> outer = null;
    public JCTree.JCCompilationUnit toplevel = null;
    public JCTree.JCClassDecl enclClass = null;
    public JCTree.JCMethodDecl enclMethod = null;

    public Env(JCTree jCTree, A a10) {
        this.tree = jCTree;
        this.info = a10;
    }

    public Env<A> dup(JCTree jCTree, A a10) {
        return dupto(new Env<>(jCTree, a10));
    }

    public Env<A> dupto(Env<A> env) {
        env.next = this;
        env.outer = this.outer;
        env.toplevel = this.toplevel;
        env.enclClass = this.enclClass;
        env.enclMethod = this.enclMethod;
        return env;
    }

    public Env<A> enclosing(JCTree.Tag tag) {
        Env<A> env = this;
        while (env != null && !env.tree.hasTag(tag)) {
            env = env.next;
        }
        return env;
    }

    @Override
    public Iterator<Env<A>> iterator() {
        return new Iterator<Env<A>>() {
            Env<A> next;

            {
                this.next = Env.this;
            }

            @Override
            public boolean hasNext() {
                return this.next.outer != null;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override
            public Env<A> next() {
                if (hasNext()) {
                    Env<A> env = this.next;
                    this.next = env.outer;
                    return env;
                }
                throw new NoSuchElementException();
            }
        };
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Env[");
        sb2.append((Object) this.info);
        if (this.outer != null) {
            sb2.append(",outer=");
            sb2.append((Object) this.outer);
        }
        sb2.append("]");
        return sb2.toString();
    }

    public Env<A> dup(JCTree jCTree) {
        return dup(jCTree, this.info);
    }
}
