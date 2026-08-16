.class public abstract Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/GraphUtils$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N:",
        "Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode<",
        "TD;TN;>;>",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/util/GraphUtils$Node<",
        "TD;TN;>;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor<",
            "TD;TN;TA;>;TA;)V"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;

    invoke-virtual {p1, v3, p0, v5, p2}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            ")",
            "Ljava/util/Collection<",
            "+TN;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
