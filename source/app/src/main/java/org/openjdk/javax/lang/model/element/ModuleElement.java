package org.openjdk.javax.lang.model.element;

import java.util.List;

public interface ModuleElement extends Element, QualifiedNameable {

    public interface Directive {
        <R, P> R accept(DirectiveVisitor<R, P> directiveVisitor, P p10);

        DirectiveKind getKind();
    }

    public enum DirectiveKind {
        REQUIRES,
        EXPORTS,
        OPENS,
        USES,
        PROVIDES
    }

    public interface DirectiveVisitor<R, P> {
        default R visit(Directive directive) {
            return (R) directive.accept(this, null);
        }

        R visitExports(ExportsDirective exportsDirective, P p10);

        R visitOpens(OpensDirective opensDirective, P p10);

        R visitProvides(ProvidesDirective providesDirective, P p10);

        R visitRequires(RequiresDirective requiresDirective, P p10);

        default R visitUnknown(Directive directive, P p10) {
            throw new UnknownDirectiveException(directive, p10);
        }

        R visitUses(UsesDirective usesDirective, P p10);

        default R visit(Directive directive, P p10) {
            return (R) directive.accept(this, p10);
        }
    }

    public interface ExportsDirective extends Directive {
        PackageElement getPackage();

        List<? extends ModuleElement> getTargetModules();
    }

    public interface OpensDirective extends Directive {
        PackageElement getPackage();

        List<? extends ModuleElement> getTargetModules();
    }

    public interface ProvidesDirective extends Directive {
        List<? extends TypeElement> getImplementations();

        TypeElement getService();
    }

    public interface RequiresDirective extends Directive {
        ModuleElement getDependency();

        boolean isStatic();

        boolean isTransitive();
    }

    public interface UsesDirective extends Directive {
        TypeElement getService();
    }

    List<? extends Directive> getDirectives();

    @Override
    List<? extends Element> getEnclosedElements();

    @Override
    Element getEnclosingElement();

    @Override
    Name getQualifiedName();

    @Override
    Name getSimpleName();

    boolean isOpen();

    boolean isUnnamed();
}
