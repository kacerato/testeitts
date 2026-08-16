.class public Lcom/android/tools/r8/graph/e1;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/e1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:[Lcom/android/tools/r8/graph/t0;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/graph/e1;->d:I

    iput-object p1, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/t0;Lcom/android/tools/r8/graph/t0;)I
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Zc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Zc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ad;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ad;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/e1;)[Lcom/android/tools/r8/graph/t0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/e1;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    sget-object v1, Lcom/android/tools/r8/graph/t0;->d:[Lcom/android/tools/r8/graph/t0;

    .line 14
    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/tools/r8/graph/t0;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    if-ne p2, v0, :cond_0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/e1;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 9
    sget-boolean p1, Lcom/android/tools/r8/graph/e1;->e:Z

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    iget-object v4, v3, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-interface {p2, v4}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 8
    iget-object v3, v3, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

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
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/e1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/e1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)Lcom/android/tools/r8/graph/t0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public k0()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v0, v0

    return v0
.end method

.method public final l0()V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/graph/e1;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/android/tools/r8/graph/e1;->e:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/e1;->hashCode()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    new-instance v2, Lcom/android/tools/r8/graph/Yc;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/Yc;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->V0()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/e1;->hashCode()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    iput v1, p0, Lcom/android/tools/r8/graph/e1;->d:I

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/bd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/bd;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded annotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
