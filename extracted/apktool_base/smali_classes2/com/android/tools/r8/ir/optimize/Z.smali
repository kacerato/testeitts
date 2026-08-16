.class public final Lcom/android/tools/r8/ir/optimize/Z;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Je0;

.field public final b:Lcom/android/tools/r8/internal/EW$a;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/Z;->a:Lcom/android/tools/r8/internal/Je0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/Z;->b:Lcom/android/tools/r8/internal/EW$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/Z;->a:Lcom/android/tools/r8/internal/Je0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 7
    iget v3, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    invoke-interface {v0, v2, v3}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_1
    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    shl-int/lit8 v0, v0, 0x4

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/Z;->a:Lcom/android/tools/r8/internal/Je0;

    .line 13
    iget v6, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 14
    invoke-interface {v5, v4, v6}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/N8;->hashCode()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/Z;->a:Lcom/android/tools/r8/internal/Je0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/Z;->b:Lcom/android/tools/r8/internal/EW$a;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/N8;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
