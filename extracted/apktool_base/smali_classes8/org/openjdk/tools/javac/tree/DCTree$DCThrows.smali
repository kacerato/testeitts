.class public Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/ThrowsTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCThrows"
.end annotation


# instance fields
.field public final description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final kind:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public final name:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree$Kind;",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCReference;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;-><init>()V

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->EXCEPTION:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->THROWS:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->kind:Lorg/openjdk/source/doctree/DocTree$Kind;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->name:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->description:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/doctree/DocTreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->description:Ljava/util/List;

    return-object v0
.end method

.method public getExceptionName()Lorg/openjdk/source/doctree/ReferenceTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->name:Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;->kind:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method
