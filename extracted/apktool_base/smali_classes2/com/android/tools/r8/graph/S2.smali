.class public final Lcom/android/tools/r8/graph/S2;
.super Lcom/android/tools/r8/graph/R2;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/Ah;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/R2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final F0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "No boxed value for DexValueConstDynamic"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->u:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final V0()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "DexValueConstDynamic should be desugared"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "DexValueConstDynamic should be desugared"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/graph/S2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/graph/S2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    iget-object v0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ah;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "No ASM conversion for DexValueConstDynamic"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r0()Lcom/android/tools/r8/graph/S2;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/graph/V2;->u:Lcom/android/tools/r8/graph/V2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
