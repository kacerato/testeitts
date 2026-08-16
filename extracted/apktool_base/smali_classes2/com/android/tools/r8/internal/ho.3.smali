.class public Lcom/android/tools/r8/internal/ho;
.super Lcom/android/tools/r8/internal/Xo;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Cm0;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Xo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Xo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 4
    iget-char v0, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    .line 5
    iget-short p1, p0, Lcom/android/tools/r8/internal/Xo;->f:S

    .line 6
    iget-char v0, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v0, v0, 0x10

    const/16 v1, 0x8

    .line 7
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-char v1, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v1, v1, 0x10

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  # "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 5

    .line 1
    iget-char v0, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->o()Lcom/android/tools/r8/internal/Km0;

    move-result-object v1

    .line 3
    :goto_0
    iget-short v2, p0, Lcom/android/tools/r8/internal/Xo;->f:S

    int-to-long v3, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/pu0;IJ)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    iget-short p1, p0, Lcom/android/tools/r8/internal/Xo;->f:S

    iget-char v0, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v0, v0, 0x10

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/android/tools/r8/internal/Xo;->g:C

    shl-int/lit8 v1, v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstHigh16"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "const/high16"

    return-object v0
.end method
