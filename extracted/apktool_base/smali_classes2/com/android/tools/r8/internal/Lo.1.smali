.class public Lcom/android/tools/r8/internal/Lo;
.super Lcom/android/tools/r8/internal/lp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/lp;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/M2;IIIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/graph/d4;IIIII)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->c()[Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 21
    iget-byte p3, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/lp;->k:B

    const/16 p5, 0x24

    .line 22
    invoke-static {p3, p4, p6, p5}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 23
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 24
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

    .line 25
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    .line 2
    iget-object p5, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast p5, Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 6
    iget-byte v0, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v2, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v6, p0, Lcom/android/tools/r8/internal/lp;->k:B

    filled-new-array {v1, v2, v4, v5, v6}, [I

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v2, v3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-boolean v4, Lcom/android/tools/r8/internal/aB;->D:Z

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v7

    div-int v7, v0, v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v5, v0, :cond_9

    .line 12
    aget v7, v1, v5

    invoke-virtual {p1, v7, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v7, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    if-eq v2, v7, :cond_4

    sget-object v7, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    if-eq v2, v7, :cond_4

    sget-object v7, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    if-ne v2, v7, :cond_8

    .line 14
    :cond_4
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_6

    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez v7, :cond_8

    .line 15
    aget v7, v1, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, v1, v8

    add-int/2addr v8, v4

    if-ne v7, v8, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_2

    .line 17
    :cond_9
    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/aB;->a(II)V

    .line 18
    sget-object v2, Lcom/android/tools/r8/internal/kK;->i:Lcom/android/tools/r8/internal/kK;

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    move-object v5, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "FilledNewArray"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "filled-new-array"

    return-object v0
.end method
