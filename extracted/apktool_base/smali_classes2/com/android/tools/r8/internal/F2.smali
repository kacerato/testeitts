.class public Lcom/android/tools/r8/internal/F2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/D2;


# static fields
.field public static final g:[B

.field public static volatile h:Lcom/android/tools/r8/internal/y2; = null

.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Lcom/android/tools/r8/internal/nJ;

.field public final f:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/A2;",
            ">;",
            "Lcom/android/tools/r8/internal/nJ;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/F2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/F2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/F2;->e:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/F2;->f:Lcom/android/tools/r8/DiagnosticsHandler;

    new-instance p3, Lcom/android/tools/r8/internal/fE0;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/fE0;-><init>(Lcom/android/tools/r8/internal/F2;)V

    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget p3, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance p3, Lcom/android/tools/r8/internal/IC;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/IC;-><init>()V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/gE0;

    invoke-direct {v1, p3, p2}, Lcom/android/tools/r8/internal/gE0;-><init>(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/H2;->a(Ljava/util/function/Consumer;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/F2;->b:Lcom/android/tools/r8/internal/QC;

    sget p3, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance p3, Lcom/android/tools/r8/internal/eC;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hE0;

    invoke-direct {v1, p3, p2}, Lcom/android/tools/r8/internal/hE0;-><init>(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/nJ;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/H2;->m:Z

    if-nez p2, :cond_1

    iget-boolean p2, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, v0, Lcom/android/tools/r8/internal/H2;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/16 v0, 0x2c

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/F2;->a:Lcom/android/tools/r8/internal/hC;

    sget-boolean p2, Lcom/android/tools/r8/internal/F2;->i:Z

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/iE0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/iE0;-><init>(Lcom/android/tools/r8/internal/F2;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(I)B
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/internal/F2;->i:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)V
    .locals 0

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 47
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)Z
    .locals 4

    .line 53
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length p0, p0

    .line 54
    sget-boolean v0, Lcom/android/tools/r8/internal/F2;->i:Z

    const/16 v1, 0x2f

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    add-int/lit8 v2, p0, -0x2

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v0, p0, -0x1

    .line 55
    new-instance v2, Lcom/android/tools/r8/graph/K2;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/graph/K2;-><init>(ILcom/android/tools/r8/graph/L2;)V

    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v3
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_2

    return v0

    :catch_0
    move-exception v1

    .line 58
    sget-boolean v2, Lcom/android/tools/r8/internal/F2;->i:Z

    if-eqz v2, :cond_3

    return v0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from index "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " caused "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static a()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Xr0;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/J2;",
            "Lcom/android/tools/r8/internal/Xr0<",
            "Lcom/android/tools/r8/graph/L2;",
            "Ljava/lang/Integer;",
            "Ljava/io/IOException;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v4, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_0

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result p1

    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result p0

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte p1, v0, v2

    aput-byte p0, v0, v1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_2

    .line 8
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_3

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz v4, :cond_5

    if-ltz v5, :cond_5

    if-gez p0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {v4}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result p1

    .line 14
    invoke-static {v4}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result v4

    .line 15
    invoke-static {v5}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result v6

    .line 16
    invoke-static {v5}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result v5

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result v7

    .line 18
    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result p0

    const/4 v8, 0x7

    new-array v8, v8, [B

    aput-byte v2, v8, v3

    aput-byte p1, v8, v2

    aput-byte v4, v8, v1

    aput-byte v6, v8, v0

    const/4 p1, 0x4

    aput-byte v5, v8, p1

    const/4 p1, 0x5

    aput-byte v7, v8, p1

    const/4 p1, 0x6

    aput-byte p0, v8, p1

    return-object v8

    .line 19
    :cond_5
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 20
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/internal/F2;->i:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    if-ltz v4, :cond_d

    if-gez v5, :cond_9

    goto/16 :goto_3

    .line 22
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 24
    invoke-static {v4}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 25
    invoke-static {v4}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 26
    invoke-static {v5}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 27
    invoke-static {v5}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_a

    .line 30
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 31
    :cond_a
    invoke-static {v2}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 32
    invoke-static {v2}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_c

    .line 34
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0

    .line 35
    :cond_c
    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->a(I)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    invoke-static {p0}, Lcom/android/tools/r8/internal/F2;->b(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 38
    :cond_d
    :goto_3
    sget-object p0, Lcom/android/tools/r8/internal/F2;->g:[B

    return-object p0
.end method

.method public static b(I)B
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/F2;->i:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)Ljava/lang/Integer;
    .locals 0

    .line 17
    sget-object p1, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/y2;->b(Lcom/android/tools/r8/graph/L2;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/C2;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F2;->b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/C2;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F2;->b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/C2;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F2;->b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/Integer;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/internal/F2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/cE0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/cE0;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)Ljava/util/Optional;
    .locals 5

    .line 59
    sget-object v0, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/F2;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F2;->f:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 61
    sget-object v2, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    if-nez v2, :cond_1

    .line 62
    const-class v2, Lcom/android/tools/r8/internal/y2;

    monitor-enter v2

    .line 63
    :try_start_0
    sget-object v3, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    if-nez v3, :cond_0

    .line 64
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/y2;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/y2;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 66
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    instance-of v0, v0, Lcom/android/tools/r8/internal/w2;

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/dE0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dE0;-><init>(Lcom/android/tools/r8/internal/F2;)V

    .line 70
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/F2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Xr0;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 71
    :catch_0
    invoke-static {}, Lcom/android/tools/r8/internal/F2;->a()[B

    move-result-object v0

    .line 72
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/F2;->a()[B

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 73
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/F2;->h:Lcom/android/tools/r8/internal/y2;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {p1}, Lcom/android/tools/r8/internal/y2;->a(Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    .line 77
    iget v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y2;->d()I

    move-result v2

    iput v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    .line 79
    :cond_4
    iget v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    .line 80
    invoke-static {v2}, Lcom/android/tools/r8/internal/y2;->a(I)I

    move-result v2

    mul-int/lit8 p1, p1, 0x6

    add-int/2addr p1, v2

    .line 81
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/y2;->c(I)Lcom/android/tools/r8/internal/x2;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    sget-object v2, Lcom/android/tools/r8/internal/x2;->c:Lcom/android/tools/r8/internal/x2;

    if-ne p1, v2, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 84
    :cond_5
    iget v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    if-ne v2, v3, :cond_6

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/y2;->d()I

    move-result v2

    iput v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    .line 86
    :cond_6
    iget v2, v1, Lcom/android/tools/r8/internal/y2;->a:I

    .line 87
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->b()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    mul-int/lit8 v3, v3, 0x6

    .line 88
    invoke-static {v2}, Lcom/android/tools/r8/internal/y2;->a(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 89
    iget v3, p1, Lcom/android/tools/r8/internal/x2;->a:I

    add-int/2addr v2, v3

    .line 90
    iget p1, p1, Lcom/android/tools/r8/internal/x2;->b:I

    .line 91
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/tools/r8/internal/y2;->b([BII)B

    move-result p1

    :goto_4
    if-gtz p1, :cond_7

    .line 92
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_5

    .line 93
    :cond_7
    invoke-static {p1}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/A2;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/F2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    iget-object v1, p1, Lcom/android/tools/r8/internal/A2;->a:Lcom/android/tools/r8/graph/J2;

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/internal/A2;->b:Lcom/android/tools/r8/internal/C2;

    .line 43
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    .line 44
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/C2;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/F2;->b:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/C2;->N:Lcom/android/tools/r8/internal/C2;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/F2;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/F2;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v3, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/F2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/C2;->N:Lcom/android/tools/r8/internal/C2;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/F2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/eE0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/eE0;-><init>(Lcom/android/tools/r8/internal/F2;)V

    .line 15
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/C2;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/A2;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/A2;->b:Lcom/android/tools/r8/internal/C2;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/A2;->a:Lcom/android/tools/r8/graph/J2;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F2;->b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method
