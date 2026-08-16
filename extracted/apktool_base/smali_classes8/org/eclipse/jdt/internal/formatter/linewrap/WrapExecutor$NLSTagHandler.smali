.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NLSTagHandler"
.end annotation


# instance fields
.field private final nlsTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getNLSTag()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksAfter()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v1

    invoke-direct {v0, v3, p1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getNLSAlign(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->insert(ILorg/eclipse/jdt/internal/formatter/Token;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged()V

    return v1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    :cond_5
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->remove(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged()V

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    return v1

    :cond_9
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v4, :cond_a

    move v5, v1

    :cond_a
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    move v4, v6

    goto :goto_5

    :cond_b
    :goto_2
    move v5, v3

    goto :goto_5

    :cond_c
    if-eqz v5, :cond_11

    iget v7, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    :goto_3
    iget v8, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt v7, v8, :cond_e

    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    iget v8, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-le v7, v8, :cond_f

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_f
    iget v5, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-le v7, v5, :cond_10

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v6, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-direct {v5, v7, v6, v2}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    :cond_10
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v6, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 v7, v6, 0x1

    invoke-direct {v5, v6, v7, v2}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    invoke-interface {v0, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_11
    :goto_5
    add-int/2addr v4, v1

    goto/16 :goto_0
.end method
