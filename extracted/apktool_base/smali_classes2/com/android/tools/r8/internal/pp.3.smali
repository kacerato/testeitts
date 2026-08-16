.class public Lcom/android/tools/r8/internal/pp;
.super Lcom/android/tools/r8/internal/gp;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/gp;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/gp;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final A()[I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/gp;->f:I

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/gp;->f:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(I)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "Goto32"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "goto/32"

    return-object v0
.end method
