.class public Lcom/android/tools/r8/internal/Xp;
.super Lcom/android/tools/r8/internal/mp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/mp;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/D0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mp;-><init>(IILcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 25
    iget-object p3, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast p3, Lcom/android/tools/r8/graph/D0;

    .line 26
    invoke-virtual {p5, p3, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 27
    iget-short p3, p0, Lcom/android/tools/r8/internal/mp;->f:S

    const/16 p4, 0xfd

    .line 28
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 29
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 30
    iget-char p1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    int-to-short p1, p1

    .line 31
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/D0;

    .line 21
    invoke-virtual {p5, p2, p4}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/D0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    .line 2
    iget-short v1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    iget-char v2, p0, Lcom/android/tools/r8/internal/mp;->g:C

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v3, v0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v5, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v6, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v5, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v6, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move v3, v2

    goto :goto_1

    .line 11
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v3

    add-int/2addr v3, v2

    .line 13
    :goto_1
    iget-object v5, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 14
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v7

    .line 16
    invoke-virtual {p1, v3, v7}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v2, v1

    .line 18
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/aB;->a(II)V

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/OJ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/OJ;-><init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Lcom/android/tools/r8/graph/D0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokeCustomRange"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xfd

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-custom/range"

    return-object v0
.end method
