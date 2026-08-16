.class public Lcom/android/tools/r8/dex/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/E0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/dex/D;

.field public final c:Ljava/util/ArrayList;

.field public final d:I

.field public final e:[I

.field public final f:Lcom/android/tools/r8/graph/V;

.field public final g:Lcom/android/tools/r8/internal/nJ;

.field public h:Lcom/android/tools/r8/internal/D20;

.field public final i:Lcom/android/tools/r8/graph/x5;

.field public final j:Lcom/android/tools/r8/internal/dH;

.field public final k:Lcom/android/tools/r8/internal/dH;

.field public final l:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/graph/x5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/x5;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/dex/C;->j:Lcom/android/tools/r8/internal/dH;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/dex/C;->k:Lcom/android/tools/r8/internal/dH;

    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v0, p0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iput p4, p0, Lcom/android/tools/r8/dex/C;->d:I

    iget-object p4, p3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p4, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p1, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/dex/s;->a(Ljava/nio/ByteOrder;)V

    iget-object p4, p1, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/dex/s;->b(I)I

    move-result p4

    const v0, 0x78563412

    if-ne p4, v0, :cond_2

    iget-object p4, p1, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/dex/s;->a(Ljava/nio/ByteOrder;)V

    goto :goto_1

    :cond_2
    const v0, 0x12345678

    if-ne p4, v0, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->i()Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/dex/C;->c:Ljava/util/ArrayList;

    if-nez p5, :cond_4

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object p4

    iget p5, p4, Lcom/android/tools/r8/dex/E;->b:I

    new-array v0, p5, [I

    iput-object v0, p0, Lcom/android/tools/r8/dex/C;->e:[I

    if-nez p5, :cond_3

    goto :goto_3

    :cond_3
    iget p5, p4, Lcom/android/tools/r8/dex/E;->c:I

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/dex/m;->b(I)V

    const/4 p1, 0x0

    :goto_2
    iget p5, p4, Lcom/android/tools/r8/dex/E;->b:I

    if-ge p1, p5, :cond_5

    iget-object p5, p0, Lcom/android/tools/r8/dex/C;->e:[I

    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v0

    aput v0, p5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p5, Lcom/android/tools/r8/dex/C;->e:[I

    iput-object p1, p0, Lcom/android/tools/r8/dex/C;->e:[I

    :cond_5
    :goto_3
    iput-object p2, p0, Lcom/android/tools/r8/dex/C;->f:Lcom/android/tools/r8/graph/V;

    iput-object p3, p0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    return-void

    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Unable to determine endianess for reading dex file."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ljava/lang/Long;Lcom/android/tools/r8/graph/H2;)J
    .locals 0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/dex/E;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 2
    new-instance v3, Lcom/android/tools/r8/dex/D;

    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v3, v1, p0}, Lcom/android/tools/r8/dex/D;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    .line 3
    new-instance p0, Lcom/android/tools/r8/dex/C;

    sget-object v4, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    new-instance v5, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/dex/C;-><init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/dex/C;->c:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(I[Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/graph/W0;
    .locals 2

    .line 25
    new-instance v0, Lu/l;

    invoke-direct {v0, p0}, Lu/l;-><init>(Lcom/android/tools/r8/dex/C;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/W0;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object v1

    .line 28
    iget v1, v1, Lcom/android/tools/r8/graph/X0;->f:I

    .line 29
    invoke-static {p2}, Lcom/android/tools/r8/internal/oj;->a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p2

    if-le p2, v1, :cond_0

    .line 31
    iget-object p2, p0, Lcom/android/tools/r8/dex/C;->k:Lcom/android/tools/r8/internal/dH;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lu/m;

    invoke-direct {v0, p0}, Lu/m;-><init>(Lcom/android/tools/r8/dex/C;)V

    .line 33
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/W0;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Z)Lcom/android/tools/r8/graph/W0;
    .locals 14

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-ne v0, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v3

    .line 38
    new-array v4, v3, [Lcom/android/tools/r8/graph/L2;

    move v5, v2

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v3, :cond_2

    .line 39
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    aput-object p1, v4, v5

    move p1, v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 41
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 43
    iget-object v7, v7, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 44
    invoke-virtual {v7}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 46
    sget-boolean v9, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v9, :cond_4

    if-ltz v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-eqz v7, :cond_11

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_0

    .line 47
    sget-boolean v9, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v9, :cond_6

    const/16 v9, 0xa

    if-lt v7, v9, :cond_5

    if-gt v7, v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/graph/u1;->c(I)Lcom/android/tools/r8/graph/O0$b;

    move-result-object v7

    .line 49
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_f

    .line 50
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 51
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    invoke-virtual {v7, p1}, Lcom/android/tools/r8/graph/O0;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_b

    .line 52
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->s:Lcom/android/tools/r8/graph/O0$b;

    invoke-virtual {v7, p1}, Lcom/android/tools/r8/graph/O0;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_b

    .line 53
    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/m;->b()I

    move-result p1

    if-ne p1, v6, :cond_8

    goto :goto_4

    .line 54
    :cond_8
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, p1}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 55
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->V:Z

    if-eqz p1, :cond_9

    .line 56
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/O0$c;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    move p1, v2

    goto/16 :goto_b

    .line 57
    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    .line 58
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->n:Lcom/android/tools/r8/graph/R0;

    .line 59
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 60
    :pswitch_2
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    .line 61
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->o:Lcom/android/tools/r8/graph/T0;

    .line 62
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 63
    :pswitch_3
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {v7}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v7

    .line 65
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/u1;->e(I)Lcom/android/tools/r8/graph/Q0;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 66
    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v7}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v7

    .line 68
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/u1;->d(I)Lcom/android/tools/r8/graph/P0;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 69
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {p1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result p1

    .line 71
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v7

    .line 72
    iget-object v10, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v10

    .line 73
    iget-object v11, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v11}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v11

    .line 74
    new-instance v12, Lcom/android/tools/r8/graph/O0$d;

    if-ne v7, v6, :cond_a

    move-object v7, v9

    goto :goto_6

    .line 75
    :cond_a
    iget-object v13, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v7}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    :goto_6
    if-ne v10, v6, :cond_b

    move-object v10, v9

    goto :goto_7

    .line 76
    :cond_b
    iget-object v13, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v10}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    :goto_7
    if-ne v11, v6, :cond_c

    goto :goto_8

    .line 77
    :cond_c
    iget-object v9, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    :goto_8
    invoke-direct {v12, p1, v7, v10, v9}, Lcom/android/tools/r8/graph/O0$d;-><init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 78
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 79
    :pswitch_6
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {p1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result p1

    .line 81
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v7

    .line 82
    iget-object v10, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->b()I

    move-result v10

    .line 83
    new-instance v11, Lcom/android/tools/r8/graph/O0$d;

    if-ne v7, v6, :cond_d

    move-object v7, v9

    goto :goto_9

    .line 84
    :cond_d
    iget-object v12, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v12, v7}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    :goto_9
    if-ne v10, v6, :cond_e

    move-object v10, v9

    goto :goto_a

    .line 85
    :cond_e
    iget-object v12, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v12, v10}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    :goto_a
    invoke-direct {v11, p1, v7, v10, v9}, Lcom/android/tools/r8/graph/O0$d;-><init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 86
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 87
    :pswitch_7
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v7}, Lcom/android/tools/r8/internal/BR;->a(Lcom/android/tools/r8/dex/m;)I

    move-result v7

    .line 89
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/u1;->a(I)Lcom/android/tools/r8/graph/N0;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 90
    :pswitch_8
    iget-object p1, p0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {v7}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v7

    .line 92
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/u1;->b(I)Lcom/android/tools/r8/graph/O0$a;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 93
    :cond_f
    :goto_b
    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 94
    iget-object v7, v7, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 95
    invoke-virtual {v7}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/2addr v7, v8

    .line 97
    sget-boolean v9, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v9, :cond_4

    if-ltz v7, :cond_10

    goto/16 :goto_2

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    if-eqz p1, :cond_12

    .line 98
    new-instance p1, Lcom/android/tools/r8/graph/X0;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p1, v3, v0}, Lcom/android/tools/r8/graph/X0;-><init>(II)V

    return-object p1

    .line 99
    :cond_12
    new-instance p1, Lcom/android/tools/r8/graph/W0$a;

    sget-object v1, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {p1, v0, v4, v1}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Lcom/android/tools/r8/graph/r0;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 23
    new-instance v1, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->f()Lcom/android/tools/r8/graph/e1;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    return-object v1
.end method

.method public final a(I)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 24
    new-instance v0, Lu/b;

    invoke-direct {v0, p0}, Lu/b;-><init>(Lcom/android/tools/r8/dex/C;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    return-object p1
.end method

.method public final a(ILjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 16
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/dex/E;)V
    .locals 11

    .line 328
    iget v0, p1, Lcom/android/tools/r8/dex/E;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 329
    iget v0, p1, Lcom/android/tools/r8/dex/E;->c:I

    .line 330
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 331
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    .line 332
    :goto_0
    iget v4, p1, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v3, v4, :cond_3

    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v0

    .line 333
    iget-object v5, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 334
    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    if-le v4, v1, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 335
    :goto_1
    sget-boolean v6, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    new-instance p1, Ljava/lang/AssertionError;

    .line 336
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "Duplicate"

    goto :goto_2

    .line 338
    :cond_1
    const-string v0, "Out-of-order"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type ids (type #%s: `%s` string #%s, type #%s: `%s` string #%s)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v3, -0x1

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    .line 340
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 342
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    .line 343
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 344
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 8
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/u1;->D6:Z

    if-nez v1, :cond_2

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->p0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Space characters in SimpleName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not allowed prior to DEX version 040"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/B;)V
    .locals 47

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v1

    .line 239
    iget v2, v1, Lcom/android/tools/r8/dex/E;->b:I

    .line 240
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    .line 241
    sget-boolean v4, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v4, :cond_1

    .line 242
    iget-object v4, v3, Lcom/android/tools/r8/graph/x5;->a:[Lcom/android/tools/r8/graph/H2;

    if-nez v4, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 244
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    :goto_0
    new-array v4, v2, [Lcom/android/tools/r8/graph/H2;

    iput-object v4, v3, Lcom/android/tools/r8/graph/x5;->a:[Lcom/android/tools/r8/graph/H2;

    if-nez v2, :cond_2

    goto/16 :goto_d

    .line 246
    :cond_2
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget v1, v1, Lcom/android/tools/r8/dex/E;->c:I

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 247
    new-array v1, v2, [I

    .line 248
    new-array v3, v2, [I

    .line 249
    new-array v4, v2, [I

    .line 250
    new-array v5, v2, [I

    .line 251
    new-array v6, v2, [I

    .line 252
    new-array v7, v2, [I

    .line 253
    new-array v8, v2, [I

    .line 254
    new-array v9, v2, [I

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v2, :cond_3

    .line 255
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v1, v11

    .line 256
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v3, v11

    .line 257
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 258
    iget-object v12, v12, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 259
    invoke-virtual {v12}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v12

    .line 260
    aput v12, v4, v11

    .line 261
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v5, v11

    .line 262
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 263
    iget-object v12, v12, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 264
    invoke-virtual {v12}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v12

    .line 265
    aput v12, v6, v11

    .line 266
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v7, v11

    .line 267
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v8, v11

    .line 268
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move v11, v10

    :goto_2
    if-ge v11, v2, :cond_12

    .line 269
    aget v12, v4, v11

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    const/16 v20, 0x0

    goto :goto_3

    .line 270
    :cond_4
    iget-object v15, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v15, v12}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    move-object/from16 v20, v12

    .line 271
    :goto_3
    aget v12, v6, v11

    if-ne v12, v13, :cond_5

    const/16 v22, 0x0

    goto :goto_4

    .line 272
    :cond_5
    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    move-object/from16 v22, v12

    .line 273
    :goto_4
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    aget v13, v1, v11

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 274
    aget v13, v3, v11

    .line 275
    new-instance v15, Lcom/android/tools/r8/graph/Q;

    and-int/lit16 v13, v13, 0x761f

    invoke-direct {v15, v13}, Lcom/android/tools/r8/graph/Q;-><init>(I)V

    .line 276
    sget-object v13, Lcom/android/tools/r8/dex/t;->b:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {v15, v13, v10}, Lcom/android/tools/r8/graph/Q;->a(Lcom/android/tools/r8/internal/Ib;Z)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 277
    sget-object v13, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 278
    sget-object v16, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 279
    aget v10, v7, v11

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/dex/C;->d(I)Lcom/android/tools/r8/dex/z;

    move-result-object v10

    .line 280
    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->h:Lcom/android/tools/r8/internal/D20;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/D20;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v14, p2

    .line 281
    invoke-virtual {v14, v12}, Lcom/android/tools/r8/graph/B;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    move-object/from16 v39, v1

    .line 282
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    move/from16 v40, v2

    .line 283
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->h:Lcom/android/tools/r8/internal/D20;

    move-object/from16 v41, v3

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 284
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->U:Ljava/util/function/BiPredicate;

    invoke-interface {v3, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v3, p1

    move-object/from16 v42, v4

    move-object/from16 v45, v5

    move-object/from16 v43, v6

    move-object/from16 v44, v7

    move-object/from16 v46, v8

    goto/16 :goto_c

    :cond_6
    move-object/from16 v14, p2

    move-object/from16 v39, v1

    move/from16 v40, v2

    move-object/from16 v41, v3

    const/4 v2, 0x0

    .line 285
    :cond_7
    aget v1, v8, v11

    if-eqz v1, :cond_b

    .line 286
    aget v1, v9, v11

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->e(I)Lcom/android/tools/r8/graph/f1;

    move-result-object v1

    .line 287
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    aget v13, v8, v11

    invoke-virtual {v3, v13}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 288
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v3

    .line 290
    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    invoke-static {v13}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v13

    move-object/from16 v42, v4

    .line 292
    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    invoke-static {v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v4

    move-object/from16 v43, v6

    .line 294
    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    invoke-static {v6}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v6

    move-object/from16 v44, v7

    .line 296
    iget-object v7, v10, Lcom/android/tools/r8/dex/z;->b:[Lcom/android/tools/r8/graph/w2;

    if-eqz v1, :cond_8

    .line 297
    iget-object v1, v1, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 298
    :goto_5
    invoke-virtual {v0, v3, v7, v1}, Lcom/android/tools/r8/dex/C;->a(I[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/R2;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 299
    iget-object v3, v10, Lcom/android/tools/r8/dex/z;->b:[Lcom/android/tools/r8/graph/w2;

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v3, v7}, Lcom/android/tools/r8/dex/C;->a(I[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/R2;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 300
    iget-object v7, v10, Lcom/android/tools/r8/dex/z;->c:[Lcom/android/tools/r8/graph/x2;

    iget-object v13, v10, Lcom/android/tools/r8/dex/z;->d:[Lcom/android/tools/r8/graph/y2;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->f:Lcom/android/tools/r8/graph/V;

    move-object/from16 v17, v3

    sget-object v3, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    const/16 v18, 0x1

    if-eq v1, v3, :cond_9

    move/from16 v1, v18

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    .line 301
    :goto_6
    invoke-virtual {v0, v4, v7, v13, v1}, Lcom/android/tools/r8/dex/C;->a(I[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;Z)[Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 302
    iget-object v3, v10, Lcom/android/tools/r8/dex/z;->c:[Lcom/android/tools/r8/graph/x2;

    iget-object v4, v10, Lcom/android/tools/r8/dex/z;->d:[Lcom/android/tools/r8/graph/y2;

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->f:Lcom/android/tools/r8/graph/V;

    sget-object v13, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-eq v7, v13, :cond_a

    move/from16 v7, v18

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 303
    :goto_7
    invoke-virtual {v0, v6, v3, v4, v7}, Lcom/android/tools/r8/dex/C;->a(I[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;Z)[Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    move-object/from16 v33, v1

    move-object/from16 v34, v3

    move-object/from16 v31, v16

    move-object/from16 v32, v17

    goto :goto_8

    :cond_b
    move-object/from16 v42, v4

    move-object/from16 v43, v6

    move-object/from16 v44, v7

    move-object/from16 v31, v13

    move-object/from16 v32, v31

    move-object/from16 v33, v16

    move-object/from16 v34, v33

    .line 304
    :goto_8
    new-instance v1, Lcom/android/tools/r8/dex/A;

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    iget-object v4, v10, Lcom/android/tools/r8/dex/z;->a:Lcom/android/tools/r8/graph/u0;

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v1, v12, v3, v4, v6}, Lcom/android/tools/r8/dex/A;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/nJ;)V

    if-nez v2, :cond_c

    .line 305
    new-instance v2, Lcom/android/tools/r8/l2;

    invoke-direct {v2}, Lcom/android/tools/r8/l2;-><init>()V

    move-object/from16 v36, v2

    goto :goto_9

    :cond_c
    new-instance v3, Lu/j;

    invoke-direct {v3, v2}, Lu/j;-><init>(Ljava/lang/Long;)V

    move-object/from16 v36, v3

    .line 306
    :goto_9
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->f:Lcom/android/tools/r8/graph/V;

    sget-object v17, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    aget v4, v5, v11

    .line 307
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/C;->h(I)Lcom/android/tools/r8/graph/O2;

    move-result-object v21

    iget-object v4, v1, Lcom/android/tools/r8/dex/A;->f:Lcom/android/tools/r8/graph/o5;

    iget-object v6, v1, Lcom/android/tools/r8/dex/A;->g:Ljava/util/List;

    iget-object v7, v1, Lcom/android/tools/r8/dex/A;->h:Ljava/util/List;

    iget-object v10, v1, Lcom/android/tools/r8/dex/A;->i:Ljava/util/List;

    .line 308
    iget-object v13, v1, Lcom/android/tools/r8/dex/A;->b:Lcom/android/tools/r8/graph/i3;

    move-object/from16 v45, v5

    .line 309
    iget-object v5, v1, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    if-nez v5, :cond_d

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_d
    move-object/from16 v28, v5

    .line 310
    iget-object v5, v1, Lcom/android/tools/r8/dex/A;->e:Lcom/android/tools/r8/graph/H3$b;

    move-object/from16 v46, v8

    .line 311
    iget-object v8, v1, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    if-eqz v8, :cond_10

    .line 312
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_e

    .line 313
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    :goto_a
    move-object/from16 v30, v1

    goto :goto_b

    .line 314
    :cond_e
    iget-object v1, v1, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/r0;

    .line 315
    invoke-static {v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    goto :goto_a

    :cond_f
    new-instance v8, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v8, v1}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    move-object/from16 v30, v8

    goto :goto_b

    .line 316
    :cond_10
    iget-object v1, v1, Lcom/android/tools/r8/dex/A;->a:Lcom/android/tools/r8/graph/u0;

    goto :goto_a

    .line 317
    :goto_b
    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    .line 318
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v35, v1

    .line 319
    sget-object v38, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    .line 320
    iget-object v1, v2, Lcom/android/tools/r8/graph/V;->a:Lcom/android/tools/r8/graph/U;

    move-object v2, v15

    move-object v15, v1

    const/16 v37, 0x0

    move-object/from16 v16, v12

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    move-object/from16 v27, v13

    move-object/from16 v29, v5

    .line 321
    invoke-interface/range {v15 .. v38}, Lcom/android/tools/r8/graph/U;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    move-object/from16 v3, p1

    .line 322
    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    move-object/from16 v6, v43

    move-object/from16 v7, v44

    move-object/from16 v5, v45

    move-object/from16 v8, v46

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_11
    move-object v2, v15

    .line 323
    new-instance v1, Lcom/android/tools/r8/internal/If;

    .line 324
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has illegal access flags. Found: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    const/4 v4, 0x0

    .line 325
    invoke-direct {v1, v3, v2, v4}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    throw v1

    :cond_12
    :goto_d
    return-void
.end method

.method public final a(I[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/R2;)[Lcom/android/tools/r8/graph/g1;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 100
    new-array v3, v1, [Lcom/android/tools/r8/graph/g1;

    .line 101
    new-instance v4, Lcom/android/tools/r8/dex/B;

    new-instance v5, Lu/i;

    invoke-direct {v5}, Lu/i;-><init>()V

    move-object/from16 v6, p2

    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/dex/B;-><init>([Lcom/android/tools/r8/graph/z2;Ljava/util/function/Supplier;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    .line 102
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {v8}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v8

    add-int/2addr v7, v8

    .line 104
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/x5;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    .line 105
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {v9}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v9

    .line 107
    new-instance v10, Lcom/android/tools/r8/graph/k3;

    and-int/lit16 v9, v9, 0x50df

    invoke-direct {v10, v9}, Lcom/android/tools/r8/graph/k3;-><init>(I)V

    .line 108
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 109
    array-length v9, v2

    if-ge v6, v9, :cond_0

    .line 110
    aget-object v9, v2, v6

    goto :goto_1

    :cond_0
    move-object v9, v11

    .line 111
    :goto_1
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/dex/B;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/n1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/u0;

    .line 112
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v13

    .line 113
    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v14, v14, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v14, :cond_2

    .line 114
    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    sget-object v15, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 115
    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v14}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v14

    if-nez v14, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    invoke-static {v14}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/r0;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_2

    .line 117
    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/u0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/u0;

    move-result-object v12

    .line 118
    iget-object v13, v8, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 119
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    iget-object v15, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 120
    invoke-static {v13, v11, v14, v15, v5}, Lcom/android/tools/r8/graph/H3;->b(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v13

    .line 121
    :cond_2
    sget-object v5, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 122
    new-instance v5, Lcom/android/tools/r8/graph/g1$a;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 123
    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v5

    .line 124
    iput-object v10, v5, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 125
    iput-object v13, v5, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 126
    iput-object v12, v5, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 127
    iput-object v9, v5, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 128
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v5

    aput-object v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v3
.end method

.method public final a(I[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;Z)[Lcom/android/tools/r8/graph/j1;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 130
    new-array v2, v1, [Lcom/android/tools/r8/graph/j1;

    .line 131
    new-instance v3, Lcom/android/tools/r8/dex/B;

    new-instance v4, Lu/i;

    invoke-direct {v4}, Lu/i;-><init>()V

    move-object/from16 v5, p2

    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/dex/B;-><init>([Lcom/android/tools/r8/graph/z2;Ljava/util/function/Supplier;)V

    .line 132
    new-instance v4, Lcom/android/tools/r8/dex/B;

    new-instance v5, Lu/k;

    invoke-direct {v5}, Lu/k;-><init>()V

    move-object/from16 v6, p3

    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/dex/B;-><init>([Lcom/android/tools/r8/graph/z2;Ljava/util/function/Supplier;)V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_12

    .line 133
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v8}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v8

    add-int/2addr v7, v8

    .line 135
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-static {v8}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v8

    .line 137
    invoke-static {v8}, Lcom/android/tools/r8/graph/L4;->e(I)Lcom/android/tools/r8/graph/L4;

    move-result-object v8

    .line 138
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {v9}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v9

    if-nez p4, :cond_2

    if-nez v9, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->f:Lcom/android/tools/r8/graph/V;

    sget-object v12, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x2001

    .line 141
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v11

    .line 142
    iget v11, v11, Lcom/android/tools/r8/dex/E;->b:I

    if-nez v11, :cond_3

    :cond_2
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 p3, v6

    move/from16 v24, v7

    move-object/from16 v23, v8

    const/4 v3, 0x0

    goto/16 :goto_b

    .line 143
    :cond_3
    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 144
    iget-object v11, v11, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 145
    invoke-virtual {v11}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 146
    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v11

    .line 147
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12, v9}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 148
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    sget-boolean v12, Lcom/android/tools/r8/dex/m;->c:Z

    .line 150
    iget-object v12, v9, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 151
    invoke-virtual {v12}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 152
    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v12

    .line 153
    rem-int/lit8 v13, v12, 0x4

    rsub-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0x3

    add-int/2addr v12, v13

    .line 154
    iget-object v9, v9, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v9, v12}, Lcom/android/tools/r8/dex/s;->c(I)V

    .line 155
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v13

    .line 156
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v14

    .line 157
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v15

    .line 158
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v9

    .line 159
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    .line 160
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v10

    .line 161
    new-array v1, v10, [S

    move-object/from16 v20, v2

    .line 162
    new-array v2, v9, [Lcom/android/tools/r8/graph/J0$a;

    move/from16 p3, v6

    .line 163
    new-array v6, v5, [Lcom/android/tools/r8/graph/J0$b;

    if-eqz v10, :cond_c

    :goto_2
    if-ge v5, v10, :cond_4

    move-object/from16 v16, v6

    .line 164
    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 165
    iget-object v6, v6, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 166
    invoke-virtual {v6}, Lcom/android/tools/r8/dex/s;->d()S

    move-result v6

    .line 167
    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v16

    goto :goto_2

    :cond_4
    move-object/from16 v16, v6

    .line 168
    rem-int/lit8 v5, v10, 0x2

    if-eqz v5, :cond_5

    .line 169
    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/m;->c()I

    :cond_5
    if-lez v9, :cond_b

    .line 170
    new-instance v5, Lcom/android/tools/r8/internal/ME;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ME;-><init>()V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_6

    move-object/from16 v21, v4

    .line 171
    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    move-object/from16 v22, v3

    .line 172
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v3

    move-object/from16 v23, v8

    .line 173
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v8

    move/from16 v24, v7

    .line 174
    new-instance v7, Lcom/android/tools/r8/graph/J0$a;

    invoke-direct {v7, v4, v3, v8}, Lcom/android/tools/r8/graph/J0$a;-><init>(III)V

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move/from16 v7, v24

    goto :goto_3

    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v24, v7

    move-object/from16 v23, v8

    .line 175
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 176
    iget-object v3, v3, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 177
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 179
    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-static {v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v4

    .line 181
    new-array v6, v4, [Lcom/android/tools/r8/graph/J0$b;

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_9

    .line 182
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 183
    iget-object v8, v8, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 184
    invoke-virtual {v8}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 185
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v8

    sub-int/2addr v8, v3

    .line 186
    invoke-virtual {v5, v8, v7}, Lcom/android/tools/r8/internal/ME;->b(II)I

    .line 187
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-static {v8}, Lcom/android/tools/r8/internal/BR;->a(Lcom/android/tools/r8/dex/m;)I

    move-result v8

    move/from16 v16, v3

    .line 189
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v17, v4

    .line 190
    new-array v4, v3, [Lcom/android/tools/r8/graph/J0$b$a;

    move/from16 v25, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v3, :cond_7

    move/from16 v18, v3

    .line 191
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v3

    move/from16 v19, v15

    .line 193
    iget-object v15, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    invoke-static {v15}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v15

    move/from16 v26, v14

    .line 195
    new-instance v14, Lcom/android/tools/r8/graph/J0$b$a;

    move/from16 v27, v13

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v3}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Lcom/android/tools/r8/graph/J0$b$a;-><init>(ILcom/android/tools/r8/graph/M2;)V

    aput-object v14, v4, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v18

    move/from16 v15, v19

    move/from16 v14, v26

    move/from16 v13, v27

    goto :goto_5

    :cond_7
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v19, v15

    if-gtz v8, :cond_8

    .line 196
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v3

    goto :goto_6

    :cond_8
    const/4 v3, -0x1

    .line 198
    :goto_6
    new-instance v8, Lcom/android/tools/r8/graph/J0$b;

    invoke-direct {v8, v4, v3}, Lcom/android/tools/r8/graph/J0$b;-><init>([Lcom/android/tools/r8/graph/J0$b$a;I)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v15, v19

    move/from16 v11, v25

    move/from16 v14, v26

    move/from16 v13, v27

    goto/16 :goto_4

    :cond_9
    move/from16 v25, v11

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v19, v15

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_a

    .line 199
    aget-object v4, v2, v3

    .line 200
    iget v7, v4, Lcom/android/tools/r8/graph/J0$a;->b:I

    .line 201
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/ME;->get(I)I

    move-result v7

    iput v7, v4, Lcom/android/tools/r8/graph/J0$a;->e:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v18, v6

    goto :goto_a

    :cond_b
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    :goto_8
    move/from16 v24, v7

    move-object/from16 v23, v8

    move/from16 v25, v11

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v19, v15

    goto :goto_9

    :cond_c
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v6

    goto :goto_8

    :goto_9
    move-object/from16 v18, v16

    .line 202
    :goto_a
    new-instance v3, Lcom/android/tools/r8/internal/Pp;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Pp;-><init>()V

    .line 203
    invoke-static {v1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v10, v4}, Lcom/android/tools/r8/internal/Pp;->a(Ljava/nio/ShortBuffer;IILcom/android/tools/r8/graph/x5;)[Lcom/android/tools/r8/internal/Np;

    move-result-object v1

    .line 204
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 205
    iget-object v3, v3, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 206
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 208
    invoke-virtual {v0, v12, v1}, Lcom/android/tools/r8/dex/C;->a(I[Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/graph/W0;

    move-result-object v4

    .line 209
    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 210
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->n:Z

    if-eqz v3, :cond_d

    const/4 v4, 0x0

    .line 211
    :cond_d
    new-instance v3, Lcom/android/tools/r8/graph/J0;

    move-object v12, v3

    move/from16 v13, v27

    move/from16 v14, v26

    move/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    invoke-direct/range {v12 .. v19}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V

    .line 212
    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    move/from16 v2, v25

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/m;->b(I)V

    .line 213
    :goto_b
    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    move/from16 v8, v24

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/x5;->b(I)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 214
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 216
    iget-object v4, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->j1:Lcom/android/tools/r8/graph/L2;

    if-ne v4, v2, :cond_e

    goto :goto_c

    :cond_e
    move-object/from16 v2, v22

    move-object/from16 v4, v23

    goto :goto_d

    :cond_f
    :goto_c
    const/high16 v2, 0x10000

    move-object/from16 v4, v23

    .line 217
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    move-object/from16 v2, v22

    .line 218
    :goto_d
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/dex/B;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/n1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/u0;

    .line 219
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v7

    .line 220
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v9, :cond_11

    .line 221
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    sget-object v10, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 222
    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v9

    if-nez v9, :cond_10

    const/4 v10, 0x0

    goto :goto_e

    .line 223
    :cond_10
    invoke-static {v9}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/r0;)Ljava/lang/String;

    move-result-object v10

    :goto_e
    if-eqz v10, :cond_11

    .line 224
    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/u0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/u0;

    move-result-object v6

    .line 225
    iget-object v7, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 226
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object v12, v12, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 227
    invoke-static {v7, v10, v9, v11, v12}, Lcom/android/tools/r8/graph/H3;->c(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object v7

    .line 228
    :cond_11
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v9

    .line 229
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v9

    .line 230
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 231
    iput-object v7, v4, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 232
    iput-object v6, v4, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    move-object/from16 v6, v21

    .line 233
    invoke-virtual {v6, v1}, Lcom/android/tools/r8/dex/B;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/n1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/z5;

    .line 234
    iput-object v1, v4, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 235
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    aput-object v1, v20, p3

    add-int/lit8 v1, p3, 0x1

    move-object v3, v2

    move-object v4, v6

    move v7, v8

    move-object/from16 v2, v20

    move v6, v1

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v20, v2

    return-object v20
.end method

.method public final b()Lcom/android/tools/r8/graph/u0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-array v3, v0, [Lcom/android/tools/r8/graph/r0;

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_3

    .line 5
    aget v6, v1, v4

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/dex/C;->a(I)Lcom/android/tools/r8/graph/r0;

    move-result-object v6

    .line 6
    iget v7, v6, Lcom/android/tools/r8/graph/r0;->b:I

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    .line 7
    invoke-static {v8, v7}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 8
    aput-object v6, v3, v5

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ge v5, v0, :cond_4

    .line 9
    new-array v0, v5, [Lcom/android/tools/r8/graph/r0;

    .line 10
    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    .line 11
    :cond_4
    sget-object v0, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    .line 12
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/r0;

    .line 15
    sget-boolean v4, Lcom/android/tools/r8/graph/u0;->h:Z

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/r0;->n0()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_7
    :goto_2
    iget-object v4, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 17
    iget-object v0, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_a

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 19
    array-length v0, v3

    if-nez v0, :cond_9

    .line 20
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    return-object v0

    .line 21
    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple annotations of type `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(I)Lcom/android/tools/r8/graph/u0;
    .locals 2

    .line 22
    new-instance v0, Lu/c;

    invoke-direct {v0, p0}, Lu/c;-><init>(Lcom/android/tools/r8/dex/C;)V

    new-instance v1, Lu/i;

    invoke-direct {v1}, Lu/i;-><init>()V

    if-nez p1, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    :goto_0
    check-cast p1, Lcom/android/tools/r8/graph/u0;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/z5;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v0

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-array v3, v0, [Lcom/android/tools/r8/graph/u0;

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 6
    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/dex/C;->b(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3, v2}, Lcom/android/tools/r8/graph/z5;->a([Lcom/android/tools/r8/graph/u0;I)Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/graph/z5;
    .locals 1

    .line 1
    new-instance v0, Lu/d;

    invoke-direct {v0, p0}, Lu/d;-><init>(Lcom/android/tools/r8/dex/C;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/z5;

    return-object p1
.end method

.method public final d()Lcom/android/tools/r8/dex/z;
    .locals 16

    move-object/from16 v0, p0

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v1

    .line 6
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v2

    .line 7
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v3

    .line 8
    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move-object v10, v5

    goto :goto_2

    .line 9
    :cond_0
    new-array v7, v2, [I

    .line 10
    new-array v8, v2, [I

    move v9, v6

    :goto_0
    if-ge v9, v2, :cond_1

    .line 11
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v10

    aput v10, v7, v9

    .line 12
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 14
    iget-object v9, v9, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 15
    invoke-virtual {v9}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    move-result v9

    .line 17
    new-array v10, v2, [Lcom/android/tools/r8/graph/w2;

    move v11, v6

    :goto_1
    if-ge v11, v2, :cond_2

    .line 18
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    aget v13, v7, v11

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/x5;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v12

    .line 19
    aget v13, v8, v11

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/dex/C;->b(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v13

    .line 20
    new-instance v14, Lcom/android/tools/r8/graph/w2;

    invoke-direct {v14, v12, v13}, Lcom/android/tools/r8/graph/w2;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/u0;)V

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/dex/m;->b(I)V

    :goto_2
    if-nez v3, :cond_3

    move-object v9, v5

    goto :goto_5

    .line 22
    :cond_3
    new-array v2, v3, [I

    .line 23
    new-array v7, v3, [I

    move v8, v6

    :goto_3
    if-ge v8, v3, :cond_4

    .line 24
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v9

    aput v9, v2, v8

    .line 25
    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 26
    :cond_4
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 27
    iget-object v8, v8, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 28
    invoke-virtual {v8}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 29
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 30
    new-array v9, v3, [Lcom/android/tools/r8/graph/x2;

    move v11, v6

    :goto_4
    if-ge v11, v3, :cond_5

    .line 31
    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    aget v13, v2, v11

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/x5;->b(I)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 32
    aget v13, v7, v11

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/dex/C;->b(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v13

    .line 33
    new-instance v14, Lcom/android/tools/r8/graph/x2;

    invoke-direct {v14, v12, v13}, Lcom/android/tools/r8/graph/x2;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u0;)V

    aput-object v14, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 34
    :cond_5
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/dex/m;->b(I)V

    :goto_5
    if-nez v4, :cond_6

    goto/16 :goto_9

    .line 35
    :cond_6
    new-array v2, v4, [I

    .line 36
    new-array v3, v4, [I

    move v5, v6

    :goto_6
    if-ge v5, v4, :cond_7

    .line 37
    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v7

    aput v7, v2, v5

    .line 38
    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 39
    :cond_7
    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 40
    iget-object v5, v5, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 41
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 43
    new-array v7, v4, [Lcom/android/tools/r8/graph/y2;

    move v8, v6

    :goto_7
    if-ge v8, v4, :cond_b

    .line 44
    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    aget v12, v2, v8

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/graph/x5;->b(I)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    .line 45
    new-instance v12, Lcom/android/tools/r8/graph/y2;

    aget v13, v3, v8

    .line 46
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/dex/C;->c(I)Lcom/android/tools/r8/graph/z5;

    move-result-object v13

    iget-object v14, v11, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 47
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v14

    .line 48
    sget-object v15, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    if-eq v13, v15, :cond_a

    .line 49
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v15

    if-ne v14, v15, :cond_8

    goto :goto_8

    .line 50
    :cond_8
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 51
    new-array v15, v14, [Lcom/android/tools/r8/graph/u0;

    .line 52
    iget-object v13, v13, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {v13, v6, v15, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-instance v13, Lcom/android/tools/r8/graph/z5;

    invoke-direct {v13, v15, v6}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    goto :goto_8

    .line 54
    :cond_9
    new-instance v15, Lcom/android/tools/r8/graph/z5;

    iget-object v13, v13, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v6, v13

    sub-int/2addr v14, v6

    invoke-direct {v15, v13, v14}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    move-object v13, v15

    goto :goto_8

    .line 55
    :cond_a
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    invoke-direct {v12, v11, v13}, Lcom/android/tools/r8/graph/y2;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/z5;)V

    aput-object v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto :goto_7

    .line 56
    :cond_b
    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/dex/m;->b(I)V

    move-object v5, v7

    .line 57
    :goto_9
    new-instance v2, Lcom/android/tools/r8/dex/z;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->b(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-direct {v2, v1, v10, v9, v5}, Lcom/android/tools/r8/dex/z;-><init>(Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;)V

    return-object v2
.end method

.method public final d(I)Lcom/android/tools/r8/dex/z;
    .locals 2

    .line 1
    new-instance v0, Lu/e;

    invoke-direct {v0, p0}, Lu/e;-><init>(Lcom/android/tools/r8/dex/C;)V

    new-instance v1, Lu/f;

    invoke-direct {v1}, Lu/f;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    check-cast p1, Lcom/android/tools/r8/dex/z;

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/graph/W0;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/C;->a(Z)Lcom/android/tools/r8/graph/W0;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcom/android/tools/r8/graph/f1;
    .locals 1

    .line 1
    new-instance v0, Lu/g;

    invoke-direct {v0, p0}, Lu/g;-><init>(Lcom/android/tools/r8/dex/C;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/f1;

    return-object p1
.end method

.method public final f(I)Lcom/android/tools/r8/dex/E;
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/dex/E;

    .line 12
    iget v5, v4, Lcom/android/tools/r8/dex/E;->a:I

    if-ne v5, p1, :cond_0

    return-object v4

    .line 13
    :cond_1
    new-instance v0, Lcom/android/tools/r8/dex/E;

    invoke-direct {v0, p1, v2, v2, v2}, Lcom/android/tools/r8/dex/E;-><init>(IIII)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/graph/e1;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v1

    .line 5
    new-array v2, v1, [Lcom/android/tools/r8/graph/t0;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->h()Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/android/tools/r8/graph/t0;

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/e1;

    iget-object v3, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    return-object v1
.end method

.method public final g(I)Lcom/android/tools/r8/graph/W0$a;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/m;->b(I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/C;->a(Z)Lcom/android/tools/r8/graph/W0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/android/tools/r8/graph/f1;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/f1;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v1

    .line 4
    new-array v2, v1, [Lcom/android/tools/r8/graph/R2;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->h()Lcom/android/tools/r8/graph/R2;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/f1;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object v0
.end method

.method public final h(I)Lcom/android/tools/r8/graph/O2;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lu/h;

    invoke-direct {v0, p0}, Lu/h;-><init>(Lcom/android/tools/r8/dex/C;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/C;->a(ILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/O2;

    return-object p1
.end method

.method public final h()Lcom/android/tools/r8/graph/R2;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, -0x2

    if-eq v0, v2, :cond_8

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 7
    sget-object v0, Lcom/android/tools/r8/graph/V2;->c:Lcom/android/tools/r8/graph/V2;

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    .line 9
    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/graph/V2;->t:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 10
    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/graph/V2;->s:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 11
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/graph/V2;->r:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/graph/V2;->q:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/graph/V2;->p:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 14
    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/graph/V2;->o:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 15
    :pswitch_6
    sget-object v0, Lcom/android/tools/r8/graph/V2;->n:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 16
    :pswitch_7
    sget-object v0, Lcom/android/tools/r8/graph/V2;->m:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 17
    :pswitch_8
    sget-object v0, Lcom/android/tools/r8/graph/V2;->l:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 18
    :pswitch_9
    sget-object v0, Lcom/android/tools/r8/graph/V2;->k:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 19
    :pswitch_a
    sget-object v0, Lcom/android/tools/r8/graph/V2;->j:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/android/tools/r8/graph/V2;->i:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/V2;->h:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v0, Lcom/android/tools/r8/graph/V2;->g:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 23
    :cond_3
    sget-object v0, Lcom/android/tools/r8/graph/V2;->f:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 24
    :cond_4
    sget-object v0, Lcom/android/tools/r8/graph/V2;->e:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 25
    :cond_5
    sget-object v0, Lcom/android/tools/r8/graph/V2;->d:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 26
    :cond_6
    sget-object v0, Lcom/android/tools/r8/graph/V2;->c:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 27
    :cond_7
    sget-object v0, Lcom/android/tools/r8/graph/V2;->u:Lcom/android/tools/r8/graph/V2;

    goto :goto_0

    .line 28
    :cond_8
    sget-object v0, Lcom/android/tools/r8/graph/V2;->v:Lcom/android/tools/r8/graph/V2;

    .line 29
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    .line 30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_b
    if-eqz v1, :cond_9

    .line 31
    sget-object v0, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    return-object v0

    :cond_9
    sget-object v0, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    return-object v0

    .line 32
    :pswitch_c
    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_b

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_b
    :goto_1
    sget-object v0, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    return-object v0

    .line 34
    :pswitch_d
    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_d

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_d
    :goto_2
    new-instance v0, Lcom/android/tools/r8/graph/R2$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->f()Lcom/android/tools/r8/graph/e1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    return-object v0

    .line 36
    :pswitch_e
    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_f

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_f
    :goto_3
    new-instance v0, Lcom/android/tools/r8/graph/R2$b;

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v1

    .line 40
    new-array v2, v1, [Lcom/android/tools/r8/graph/R2;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_10

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/C;->h()Lcom/android/tools/r8/graph/R2;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 42
    :cond_10
    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object v0

    :pswitch_f
    add-int/2addr v1, v2

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/tools/r8/graph/T2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/T2;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object v1

    :pswitch_10
    add-int/2addr v1, v2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->b(I)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/dex/C;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 47
    new-instance v1, Lcom/android/tools/r8/graph/W2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/W2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object v1

    :pswitch_11
    add-int/2addr v1, v2

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 49
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/dex/C;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 50
    new-instance v1, Lcom/android/tools/r8/graph/U2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/U2;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object v1

    :pswitch_12
    add-int/2addr v1, v2

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v1

    :pswitch_13
    add-int/2addr v1, v2

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/tools/r8/graph/R2$k;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object v1

    :pswitch_14
    add-int/2addr v1, v2

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    .line 57
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 58
    sget-boolean v2, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v2, :cond_12

    .line 59
    iget-object v2, v0, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    .line 60
    aget-object v2, v2, v1

    if-eqz v2, :cond_11

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_12
    :goto_5
    iget-object v0, v0, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    .line 62
    aget-object v0, v0, v1

    .line 63
    new-instance v1, Lcom/android/tools/r8/graph/X2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/X2;-><init>(Lcom/android/tools/r8/graph/C2;)V

    return-object v1

    :pswitch_15
    add-int/2addr v1, v2

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x5;->c(I)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/tools/r8/graph/Y2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/Y2;-><init>(Lcom/android/tools/r8/graph/I2;)V

    return-object v1

    :pswitch_16
    add-int/2addr v1, v2

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->a(Lcom/android/tools/r8/dex/D;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object v0

    return-object v0

    :pswitch_17
    add-int/2addr v1, v2

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->b(Lcom/android/tools/r8/dex/D;I)F

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object v0

    return-object v0

    :pswitch_18
    add-int/2addr v1, v2

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->c(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object v0

    return-object v0

    :pswitch_19
    add-int/2addr v1, v2

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->c(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 71
    invoke-static {v0}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v0

    return-object v0

    :pswitch_1a
    add-int/2addr v1, v2

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    .line 73
    sget-object v1, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    new-instance v1, Lcom/android/tools/r8/graph/R2$e;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    return-object v1

    :pswitch_1b
    add-int/2addr v1, v2

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hu;->c(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 75
    sget-object v1, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/tools/r8/graph/R2$j;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/R2$j;-><init>(S)V

    return-object v1

    .line 76
    :pswitch_1c
    sget-boolean v0, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v0, :cond_16

    if-nez v1, :cond_15

    goto :goto_6

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_16
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/hu;->c(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 78
    invoke-static {v0}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget v1, p0, Lcom/android/tools/r8/dex/C;->d:I

    add-int/lit8 v1, v1, 0x34

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v6}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v6

    iget-object v7, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v7

    add-int v8, v7, v6

    iget-object v9, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget-object v9, v9, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v9

    if-gt v8, v9, :cond_0

    new-instance v8, Lcom/android/tools/r8/dex/E;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/android/tools/r8/dex/E;-><init>(IIII)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-static {v4}, Lcom/android/tools/r8/dex/E;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget-object v2, v2, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The dex file had an offset + size that pointed past the end of the dex file.\nSection type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSection offset: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSection size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nFile size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->a:Lcom/android/tools/r8/origin/Origin;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/dex/E;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/dex/E;

    iget v4, v4, Lcom/android/tools/r8/dex/E;->c:I

    iput v4, v3, Lcom/android/tools/r8/dex/E;->d:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/E;

    iget-object v2, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget-object v2, v2, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v2

    iput v2, v0, Lcom/android/tools/r8/dex/E;->d:I

    return-object v1
.end method

.method public final j()Lcom/android/tools/r8/graph/O2;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v0

    new-array v1, v0, [Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v4, p0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final k()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->e:[I

    array-length v2, v2

    sget-boolean v3, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    new-array v2, v2, [Lcom/android/tools/r8/graph/L2;

    iput-object v2, v1, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->e:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    aget v3, v3, v2

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_2
    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget-object v6, v6, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v6}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/dex/W;->a([B)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v6, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v5, v3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v5}, Lcom/android/tools/r8/dex/W;->a([B)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v6, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    :cond_4
    :goto_2
    sget-boolean v5, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v5, :cond_6

    iget-object v5, v4, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    aget-object v5, v5, v2

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    :goto_3
    iget-object v4, v4, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/android/tools/r8/dex/n;

    invoke-direct {v2}, Lcom/android/tools/r8/dex/n;-><init>()V

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->e:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_4
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ltz v3, :cond_a

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/dex/n;->a(Lcom/android/tools/r8/graph/L2;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    iget v8, v7, Lcom/android/tools/r8/graph/L2;->e:I

    if-le v8, v6, :cond_9

    iget-object v8, v7, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v9, v8, v1

    const/16 v10, 0x7e

    if-ne v9, v10, :cond_9

    aget-byte v9, v8, v4

    if-ne v9, v10, :cond_9

    aget-byte v6, v8, v6

    if-ne v6, v10, :cond_9

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v5}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v5

    instance-of v6, v5, Lcom/android/tools/r8/internal/gL;

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/dex/n;->a(Lcom/android/tools/r8/internal/gL;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/mL; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object v2, v2, Lcom/android/tools/r8/dex/n;->a:Lcom/android/tools/r8/internal/D20;

    iput-object v2, v0, Lcom/android/tools/r8/dex/C;->h:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v3, :cond_b

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/C;->a(Lcom/android/tools/r8/dex/E;)V

    :cond_b
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->g:Lcom/android/tools/r8/internal/nJ;

    new-instance v7, Lcom/android/tools/r8/graph/z;

    invoke-direct {v7}, Lcom/android/tools/r8/graph/z;-><init>()V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ$p;->z0:Z

    if-nez v8, :cond_c

    new-instance v7, Lcom/android/tools/r8/graph/A;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/tools/r8/graph/A;-><init>(Lcom/android/tools/r8/graph/u1;)V

    :cond_c
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v8, v2, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v9, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v9, :cond_e

    iget-object v9, v3, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    if-nez v9, :cond_d

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    new-array v8, v8, [Lcom/android/tools/r8/graph/M2;

    iput-object v8, v3, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    move v3, v1

    :goto_7
    iget v8, v2, Lcom/android/tools/r8/dex/E;->b:I

    const/4 v9, 0x0

    if-ge v3, v8, :cond_12

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v8

    iget v10, v8, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v3, v10, :cond_f

    goto :goto_8

    :cond_f
    iget v8, v8, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v8

    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v8

    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    :goto_8
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/graph/B;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    sget-boolean v10, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v10, :cond_11

    iget-object v10, v9, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    aget-object v10, v10, v3

    if-nez v10, :cond_10

    goto :goto_9

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_11
    :goto_9
    iget-object v9, v9, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    aput-object v8, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v3

    sget-boolean v7, Lcom/android/tools/r8/dex/C;->m:Z

    const-string v8, "`)"

    const-string v10, ": `"

    if-nez v7, :cond_18

    iget v7, v3, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v7, v6, :cond_18

    iget v7, v3, Lcom/android/tools/r8/dex/E;->c:I

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v11, v7}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v11}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v11

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v12

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v13}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v13

    move v14, v4

    :goto_a
    iget v15, v3, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v14, v15, :cond_18

    mul-int/lit8 v15, v14, 0x8

    add-int/2addr v15, v7

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v4

    iget-object v15, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v15}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v15

    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v1

    if-ne v4, v11, :cond_14

    if-ne v1, v13, :cond_13

    if-le v15, v12, :cond_15

    goto :goto_b

    :cond_13
    if-le v1, v13, :cond_15

    goto :goto_b

    :cond_14
    if-le v4, v11, :cond_15

    :goto_b
    const/16 v16, 0x1

    goto :goto_c

    :cond_15
    const/16 v16, 0x0

    :goto_c
    sget-boolean v17, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v17, :cond_17

    if-eqz v16, :cond_16

    goto :goto_d

    :cond_16
    new-instance v2, Ljava/lang/AssertionError;

    add-int/lit8 v3, v14, -0x1

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v6, v11}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v12}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v9, v13}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v15}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v9, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v9, v1}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v6, v4, v7, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Out-of-order field ids (field #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`, field #"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_17
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move v13, v1

    move v11, v4

    move v12, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_18
    iget-object v1, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v4, v3, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_1a

    iget-object v7, v1, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    if-nez v7, :cond_19

    goto :goto_e

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_e
    new-array v4, v4, [Lcom/android/tools/r8/graph/l1;

    iput-object v4, v1, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    const/4 v1, 0x0

    :goto_f
    iget v4, v3, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v1, v4, :cond_1e

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v7

    iget v11, v7, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v1, v11, :cond_1b

    move-object v7, v9

    goto :goto_10

    :cond_1b
    iget v7, v7, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v11, v1, 0x8

    add-int/2addr v11, v7

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7, v11}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v7

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v11}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v11

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v12}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v12

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v7}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v11}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v13, v7, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    :goto_10
    sget-boolean v11, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v11, :cond_1d

    iget-object v11, v4, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    aget-object v11, v11, v1

    if-nez v11, :cond_1c

    goto :goto_11

    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1d
    :goto_11
    iget-object v4, v4, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v3, v1, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v4, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v4, :cond_20

    iget-object v4, v2, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    if-nez v4, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_12
    new-array v3, v3, [Lcom/android/tools/r8/graph/I2;

    iput-object v3, v2, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    const/4 v2, 0x0

    :goto_13
    iget v3, v1, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v2, v3, :cond_24

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v4

    iget v7, v4, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v2, v7, :cond_21

    move-object v4, v9

    goto :goto_14

    :cond_21
    iget v4, v4, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v7, v2, 0xc

    add-int/2addr v7, v4

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v4

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v7

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/dex/C;->h(I)Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v11, v4, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    :goto_14
    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_23

    iget-object v7, v3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    aget-object v7, v7, v2

    if-nez v7, :cond_22

    goto :goto_15

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_23
    :goto_15
    iget-object v3, v3, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v3, :cond_2a

    iget v3, v2, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v3, v6, :cond_2a

    iget v3, v2, Lcom/android/tools/r8/dex/E;->c:I

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v4

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v7

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v11}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v11

    const/4 v12, 0x1

    :goto_16
    iget v13, v2, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v12, v13, :cond_2a

    mul-int/lit8 v13, v12, 0x8

    add-int/2addr v13, v3

    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v13, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v13}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v13

    iget-object v14, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v14}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v14

    iget-object v15, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v15}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v15

    if-ne v13, v4, :cond_26

    if-ne v15, v11, :cond_25

    if-le v14, v7, :cond_27

    goto :goto_17

    :cond_25
    if-le v15, v11, :cond_27

    goto :goto_17

    :cond_26
    if-le v13, v4, :cond_27

    :goto_17
    const/16 v16, 0x1

    goto :goto_18

    :cond_27
    const/16 v16, 0x0

    :goto_18
    sget-boolean v17, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v17, :cond_29

    if-eqz v16, :cond_28

    goto :goto_19

    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    add-int/lit8 v2, v12, -0x1

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/x5;->c(I)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v6, v11}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v5, v13}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v6, v14}, Lcom/android/tools/r8/graph/x5;->c(I)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v7, v15}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Out-of-order method ids (method #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`, method #"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_29
    :goto_19
    add-int/lit8 v12, v12, 0x1

    move v4, v13

    move v7, v14

    move v11, v15

    goto/16 :goto_16

    :cond_2a
    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_2c

    iget-object v7, v3, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    if-nez v7, :cond_2b

    goto :goto_1a

    :cond_2b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1a
    new-array v4, v4, [Lcom/android/tools/r8/graph/A2;

    iput-object v4, v3, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x0

    :goto_1b
    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v3, v4, :cond_30

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v7

    iget v8, v7, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v3, v8, :cond_2d

    move-object v7, v9

    goto :goto_1c

    :cond_2d
    iget v7, v7, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v7

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v7

    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v8}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v8

    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->a()I

    move-result v10

    iget-object v11, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v12, v7}, Lcom/android/tools/r8/graph/x5;->e(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v12, v8}, Lcom/android/tools/r8/graph/x5;->c(I)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    iget-object v12, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v12, v10}, Lcom/android/tools/r8/graph/x5;->d(I)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    :goto_1c
    sget-boolean v8, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v8, :cond_2f

    iget-object v8, v4, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    aget-object v8, v8, v3

    if-nez v8, :cond_2e

    goto :goto_1d

    :cond_2e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2f
    :goto_1d
    iget-object v4, v4, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_30
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_32

    iget-object v7, v3, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    if-nez v7, :cond_31

    goto :goto_1e

    :cond_31
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1e
    new-array v4, v4, [Lcom/android/tools/r8/graph/C2;

    iput-object v4, v3, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    const/4 v3, 0x0

    :goto_1f
    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v3, v4, :cond_39

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v7

    iget v8, v7, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v3, v8, :cond_33

    move-object v7, v9

    goto/16 :goto_24

    :cond_33
    iget v7, v7, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v7

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/m;->b(I)V

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    sget-object v1, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    sget-object v8, Lcom/android/tools/r8/graph/B2;->l:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_1
    sget-object v8, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_2
    sget-object v8, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_3
    sget-object v8, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_4
    sget-object v8, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_5
    sget-object v8, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_6
    sget-object v8, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_7
    sget-object v8, Lcom/android/tools/r8/graph/B2;->e:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_8
    sget-object v8, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    goto :goto_20

    :pswitch_9
    sget-object v8, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    :goto_20
    sget-boolean v10, Lcom/android/tools/r8/graph/B2;->m:Z

    if-nez v10, :cond_35

    iget-short v10, v8, Lcom/android/tools/r8/graph/B2;->b:S

    if-ne v10, v7, :cond_34

    goto :goto_21

    :cond_34
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_35
    :goto_21
    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    iget-object v7, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/m;->c()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Method handle type unsupported in a dex file."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_a
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v10, v7}, Lcom/android/tools/r8/graph/x5;->b(I)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    goto :goto_22

    :pswitch_b
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v10, v7}, Lcom/android/tools/r8/graph/x5;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    :goto_22
    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/m;->c()I

    iget-object v10, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    sget-object v11, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    if-ne v8, v11, :cond_36

    const/4 v11, 0x1

    goto :goto_23

    :cond_36
    const/4 v11, 0x0

    :goto_23
    invoke-virtual {v10, v8, v7, v11, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v7

    :goto_24
    sget-boolean v8, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v8, :cond_38

    iget-object v8, v4, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    aget-object v8, v8, v3

    if-nez v8, :cond_37

    goto :goto_25

    :cond_37
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_38
    :goto_25
    iget-object v4, v4, Lcom/android/tools/r8/graph/x5;->h:[Lcom/android/tools/r8/graph/C2;

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    :cond_39
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_3b

    iget-object v7, v3, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    if-nez v7, :cond_3a

    goto :goto_26

    :cond_3a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_26
    new-array v4, v4, [Lcom/android/tools/r8/graph/D0;

    iput-object v4, v3, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    const/4 v3, 0x0

    :goto_27
    iget v4, v2, Lcom/android/tools/r8/dex/E;->b:I

    if-ge v3, v4, :cond_45

    iget-object v4, v0, Lcom/android/tools/r8/dex/C;->i:Lcom/android/tools/r8/graph/x5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/C;->f(I)Lcom/android/tools/r8/dex/E;

    move-result-object v7

    iget v8, v7, Lcom/android/tools/r8/dex/E;->b:I

    if-lt v3, v8, :cond_3c

    move-object v8, v9

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2b

    :cond_3c
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->b:Lcom/android/tools/r8/dex/D;

    iget v7, v7, Lcom/android/tools/r8/dex/E;->c:I

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v7

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/dex/C;->e(I)Lcom/android/tools/r8/graph/f1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    sget-boolean v8, Lcom/android/tools/r8/dex/C;->m:Z

    if-nez v8, :cond_3e

    const/4 v10, 0x0

    aget-object v11, v7, v10

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v11, Lcom/android/tools/r8/graph/X2;

    if-eqz v10, :cond_3d

    goto :goto_28

    :cond_3d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3e
    :goto_28
    if-nez v8, :cond_40

    const/4 v10, 0x1

    aget-object v11, v7, v10

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v10

    if-eqz v10, :cond_3f

    goto :goto_29

    :cond_3f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_40
    :goto_29
    if-nez v8, :cond_42

    aget-object v8, v7, v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v8, Lcom/android/tools/r8/graph/Y2;

    if-eqz v8, :cond_41

    goto :goto_2a

    :cond_41
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_42
    :goto_2a
    iget-object v8, v0, Lcom/android/tools/r8/dex/C;->l:Lcom/android/tools/r8/graph/u1;

    const/4 v10, 0x1

    aget-object v11, v7, v10

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v11, Lcom/android/tools/r8/graph/L2;

    aget-object v12, v7, v6

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v12, Lcom/android/tools/r8/graph/I2;

    const/4 v13, 0x0

    aget-object v14, v7, v13

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v14, Lcom/android/tools/r8/graph/C2;

    array-length v15, v7

    invoke-static {v7, v5, v15}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/tools/r8/graph/R2;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/tools/r8/graph/D0;

    invoke-direct {v8, v11, v12, v14, v7}, Lcom/android/tools/r8/graph/D0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/List;)V

    :goto_2b
    sget-boolean v7, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v7, :cond_44

    iget-object v7, v4, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    aget-object v7, v7, v3

    if-nez v7, :cond_43

    goto :goto_2c

    :cond_43
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_44
    :goto_2c
    iget-object v4, v4, Lcom/android/tools/r8/graph/x5;->g:[Lcom/android/tools/r8/graph/D0;

    aput-object v8, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27

    :cond_45
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
