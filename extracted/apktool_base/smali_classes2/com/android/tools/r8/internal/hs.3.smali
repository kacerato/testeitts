.class public Lcom/android/tools/r8/internal/hs;
.super Lcom/android/tools/r8/internal/ap;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ap;-><init>(III)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/ap;-><init>(ILcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 7

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    iget-short v1, p0, Lcom/android/tools/r8/internal/ap;->f:S

    iget-short v2, p0, Lcom/android/tools/r8/internal/ap;->g:S

    iget-byte v3, p0, Lcom/android/tools/r8/internal/ap;->h:B

    sget-boolean v4, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    int-to-long v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v6

    invoke-virtual {p1, v1, v5, v6}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    new-instance v5, Lcom/android/tools/r8/internal/Sl0;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Sl0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ShrIntLit8"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xe1

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "shr-int/lit8"

    return-object v0
.end method
