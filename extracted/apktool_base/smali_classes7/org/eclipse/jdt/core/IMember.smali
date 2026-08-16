.class public interface abstract Lorg/eclipse/jdt/core/IMember;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/ISourceReference;
.implements Lorg/eclipse/jdt/core/ISourceManipulation;
.implements Lorg/eclipse/jdt/core/IParent;


# virtual methods
.method public abstract getCategories()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getClassFile()Lorg/eclipse/jdt/core/IClassFile;
.end method

.method public abstract getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
.end method

.method public abstract getDeclaringType()Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getFlags()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getJavadocRange()Lorg/eclipse/jdt/core/ISourceRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOccurrenceCount()I
.end method

.method public abstract getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
.end method

.method public abstract isBinary()Z
.end method
