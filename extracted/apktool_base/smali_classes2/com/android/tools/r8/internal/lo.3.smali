.class public Lcom/android/tools/r8/internal/lo;
.super Lcom/android/tools/r8/internal/hp;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/L2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/hp;-><init>(ILcom/android/tools/r8/graph/L2;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/hp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method


# virtual methods
.method public O()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hp;->g:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-short p1, p0, Lcom/android/tools/r8/internal/hp;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/hp;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

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

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 5

    .line 2
    iget-short v0, p0, Lcom/android/tools/r8/internal/hp;->f:S

    iget-object v1, p0, Lcom/android/tools/r8/internal/hp;->g:Lcom/android/tools/r8/graph/L2;

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/vh;

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    iget-short p1, p0, Lcom/android/tools/r8/internal/hp;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/hp;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

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

.method public final f()Lcom/android/tools/r8/internal/lo;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstStringJumbo"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "const-string/jumbo"

    return-object v0
.end method
