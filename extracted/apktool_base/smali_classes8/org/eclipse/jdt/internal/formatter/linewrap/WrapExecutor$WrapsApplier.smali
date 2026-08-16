.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapsApplier"
.end annotation


# instance fields
.field private currentIndent:I

.field private initialIndent:I

.field private nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

.field private stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    return-void
.end method

.method private newLine(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    if-gt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->handleOnColumnIndent(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->initialIndent:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->initialIndent:I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    :goto_3
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->currentIndent:I

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->currentIndent:I

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->findWrapsCached(II)Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    if-eq p2, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->currentIndent:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->checkForceWrap(Lorg/eclipse/jdt/internal/formatter/Token;II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isNextLineOnWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->currentIndent:I

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->newLine(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;->newLine(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
