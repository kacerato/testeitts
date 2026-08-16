.class public final Lcom/android/tools/r8/internal/Qv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/Ov0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ov0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/Pv0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Pv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/internal/Lv0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Lv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/tools/r8/internal/Mv0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Mv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/tools/r8/internal/Kv0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Kv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qv0;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qv0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Nv0;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    const/16 v0, 0xba

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xce

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xcd

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xcc

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
