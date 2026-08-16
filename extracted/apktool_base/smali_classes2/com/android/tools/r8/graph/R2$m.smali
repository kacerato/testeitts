.class abstract Lcom/android/tools/r8/graph/R2$m;
.super Lcom/android/tools/r8/graph/R2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/d4;",
        ">",
        "Lcom/android/tools/r8/graph/R2;"
    }
.end annotation


# instance fields
.field public final d:Lcom/android/tools/r8/graph/d4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/d4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/R2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public F0()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No boxed value for DexValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public V0()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/d4;->a(Lcom/android/tools/r8/graph/w5;)I

    move-result p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    int-to-long v0, p2

    const/4 p2, 0x4

    .line 5
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/dex/y;->b(IJ)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    neg-int v0, v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$m;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/R2$m;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v3

    if-ne v1, v3, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v1

    iget-byte v1, v1, Lcom/android/tools/r8/graph/V2;->b:B

    add-int/2addr v0, v1

    return v0
.end method

.method public k0()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ASM conversion for DexValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

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
