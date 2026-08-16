.class public final Lcom/android/tools/r8/internal/wr0;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I

.field public final i:Lcom/android/tools/r8/internal/YQ;

.field public final j:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(IILcom/android/tools/r8/internal/YQ;[Lcom/android/tools/r8/internal/YQ;)V
    .locals 1

    const/16 v0, 0xaa

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput p1, p0, Lcom/android/tools/r8/internal/wr0;->g:I

    iput p2, p0, Lcom/android/tools/r8/internal/wr0;->h:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    invoke-static {p4}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xb

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 9

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/wr0;

    iget v1, p0, Lcom/android/tools/r8/internal/wr0;->g:I

    iget v2, p0, Lcom/android/tools/r8/internal/wr0;->h:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    .line 7
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/NK;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [Lcom/android/tools/r8/internal/YQ;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    .line 10
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 11
    check-cast v8, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v8

    .line 12
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/tools/r8/internal/wr0;-><init>(IILcom/android/tools/r8/internal/YQ;[Lcom/android/tools/r8/internal/YQ;)V

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/tools/r8/internal/XQ;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/wr0;->g:I

    iget v2, p0, Lcom/android/tools/r8/internal/wr0;->h:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/tools/r8/internal/DX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
