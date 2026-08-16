package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import org.eclipse.jdt.internal.core.JavaElement;

public interface ResolvedTypeParameterDeclaration extends ResolvedTypeDeclaration {

    public static class Bound {
        private boolean extendsBound;
        private ResolvedType type;

        private Bound(boolean extendsBound, ResolvedType type) {
            this.extendsBound = extendsBound;
            this.type = type;
        }

        public static Bound extendsBound(ResolvedType type) {
            return new Bound(true, type);
        }

        public static Bound superBound(ResolvedType type) {
            return new Bound(false, type);
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 == null || getClass() != o10.getClass()) {
                return false;
            }
            Bound bound = (Bound) o10;
            if (this.extendsBound != bound.extendsBound) {
                return false;
            }
            ResolvedType resolvedType = this.type;
            ResolvedType resolvedType2 = bound.type;
            return resolvedType != null ? resolvedType.equals(resolvedType2) : resolvedType2 == null;
        }

        public ResolvedType getType() {
            return this.type;
        }

        public int hashCode() {
            int i10 = (this.extendsBound ? 1 : 0) * 31;
            ResolvedType resolvedType = this.type;
            return i10 + (resolvedType != null ? resolvedType.hashCode() : 0);
        }

        public boolean isExtends() {
            return this.extendsBound;
        }

        public boolean isSuper() {
            return !isExtends();
        }

        public String toString() {
            return "Bound{extendsBound=" + this.extendsBound + ", type=" + ((Object) this.type) + JavaElement.JEM_ANNOTATION;
        }
    }

    static ResolvedTypeParameterDeclaration onType(final String name, final String classQName, final List<Bound> bounds) {
        return new ResolvedTypeParameterDeclaration() {
            @Override
            public Optional<ResolvedReferenceTypeDeclaration> containerType() {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean declaredOnConstructor() {
                return false;
            }

            @Override
            public boolean declaredOnMethod() {
                return false;
            }

            @Override
            public boolean declaredOnType() {
                return true;
            }

            @Override
            public List<Bound> getBounds() {
                return bounds;
            }

            @Override
            public ResolvedTypeParametrizable getContainer() {
                return null;
            }

            @Override
            public String getContainerId() {
                return classQName;
            }

            @Override
            public String getContainerQualifiedName() {
                return classQName;
            }

            @Override
            public String getName() {
                return String.this;
            }

            @Override
            public ResolvedReferenceType object() {
                throw new UnsupportedOperationException();
            }

            public String toString() {
                return "TypeParameter onType " + String.this;
            }
        };
    }

    @Override
    default ResolvedTypeParameterDeclaration asTypeParameter() {
        return this;
    }

    default boolean declaredOnConstructor() {
        return getContainer() instanceof ResolvedConstructorDeclaration;
    }

    default boolean declaredOnMethod() {
        return getContainer() instanceof ResolvedMethodDeclaration;
    }

    default boolean declaredOnType() {
        return getContainer() instanceof ResolvedReferenceTypeDeclaration;
    }

    List<Bound> getBounds();

    @Override
    default String getClassName() {
        throw new UnsupportedOperationException();
    }

    ResolvedTypeParametrizable getContainer();

    String getContainerId();

    String getContainerQualifiedName();

    default ResolvedType getLowerBound() {
        for (Bound bound : getBounds()) {
            if (bound.isSuper()) {
                return bound.getType();
            }
        }
        throw new IllegalStateException();
    }

    @Override
    String getName();

    @Override
    default String getPackageName() {
        throw new UnsupportedOperationException();
    }

    @Override
    default String getQualifiedName() {
        return String.format("%s.%s", getContainerId(), getName());
    }

    default ResolvedType getUpperBound() {
        for (Bound bound : getBounds()) {
            if (bound.isExtends()) {
                return bound.getType();
            }
        }
        throw new IllegalStateException();
    }

    default boolean hasBound() {
        return hasLowerBound() || hasUpperBound();
    }

    default boolean hasLowerBound() {
        Iterator<Bound> it = getBounds().iterator();
        while (it.hasNext()) {
            if (it.next().isSuper()) {
                return true;
            }
        }
        return false;
    }

    default boolean hasUpperBound() {
        Iterator<Bound> it = getBounds().iterator();
        while (it.hasNext()) {
            if (it.next().isExtends()) {
                return true;
            }
        }
        return false;
    }

    default boolean isBounded() {
        return !isUnbounded();
    }

    @Override
    default boolean isTypeParameter() {
        return true;
    }

    default boolean isUnbounded() {
        return getBounds().isEmpty();
    }

    ResolvedReferenceType object();
}
