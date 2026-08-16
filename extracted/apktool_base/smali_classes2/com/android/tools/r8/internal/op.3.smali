.class public final Lcom/android/tools/r8/internal/op;
.super Lcom/android/tools/r8/internal/Vo;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Vo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Vo;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final A()[I
    .locals 1

    iget-short v0, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget-short v1, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(I)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "Goto16"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "goto/16"

    return-object v0
.end method
