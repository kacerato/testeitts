.class public interface abstract Lorg/eclipse/jdt/core/ITypeHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addTypeHierarchyChangedListener(Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V
.end method

.method public abstract contains(Lorg/eclipse/jdt/core/IType;)Z
.end method

.method public abstract exists()Z
.end method

.method public abstract getAllClasses()[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllInterfaces()[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllSuperclasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getAllTypes()[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getCachedFlags(Lorg/eclipse/jdt/core/IType;)I
.end method

.method public abstract getExtendingInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getImplementingClasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getRootClasses()[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getRootInterfaces()[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getSubclasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getType()Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract removeTypeHierarchyChangedListener(Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V
.end method

.method public abstract store(Ljava/io/OutputStream;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
