.class public abstract Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DCEndPosTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree<",
        "TT;>;>",
        "Lorg/openjdk/tools/javac/tree/DCTree;"
    }
.end annotation


# instance fields
.field private endPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->endPos:I

    return-void
.end method


# virtual methods
.method public getEndPos(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)I
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->endPos:I

    invoke-interface {p1, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    return p1
.end method

.method public setEndPos(I)Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->endPos:I

    return-object p0
.end method
