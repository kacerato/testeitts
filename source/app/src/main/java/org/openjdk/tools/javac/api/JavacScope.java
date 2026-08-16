package org.openjdk.tools.javac.api;

import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.source.tree.Scope;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;

public class JavacScope implements Scope {
    protected final Env<AttrContext> env;

    public static JavacScope create(Env<AttrContext> env) {
        Env<AttrContext> env2 = env.outer;
        return (env2 == null || env2 == env) ? new JavacScope(env) {
            @Override
            public Scope getEnclosingScope() {
                return super.getEnclosingScope();
            }

            @Override
            public Iterable<? extends Element> getLocalElements() {
                return this.env.toplevel.namedImportScope.getSymbols();
            }
        } : new JavacScope(env);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JavacScope)) {
            return false;
        }
        JavacScope javacScope = (JavacScope) obj;
        return this.env.equals(javacScope.env) && isStarImportScope() == javacScope.isStarImportScope();
    }

    @Override
    public TypeElement getEnclosingClass() {
        Env<AttrContext> env = this.env;
        Env<AttrContext> env2 = env.outer;
        if (env2 == null || env2 == env) {
            return null;
        }
        return env.enclClass.sym;
    }

    @Override
    public ExecutableElement getEnclosingMethod() {
        JCTree.JCMethodDecl jCMethodDecl = this.env.enclMethod;
        if (jCMethodDecl == null) {
            return null;
        }
        return jCMethodDecl.sym;
    }

    public Env<AttrContext> getEnv() {
        return this.env;
    }

    @Override
    public Iterable<? extends Element> getLocalElements() {
        return this.env.info.getLocalElements();
    }

    public int hashCode() {
        return this.env.hashCode() + (isStarImportScope() ? 1 : 0);
    }

    public boolean isStarImportScope() {
        return false;
    }

    public String toString() {
        return "JavacScope[env=" + ((Object) this.env) + ",starImport=" + isStarImportScope() + "]";
    }

    private JavacScope(Env<AttrContext> env) {
        this.env = (Env) Assert.checkNonNull(env);
    }

    @Override
    public JavacScope getEnclosingScope() {
        Env<AttrContext> env = this.env;
        Env<AttrContext> env2 = env.outer;
        if (env2 != null && env2 != env) {
            return create(env2);
        }
        return new JavacScope(env) {
            @Override
            public JavacScope getEnclosingScope() {
                return null;
            }

            @Override
            public Iterable<? extends Element> getLocalElements() {
                return this.env.toplevel.starImportScope.getSymbols();
            }

            @Override
            public boolean isStarImportScope() {
                return true;
            }
        };
    }
}
