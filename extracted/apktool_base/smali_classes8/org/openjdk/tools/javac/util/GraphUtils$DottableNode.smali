.class public interface abstract Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/GraphUtils$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DottableNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N::",
        "Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode<",
        "TD;TN;>;>",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/util/GraphUtils$Node<",
        "TD;TN;>;"
    }
.end annotation


# virtual methods
.method public abstract dependencyAttributes(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            ")",
            "Ljava/util/Properties;"
        }
    .end annotation
.end method

.method public abstract nodeAttributes()Ljava/util/Properties;
.end method
