.class public final Lcom/android/tools/r8/internal/vU;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/internal/YQ;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/YQ;[I[Lcom/android/tools/r8/internal/YQ;)V
    .locals 1

    const/16 v0, 0xab

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-static {p2}, Lcom/android/tools/r8/internal/uw0;->a([I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vU;->h:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 7

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/vU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    .line 9
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NK;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/YQ;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/android/tools/r8/internal/YQ;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 12
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v6

    .line 14
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-direct {v0, v1, p1, v4}, Lcom/android/tools/r8/internal/vU;-><init>(Lcom/android/tools/r8/internal/YQ;[I[Lcom/android/tools/r8/internal/YQ;)V

    .line 16
    iget-object p1, v0, Lcom/android/tools/r8/internal/vU;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vU;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vU;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    iget-object v4, p0, Lcom/android/tools/r8/internal/vU;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/android/tools/r8/internal/XQ;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v4, p0, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
