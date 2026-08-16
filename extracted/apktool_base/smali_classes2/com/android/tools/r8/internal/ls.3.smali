.class public Lcom/android/tools/r8/internal/ls;
.super Lcom/android/tools/r8/internal/jp;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/jp;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/jp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 6
    iget-short p1, p0, Lcom/android/tools/r8/internal/jp;->f:S

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/jp;->g:I

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", :label_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/jp;->g:I

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x3

    .line 3
    iget-short v2, p0, Lcom/android/tools/r8/internal/jp;->f:S

    .line 4
    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    .line 5
    invoke-interface {v3, v2, v0, v1, p1}, Lcom/android/tools/r8/internal/on0;->a(IIILcom/android/tools/r8/internal/aB;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "SparseSwitch"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "sparse-switch"

    return-object v0
.end method
