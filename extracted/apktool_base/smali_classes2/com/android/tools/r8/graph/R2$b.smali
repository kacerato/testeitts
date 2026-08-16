.class public Lcom/android/tools/r8/graph/R2$b;
.super Lcom/android/tools/r8/graph/R2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final d:[Lcom/android/tools/r8/graph/R2;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/R2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/R2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

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

    const-string v1, "No boxed value for DexValueArray"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->q:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final V0()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->V0()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public W0()[Lcom/android/tools/r8/graph/R2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 4

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/V2;->q:Lcom/android/tools/r8/graph/V2;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v0, v0

    .line 6
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 8
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Ljava/util/List;)V

    return-void
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/R2$b;

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "No ASM conversion for DexValueArray"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n0()Lcom/android/tools/r8/graph/R2$b;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
