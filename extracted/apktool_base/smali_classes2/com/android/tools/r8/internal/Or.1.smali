.class public Lcom/android/tools/r8/internal/Or;
.super Lcom/android/tools/r8/internal/To;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/To;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/To;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final A()[I
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Np;->d:[I

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 2
    iget-short p1, p0, Lcom/android/tools/r8/internal/To;->f:S

    const/16 p2, 0x10

    .line 3
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 1

    .line 4
    iget-short v0, p0, Lcom/android/tools/r8/internal/To;->f:S

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->d(I)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ReturnWide"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "return-wide"

    return-object v0
.end method
