.class public final Lcom/android/tools/r8/internal/eP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eP;->a:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern;)Lcom/android/tools/r8/internal/eP;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern;->getComponentsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/dP;->b:Lcom/android/tools/r8/internal/dP;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern;->hasSingleComponent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern;->getSingleComponent()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/vP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/internal/vP;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/dP;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;

    move-result-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/eP;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/fP;
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/eP;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    return-object v0

    .line 9
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 11
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/eP;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/dP;

    .line 13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_1
    move v4, v2

    move v5, v3

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 16
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dP;->a()Lcom/android/tools/r8/internal/vP;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v6

    and-int/2addr v4, v6

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dP;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    sget-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    return-object v0

    :cond_4
    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dP;->a()Lcom/android/tools/r8/internal/vP;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/fP;->d:Lcom/android/tools/r8/internal/fP;

    return-object v0

    .line 26
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/fP;

    invoke-direct {v1, v0, v4}, Lcom/android/tools/r8/internal/fP;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/dP;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/eP;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
