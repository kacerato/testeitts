package org.openjdk.tools.javac.code;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.util.List;

public abstract class Directive implements ModuleElement.Directive {

    public static class ExportsDirective extends Directive implements ModuleElement.ExportsDirective {
        public final Set<ExportsFlag> flags;
        public final List<Symbol.ModuleSymbol> modules;
        public final Symbol.PackageSymbol packge;

        public ExportsDirective(Symbol.PackageSymbol packageSymbol, List<Symbol.ModuleSymbol> list) {
            this(packageSymbol, list, EnumSet.noneOf(ExportsFlag.class));
        }

        @Override
        public <R, P> R accept(ModuleElement.DirectiveVisitor<R, P> directiveVisitor, P p10) {
            return directiveVisitor.visitExports(this, p10);
        }

        @Override
        public ModuleElement.DirectiveKind getKind() {
            return ModuleElement.DirectiveKind.EXPORTS;
        }

        @Override
        public java.util.List<Symbol.ModuleSymbol> getTargetModules() {
            List<Symbol.ModuleSymbol> list = this.modules;
            if (list == null) {
                return null;
            }
            return Collections.unmodifiableList(list);
        }

        public String toString() {
            if (this.modules == null) {
                return "Exports[" + ((Object) this.packge) + "]";
            }
            return "Exports[" + ((Object) this.packge) + b3.s.f32937c + ((Object) this.modules) + "]";
        }

        public ExportsDirective(Symbol.PackageSymbol packageSymbol, List<Symbol.ModuleSymbol> list, Set<ExportsFlag> set) {
            this.packge = packageSymbol;
            this.modules = list;
            this.flags = set;
        }

        @Override
        public Symbol.PackageSymbol getPackage() {
            return this.packge;
        }
    }

    public enum ExportsFlag {
        SYNTHETIC(4096),
        MANDATED(32768);

        public final int value;

        ExportsFlag(int i10) {
            this.value = i10;
        }

        public static int value(Set<ExportsFlag> set) {
            Iterator<ExportsFlag> it = set.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= it.next().value;
            }
            return i10;
        }
    }

    public static class OpensDirective extends Directive implements ModuleElement.OpensDirective {
        public final Set<OpensFlag> flags;
        public final List<Symbol.ModuleSymbol> modules;
        public final Symbol.PackageSymbol packge;

        public OpensDirective(Symbol.PackageSymbol packageSymbol, List<Symbol.ModuleSymbol> list) {
            this(packageSymbol, list, EnumSet.noneOf(OpensFlag.class));
        }

        @Override
        public <R, P> R accept(ModuleElement.DirectiveVisitor<R, P> directiveVisitor, P p10) {
            return directiveVisitor.visitOpens(this, p10);
        }

        @Override
        public ModuleElement.DirectiveKind getKind() {
            return ModuleElement.DirectiveKind.OPENS;
        }

        @Override
        public java.util.List<Symbol.ModuleSymbol> getTargetModules() {
            List<Symbol.ModuleSymbol> list = this.modules;
            if (list == null) {
                return null;
            }
            return Collections.unmodifiableList(list);
        }

        public String toString() {
            if (this.modules == null) {
                return "Opens[" + ((Object) this.packge) + "]";
            }
            return "Opens[" + ((Object) this.packge) + b3.s.f32937c + ((Object) this.modules) + "]";
        }

        public OpensDirective(Symbol.PackageSymbol packageSymbol, List<Symbol.ModuleSymbol> list, Set<OpensFlag> set) {
            this.packge = packageSymbol;
            this.modules = list;
            this.flags = set;
        }

        @Override
        public Symbol.PackageSymbol getPackage() {
            return this.packge;
        }
    }

    public enum OpensFlag {
        SYNTHETIC(4096),
        MANDATED(32768);

        public final int value;

        OpensFlag(int i10) {
            this.value = i10;
        }

        public static int value(Set<OpensFlag> set) {
            Iterator<OpensFlag> it = set.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= it.next().value;
            }
            return i10;
        }
    }

    public static class ProvidesDirective extends Directive implements ModuleElement.ProvidesDirective {
        public final List<Symbol.ClassSymbol> impls;
        public final Symbol.ClassSymbol service;

        public ProvidesDirective(Symbol.ClassSymbol classSymbol, List<Symbol.ClassSymbol> list) {
            this.service = classSymbol;
            this.impls = list;
        }

        @Override
        public <R, P> R accept(ModuleElement.DirectiveVisitor<R, P> directiveVisitor, P p10) {
            return directiveVisitor.visitProvides(this, p10);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ProvidesDirective)) {
                return false;
            }
            ProvidesDirective providesDirective = (ProvidesDirective) obj;
            return this.service == providesDirective.service && this.impls.equals(providesDirective.impls);
        }

        @Override
        public ModuleElement.DirectiveKind getKind() {
            return ModuleElement.DirectiveKind.PROVIDES;
        }

        public int hashCode() {
            return (this.service.hashCode() * 31) + (this.impls.hashCode() * 37);
        }

        public String toString() {
            return "Provides[" + ((Object) this.service) + DocLint.SEPARATOR + ((Object) this.impls) + "]";
        }

        @Override
        public List<Symbol.ClassSymbol> getImplementations() {
            return this.impls;
        }

        @Override
        public Symbol.ClassSymbol getService() {
            return this.service;
        }
    }

    public static class RequiresDirective extends Directive implements ModuleElement.RequiresDirective {
        public final Set<RequiresFlag> flags;
        public final Symbol.ModuleSymbol module;

        public RequiresDirective(Symbol.ModuleSymbol moduleSymbol) {
            this(moduleSymbol, EnumSet.noneOf(RequiresFlag.class));
        }

        @Override
        public <R, P> R accept(ModuleElement.DirectiveVisitor<R, P> directiveVisitor, P p10) {
            return directiveVisitor.visitRequires(this, p10);
        }

        @Override
        public ModuleElement.DirectiveKind getKind() {
            return ModuleElement.DirectiveKind.REQUIRES;
        }

        @Override
        public boolean isStatic() {
            return this.flags.contains(RequiresFlag.STATIC_PHASE);
        }

        @Override
        public boolean isTransitive() {
            return this.flags.contains(RequiresFlag.TRANSITIVE);
        }

        public String toString() {
            return "Requires[" + ((Object) this.flags) + DocLint.SEPARATOR + ((Object) this.module) + "]";
        }

        public RequiresDirective(Symbol.ModuleSymbol moduleSymbol, Set<RequiresFlag> set) {
            this.module = moduleSymbol;
            this.flags = set;
        }

        @Override
        public Symbol.ModuleSymbol getDependency() {
            return this.module;
        }
    }

    public enum RequiresFlag {
        TRANSITIVE(32),
        STATIC_PHASE(64),
        SYNTHETIC(4096),
        MANDATED(32768),
        EXTRA(65536);

        public final int value;

        RequiresFlag(int i10) {
            this.value = i10;
        }

        public static int value(Set<RequiresFlag> set) {
            Iterator<RequiresFlag> it = set.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= it.next().value;
            }
            return i10;
        }
    }

    public static class UsesDirective extends Directive implements ModuleElement.UsesDirective {
        public final Symbol.ClassSymbol service;

        public UsesDirective(Symbol.ClassSymbol classSymbol) {
            this.service = classSymbol;
        }

        @Override
        public <R, P> R accept(ModuleElement.DirectiveVisitor<R, P> directiveVisitor, P p10) {
            return directiveVisitor.visitUses(this, p10);
        }

        public boolean equals(Object obj) {
            return (obj instanceof UsesDirective) && this.service == ((UsesDirective) obj).service;
        }

        @Override
        public ModuleElement.DirectiveKind getKind() {
            return ModuleElement.DirectiveKind.USES;
        }

        public int hashCode() {
            return this.service.hashCode() * 31;
        }

        public String toString() {
            return "Uses[" + ((Object) this.service) + "]";
        }

        @Override
        public Symbol.ClassSymbol getService() {
            return this.service;
        }
    }
}
