.class Lorg/eclipse/jdt/internal/formatter/TokenManager$1;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/TokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isNLSTagInLine:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->this$0:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->isNLSTagInLine:Z

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->value:I

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->isNLSTagInLine:Z

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    sget-boolean p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->$assertionsDisabled:Z

    if-nez p2, :cond_2

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x2e

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->isNLSTagInLine:Z

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    sget-boolean p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->$assertionsDisabled:Z

    if-nez p2, :cond_6

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x3ea

    if-eq p2, v1, :cond_6

    const/16 v1, 0x3eb

    if-ne p2, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->this$0:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->isNLSTagInLine:Z

    invoke-virtual {p2, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    goto :goto_2

    :cond_7
    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;->this$0:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->isSpaceAfter()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_8
    return v0
.end method
