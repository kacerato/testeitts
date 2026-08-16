.class public Lcom/android/tools/r8/internal/mo;
.super Lcom/android/tools/r8/internal/Yo;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ex0;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Yo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Yo;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 2
    iget-short v0, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 5

    .line 3
    iget-short p1, p0, Lcom/android/tools/r8/internal/Yo;->f:S

    .line 4
    iget-short v0, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v0, v0

    const/16 v2, 0x10

    .line 5
    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-short v1, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v1, v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "L  # "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->q()Lcom/android/tools/r8/internal/Hx0;

    move-result-object v0

    iget-short v1, p0, Lcom/android/tools/r8/internal/Yo;->f:S

    .line 10
    iget-short v2, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v2, v2

    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/pu0;IJ)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 5

    iget-short p1, p0, Lcom/android/tools/r8/internal/Yo;->f:S

    iget-short v0, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(IJ)Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/android/tools/r8/internal/Yo;->g:S

    int-to-long v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstWide16"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "const-wide/16"

    return-object v0
.end method
