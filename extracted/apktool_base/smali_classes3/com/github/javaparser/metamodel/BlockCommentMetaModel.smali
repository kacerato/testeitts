.class public Lcom/github/javaparser/metamodel/BlockCommentMetaModel;
.super Lcom/github/javaparser/metamodel/CommentMetaModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superBaseNodeMetaModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v2, Lcom/github/javaparser/ast/comments/BlockComment;

    const-string v3, "BlockComment"

    const-string v4, "com.github.javaparser.ast.comments"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/metamodel/CommentMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
