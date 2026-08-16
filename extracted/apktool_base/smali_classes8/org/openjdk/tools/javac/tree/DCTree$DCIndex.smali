.class public Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/IndexTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCIndex"
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

.field public final term:Lorg/openjdk/tools/javac/tree/DCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/DCTree;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;->term:Lorg/openjdk/tools/javac/tree/DCTree;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;->description:Ljava/util/List;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;->description:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->INDEX:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getSearchTerm()Lorg/openjdk/source/doctree/DocTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;->term:Lorg/openjdk/tools/javac/tree/DCTree;

    return-object v0
.end method
