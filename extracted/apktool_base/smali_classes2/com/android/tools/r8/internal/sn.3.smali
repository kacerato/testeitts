.class public Lcom/android/tools/r8/internal/sn;
.super Lcom/android/tools/r8/internal/Uo;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Uo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Uo;-><init>(ILcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    .line 2
    iget-byte v0, p0, Lcom/android/tools/r8/internal/Uo;->f:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/Uo;->g:B

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/P3;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/P3;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 7
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ArrayLength"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "array-length"

    return-object v0
.end method
