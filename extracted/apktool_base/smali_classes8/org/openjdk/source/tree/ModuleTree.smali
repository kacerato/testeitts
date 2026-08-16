.class public interface abstract Lorg/openjdk/source/tree/ModuleTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
    }
.end annotation


# virtual methods
.method public abstract getAnnotations()Ljava/util/List;
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

.method public abstract getDirectives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/DirectiveTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
.end method

.method public abstract getName()Lorg/openjdk/source/tree/ExpressionTree;
.end method
