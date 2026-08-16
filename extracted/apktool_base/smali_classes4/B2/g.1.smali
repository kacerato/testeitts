.class public final LB2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/g$b;,
        LB2/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/I<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final b:LB2/h$c;

.field public final c:I

.field public final d:LB2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB2/n<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final e:LB2/g$c;


# direct methods
.method public constructor <init>(LB2/h$c;ILB2/n;LB2/g$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB2/h$c;",
            "I",
            "LB2/n<",
            "-TT;>;",
            "LB2/g$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3
    :goto_0
    const-string v3, "numHashFunctions (%s) must be > 0"

    invoke-static {v2, v3, p2}, Lw2/H;->k(ZLjava/lang/String;I)V

    const/16 v2, 0xff

    if-gt p2, v2, :cond_1

    move v0, v1

    .line 4
    :cond_1
    const-string v1, "numHashFunctions (%s) must be <= 255"

    invoke-static {v0, v1, p2}, Lw2/H;->k(ZLjava/lang/String;I)V

    .line 5
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/h$c;

    iput-object p1, p0, LB2/g;->b:LB2/h$c;

    .line 6
    iput p2, p0, LB2/g;->c:I

    .line 7
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/n;

    iput-object p1, p0, LB2/g;->d:LB2/n;

    .line 8
    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/g$c;

    iput-object p1, p0, LB2/g;->e:LB2/g$c;

    return-void
.end method

.method public synthetic constructor <init>(LB2/h$c;ILB2/n;LB2/g$c;LB2/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LB2/g;-><init>(LB2/h$c;ILB2/n;LB2/g$c;)V

    return-void
.end method

.method public static synthetic a(LB2/g;)LB2/h$c;
    .locals 0

    iget-object p0, p0, LB2/g;->b:LB2/h$c;

    return-object p0
.end method

.method public static synthetic b(LB2/g;)I
    .locals 0

    iget p0, p0, LB2/g;->c:I

    return p0
.end method

.method public static synthetic c(LB2/g;)LB2/n;
    .locals 0

    iget-object p0, p0, LB2/g;->d:LB2/n;

    return-object p0
.end method

.method public static synthetic d(LB2/g;)LB2/g$c;
    .locals 0

    iget-object p0, p0, LB2/g;->e:LB2/g$c;

    return-object p0
.end method

.method public static h(LB2/n;I)LB2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "-TT;>;I)",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, LB2/g;->j(LB2/n;J)LB2/g;

    move-result-object p0

    return-object p0
.end method

.method public static i(LB2/n;ID)LB2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "-TT;>;ID)",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2, p3}, LB2/g;->k(LB2/n;JD)LB2/g;

    move-result-object p0

    return-object p0
.end method

.method public static j(LB2/n;J)LB2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "-TT;>;J)",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {p0, p1, p2, v0, v1}, LB2/g;->k(LB2/n;JD)LB2/g;

    move-result-object p0

    return-object p0
.end method

.method public static k(LB2/n;JD)LB2/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "-TT;>;JD)",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    sget-object v5, LB2/h;->MURMUR128_MITZ_64:LB2/h;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, LB2/g;->l(LB2/n;JDLB2/g$c;)LB2/g;

    move-result-object p0

    return-object p0
.end method

.method public static l(LB2/n;JDLB2/g$c;)LB2/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "-TT;>;JD",
            "LB2/g$c;",
            ")",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Expected insertions (%s) must be >= 0"

    invoke-static {v3, v4, p1, p2}, Lw2/H;->p(ZLjava/lang/String;J)V

    const-wide/16 v3, 0x0

    cmpl-double v3, p3, v3

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "False positive probability (%s) must be > 0.0"

    invoke-static {v3, v5, v4}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p3, v3

    if-gez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "False positive probability (%s) must be < 1.0"

    invoke-static {v1, v3, v2}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p5}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    const-wide/16 p1, 0x1

    :cond_3
    invoke-static {p1, p2, p3, p4}, LB2/g;->p(JD)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, LB2/g;->q(JJ)I

    move-result p1

    :try_start_0
    new-instance p2, LB2/g;

    new-instance v0, LB2/h$c;

    invoke-direct {v0, p3, p4}, LB2/h$c;-><init>(J)V

    invoke-direct {p2, v0, p1, p0, p5}, LB2/g;-><init>(LB2/h$c;ILB2/n;LB2/g$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p5, 0x39

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "Could not create BloomFilter of "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bits"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static p(JD)J
    .locals 2
    .annotation build Lv2/d;
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x1

    :cond_0
    neg-long p0, p0

    long-to-double p0, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    mul-double/2addr v0, p2

    div-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static q(JJ)I
    .locals 0
    .annotation build Lv2/d;
    .end annotation

    long-to-double p2, p2

    long-to-double p0, p0

    div-double/2addr p2, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static u(Ljava/io/InputStream;LB2/n;)LB2/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "LB2/n<",
            "-TT;>;)",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InputStream"

    invoke-static {p0, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Funnel"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/v;->p(B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {}, LB2/h;->values()[LB2/h;

    move-result-object v3

    aget-object v3, v3, p0

    new-instance v4, LB2/h$c;

    int-to-long v5, v0

    const-wide/16 v7, 0x40

    invoke-static {v5, v6, v7, v8}, LE2/h;->d(JJ)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, LB2/h$c;-><init>(J)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, LB2/h$c;->g(IJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move v9, v0

    move v0, p0

    move p0, v9

    goto :goto_1

    :cond_0
    new-instance v1, LB2/g;

    invoke-direct {v1, v4, v2, p1, v3}, LB2/g;-><init>(LB2/h$c;ILB2/n;LB2/g$c;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_1
    move-exception p1

    move v2, v0

    move v0, p0

    move p0, v2

    goto :goto_1

    :catch_2
    move-exception p1

    move p0, v0

    move v2, p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x86

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " numHashFunctions: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dataLength: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, LB2/g;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 4

    iget-object v0, p0, LB2/g;->b:LB2/h$c;

    invoke-virtual {v0}, LB2/h$c;->b()J

    move-result-wide v0

    iget-object v2, p0, LB2/g;->b:LB2/h$c;

    invoke-virtual {v2}, LB2/h$c;->a()J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v0

    iget v0, p0, LB2/g;->c:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v0}, LE2/c;->q(DLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LB2/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LB2/g;

    iget v1, p0, LB2/g;->c:I

    iget v3, p1, LB2/g;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LB2/g;->d:LB2/n;

    iget-object v3, p1, LB2/g;->d:LB2/n;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LB2/g;->b:LB2/h$c;

    iget-object v3, p1, LB2/g;->b:LB2/h$c;

    invoke-virtual {v1, v3}, LB2/h$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LB2/g;->e:LB2/g$c;

    iget-object p1, p1, LB2/g;->e:LB2/g$c;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()J
    .locals 2
    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, LB2/g;->b:LB2/h$c;

    invoke-virtual {v0}, LB2/h$c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()LB2/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LB2/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LB2/g;

    iget-object v1, p0, LB2/g;->b:LB2/h$c;

    invoke-virtual {v1}, LB2/h$c;->c()LB2/h$c;

    move-result-object v1

    iget v2, p0, LB2/g;->c:I

    iget-object v3, p0, LB2/g;->d:LB2/n;

    iget-object v4, p0, LB2/g;->e:LB2/g$c;

    invoke-direct {v0, v1, v2, v3, v4}, LB2/g;-><init>(LB2/h$c;ILB2/n;LB2/g$c;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, LB2/g;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, LB2/g;->d:LB2/n;

    iget-object v2, p0, LB2/g;->e:LB2/g$c;

    iget-object v3, p0, LB2/g;->b:LB2/h$c;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m()D
    .locals 4

    iget-object v0, p0, LB2/g;->b:LB2/h$c;

    invoke-virtual {v0}, LB2/h$c;->a()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, LB2/g;->f()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, LB2/g;->c:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public n(LB2/g;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB2/g<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    iget v0, p0, LB2/g;->c:I

    iget v1, p1, LB2/g;->c:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LB2/g;->f()J

    move-result-wide v0

    invoke-virtual {p1}, LB2/g;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LB2/g;->e:LB2/g$c;

    iget-object v1, p1, LB2/g;->e:LB2/g$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB2/g;->d:LB2/n;

    iget-object p1, p1, LB2/g;->d:LB2/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, LB2/g;->e:LB2/g$c;

    iget-object v1, p0, LB2/g;->d:LB2/n;

    iget v2, p0, LB2/g;->c:I

    iget-object v3, p0, LB2/g;->b:LB2/h$c;

    invoke-interface {v0, p1, v1, v2, v3}, LB2/g$c;->Qb(Ljava/lang/Object;LB2/n;ILB2/h$c;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, LB2/g;->e:LB2/g$c;

    iget-object v1, p0, LB2/g;->d:LB2/n;

    iget v2, p0, LB2/g;->c:I

    iget-object v3, p0, LB2/g;->b:LB2/h$c;

    invoke-interface {v0, p1, v1, v2, v3}, LB2/g$c;->Qd(Ljava/lang/Object;LB2/n;ILB2/h$c;)Z

    move-result p1

    return p1
.end method

.method public s(LB2/g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB2/g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Cannot combine a BloomFilter with itself."

    invoke-static {v2, v3}, Lw2/H;->e(ZLjava/lang/Object;)V

    iget v2, p0, LB2/g;->c:I

    iget v3, p1, LB2/g;->c:I

    if-ne v2, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    const-string v5, "BloomFilters must have the same number of hash functions (%s != %s)"

    invoke-static {v4, v5, v2, v3}, Lw2/H;->m(ZLjava/lang/String;II)V

    invoke-virtual {p0}, LB2/g;->f()J

    move-result-wide v2

    invoke-virtual {p1}, LB2/g;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {p0}, LB2/g;->f()J

    move-result-wide v5

    invoke-virtual {p1}, LB2/g;->f()J

    move-result-wide v7

    const-string v4, "BloomFilters must have the same size underlying bit arrays (%s != %s)"

    invoke-static/range {v3 .. v8}, Lw2/H;->s(ZLjava/lang/String;JJ)V

    iget-object v0, p0, LB2/g;->e:LB2/g$c;

    iget-object v1, p1, LB2/g;->e:LB2/g$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, LB2/g;->e:LB2/g$c;

    iget-object v2, p1, LB2/g;->e:LB2/g$c;

    const-string v3, "BloomFilters must have equal strategies (%s != %s)"

    invoke-static {v0, v3, v1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LB2/g;->d:LB2/n;

    iget-object v1, p1, LB2/g;->d:LB2/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, LB2/g;->d:LB2/n;

    iget-object v2, p1, LB2/g;->d:LB2/n;

    const-string v3, "BloomFilters must have equal funnels (%s != %s)"

    invoke-static {v0, v3, v1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LB2/g;->b:LB2/h$c;

    iget-object p1, p1, LB2/g;->b:LB2/h$c;

    invoke-virtual {v0, p1}, LB2/h$c;->f(LB2/h$c;)V

    return-void
.end method

.method public final v()Ljava/lang/Object;
    .locals 1

    new-instance v0, LB2/g$b;

    invoke-direct {v0, p0}, LB2/g$b;-><init>(LB2/g;)V

    return-object v0
.end method

.method public w(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, LB2/g;->e:LB2/g$c;

    invoke-interface {p1}, LB2/g$c;->ordinal()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/u;->a(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p1, p0, LB2/g;->c:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/v;->a(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object p1, p0, LB2/g;->b:LB2/h$c;

    iget-object p1, p1, LB2/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, LB2/g;->b:LB2/h$c;

    iget-object v1, v1, LB2/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, LB2/g;->b:LB2/h$c;

    iget-object v1, v1, LB2/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
