.class public final Lcom/android/tools/r8/internal/jo;
.super Lcom/android/tools/r8/internal/Wo;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/I2;)V
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

    iget-object v0, p3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Wo;)Lcom/android/tools/r8/graph/I2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/I2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 19
    iget-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->toString()Ljava/lang/String;

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
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/I2;

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/I2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/I2;

    .line 10
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p3, p1, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    .line 13
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p3

    const p4, 0xffff

    and-int/2addr p4, p3

    if-ne p3, p4, :cond_0

    .line 14
    iget-short p3, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    const/16 p4, 0xff

    .line 15
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 16
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/bJ;

    const-string p2, "MethodType-index overflow."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/I2;

    .line 2
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p3, p2}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    iget-object p4, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 6
    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Vf1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vf1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 20
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/I2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->toString()Ljava/lang/String;

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

    const-string v0, "ConstMethodType"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "const-method-type"

    return-object v0
.end method
