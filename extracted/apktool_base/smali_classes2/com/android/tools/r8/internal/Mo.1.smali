.class public Lcom/android/tools/r8/internal/Mo;
.super Lcom/android/tools/r8/internal/mp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/mp;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mp;-><init>(IILcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->c()[Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 19
    iget-short p3, p0, Lcom/android/tools/r8/internal/mp;->f:S

    const/16 p4, 0x25

    .line 20
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 21
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 22
    iget-char p1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    int-to-short p1, p1

    .line 23
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    .line 2
    iget-object p5, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast p5, Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 6
    iget-short v0, p0, Lcom/android/tools/r8/internal/mp;->f:S

    iget-char v1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v2, v3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-boolean v4, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_0

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

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

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
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v4

    div-int v4, v0, v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_2
    add-int v6, v1, v0

    if-ge v4, v6, :cond_4

    .line 12
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/aB;->a(II)V

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_6
    :goto_3
    sget-object v2, Lcom/android/tools/r8/internal/kK;->i:Lcom/android/tools/r8/internal/kK;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

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

    const-string v0, "FilledNewArrayRange"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "filled-new-array/range"

    return-object v0
.end method
