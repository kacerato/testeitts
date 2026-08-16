.class public interface abstract Lorg/openjdk/source/tree/CompilationUnitTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;


# virtual methods
.method public abstract getImports()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ImportTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLineMap()Lorg/openjdk/source/tree/LineMap;
.end method

.method public abstract getPackage()Lorg/openjdk/source/tree/PackageTree;
.end method

.method public abstract getPackageAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;
.end method

.method public abstract getTypeDecls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method
