.class public Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocCommentTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCDocComment"
.end annotation


# instance fields
.field public final body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

.field public final firstSentence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final fullBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/Tokens$Comment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->firstSentence:Ljava/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->fullBody:Ljava/util/List;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->body:Ljava/util/List;

    iput-object p5, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->tags:Ljava/util/List;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBlockTags()Ljava/util/List;
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/util/List;
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->body:Ljava/util/List;

    return-object v0
.end method

.method public getFirstSentence()Ljava/util/List;
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->firstSentence:Ljava/util/List;

    return-object v0
.end method

.method public getFullBody()Ljava/util/List;
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->fullBody:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->DOC_COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method
