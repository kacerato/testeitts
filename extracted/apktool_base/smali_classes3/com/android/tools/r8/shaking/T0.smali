.class public final Lcom/android/tools/r8/shaking/T0;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 3

    .line 12
    check-cast p1, Lcom/android/tools/r8/shaking/G3;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v1

    .line 15
    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v1

    .line 17
    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 18
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/f3;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    .line 25
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/f3;->l:Z

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/G3;

    check-cast p2, Lcom/android/tools/r8/shaking/G3;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v2

    if-ne v0, v2, :cond_7

    .line 6
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/f3;->g:Z

    iget-boolean v2, p2, Lcom/android/tools/r8/shaking/f3;->g:Z

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    iget-object v2, p2, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/c3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_0
    return v1
.end method
