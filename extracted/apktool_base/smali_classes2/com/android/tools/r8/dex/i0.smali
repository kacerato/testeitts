.class public abstract Lcom/android/tools/r8/dex/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/dex/k;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    iput-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/dex/i0;->b:Lcom/android/tools/r8/dex/k;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/ArrayList;
.end method

.method public final a(Lcom/android/tools/r8/dex/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->b:Lcom/android/tools/r8/dex/k;

    iget-object v0, v0, Lcom/android/tools/r8/dex/k;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->b:Lcom/android/tools/r8/dex/k;

    iget-object v0, v0, Lcom/android/tools/r8/dex/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/L2;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/n0;->a()V

    :cond_1
    return-void
.end method
