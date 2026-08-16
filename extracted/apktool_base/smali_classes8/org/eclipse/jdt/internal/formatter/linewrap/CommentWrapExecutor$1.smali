.class Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor$1;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->cleanupIndent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor$1;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 1

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
