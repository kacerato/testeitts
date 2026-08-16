.class public Lcom/android/tools/r8/internal/CU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Ljava/lang/Object;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Lcom/android/tools/r8/internal/nC;

.field public final f:Lcom/android/tools/r8/internal/nC;

.field public final g:Lcom/android/tools/r8/internal/nC;

.field public final h:Lcom/android/tools/r8/internal/nC;

.field public final i:Lcom/android/tools/r8/internal/nC;

.field public final j:Lcom/android/tools/r8/internal/nC;

.field public final k:Lcom/android/tools/r8/internal/nC;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Lcom/android/tools/r8/internal/nC;

.field public final n:Lcom/android/tools/r8/internal/QC;

.field public final o:Lcom/android/tools/r8/internal/nC;

.field public final p:Lcom/android/tools/r8/internal/QC;

.field public final q:Lcom/android/tools/r8/internal/nC;

.field public final r:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/internal/QC;Ljava/util/Map;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->a:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->b:Lcom/android/tools/r8/internal/QC;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->c:Ljava/lang/Object;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->d:Lcom/android/tools/r8/internal/nC;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->e:Lcom/android/tools/r8/internal/nC;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->f:Lcom/android/tools/r8/internal/nC;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->g:Lcom/android/tools/r8/internal/nC;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->h:Lcom/android/tools/r8/internal/nC;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->i:Lcom/android/tools/r8/internal/nC;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->j:Lcom/android/tools/r8/internal/nC;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->l:Ljava/util/LinkedHashMap;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->m:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->n:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->o:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->p:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->q:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/tools/r8/internal/CU;->r:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 45
    array-length v3, v2

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    const/4 v5, 0x0

    .line 46
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 47
    aget-object v6, v2, v5

    .line 48
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 49
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez v3, :cond_1

    .line 52
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p3, v4}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    .line 53
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 55
    invoke-virtual {p1, v0, p2, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/eu;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/HB0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/tools/r8/internal/HB0;-><init>(Lcom/android/tools/r8/internal/eu;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 11
    new-instance p0, Lcom/android/tools/r8/internal/eu;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/eu;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/eu;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/cu;)V
    .locals 2

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/CU;->s:Z

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p5, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/cu;

    new-instance v0, Lcom/android/tools/r8/internal/Yj;

    .line 31
    iget-object v1, p5, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 33
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 34
    iget-object p3, p5, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 35
    iget p3, p3, Lcom/android/tools/r8/internal/Yj;->b:I

    .line 36
    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 37
    iget-object p2, p5, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    .line 38
    iget-object p3, p5, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    .line 39
    iget-object p5, p5, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    .line 40
    invoke-direct {p0, v0, p2, p3, p5}, Lcom/android/tools/r8/internal/cu;-><init>(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Ljava/util/LinkedHashMap;)V

    .line 41
    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)Z
    .locals 0

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;
    .locals 9

    .line 58
    new-instance v6, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    .line 59
    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 60
    iget-object v7, p0, Lcom/android/tools/r8/internal/CU;->o:Lcom/android/tools/r8/internal/nC;

    new-instance v8, Lcom/android/tools/r8/internal/JB0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/JB0;-><init>(Lcom/android/tools/r8/internal/CU;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 61
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;
    .locals 8

    .line 62
    new-instance v6, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    .line 63
    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 64
    new-instance v7, Lcom/android/tools/r8/internal/IB0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/IB0;-><init>(Lcom/android/tools/r8/internal/CU;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 65
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/l1;",
            "Lcom/android/tools/r8/graph/k3;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->r:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 56
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p5, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)V
    .locals 0

    .line 23
    invoke-static {p6, p2, p3, p4}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/eu;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/ui;

    .line 18
    iget-object v1, p6, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    .line 19
    invoke-static {v1, p2, p3, p4}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 20
    iget-object p6, p6, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    .line 21
    invoke-static {p6, p2, p3, p4}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/ui;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 22
    invoke-virtual {p1, p5, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->o:Lcom/android/tools/r8/internal/nC;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/KB0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/KB0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 15
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;
    .locals 9

    .line 5
    new-instance v6, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    .line 6
    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 7
    iget-object v7, p0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    new-instance v8, Lcom/android/tools/r8/internal/FB0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/FB0;-><init>(Lcom/android/tools/r8/internal/CU;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/L4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->q:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/GB0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/GB0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "[",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->j:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->e:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/ui;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->o:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->n:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/eu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/internal/cu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->h:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->i:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->m:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->b:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->g:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/l1;",
            "Lcom/android/tools/r8/graph/l1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->d:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->f:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public q()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/ay0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->l:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->g:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->h:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CU;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
