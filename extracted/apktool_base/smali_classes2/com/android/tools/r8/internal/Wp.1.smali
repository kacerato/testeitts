.class public Lcom/android/tools/r8/internal/Wp;
.super Lcom/android/tools/r8/internal/lp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/lp;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/D0;IIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/graph/d4;IIIII)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 1

    .line 24
    iget-byte p3, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/lp;->k:B

    const/16 v0, 0xfc

    .line 25
    invoke-static {p3, p4, p6, v0}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 26
    iget-object p3, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast p3, Lcom/android/tools/r8/graph/D0;

    .line 27
    invoke-virtual {p5, p3, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 28
    iget-byte p1, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte p2, p0, Lcom/android/tools/r8/internal/lp;->i:B

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p1

    iget-byte p2, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte p3, p0, Lcom/android/tools/r8/internal/lp;->g:B

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Np;->d(II)S

    move-result p1

    int-to-short p1, p1

    .line 29
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/D0;

    .line 20
    invoke-virtual {p5, p2, p4}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/D0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    .line 2
    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v6, p0, Lcom/android/tools/r8/internal/lp;->k:B

    filled-new-array {v2, v3, v4, v5, v6}, [I

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v3, v0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v1, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v5, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v5, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    aget v1, v2, v6

    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v6

    .line 13
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 14
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    .line 16
    aget v7, v2, v6

    invoke-virtual {p1, v7, v5}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_3
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

    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokeCustom"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xfc

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-custom"

    return-object v0
.end method
