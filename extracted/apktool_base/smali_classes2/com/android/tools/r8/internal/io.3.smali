.class public final Lcom/android/tools/r8/internal/io;
.super Lcom/android/tools/r8/internal/Wo;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/C2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p3, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Wo;)Lcom/android/tools/r8/graph/C2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/C2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 17
    iget-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 7
    iget-object p3, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p3, Lcom/android/tools/r8/graph/C2;

    .line 8
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    const/4 p4, 0x2

    invoke-virtual {p5, p3, p4, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p2

    .line 10
    iget-object p3, p1, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    .line 11
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p3

    const p4, 0xffff

    and-int/2addr p4, p3

    if-ne p3, p4, :cond_0

    .line 12
    iget-short p3, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    const/16 p4, 0xfe

    .line 13
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 14
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/bJ;

    const-string p2, "MethodHandle-index overflow."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/C2;

    .line 2
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x2

    invoke-virtual {p5, p2, v0, p4}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Ce1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ce1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 18
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/C2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstMethodHandle"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xfe

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "const-method-handle"

    return-object v0
.end method
