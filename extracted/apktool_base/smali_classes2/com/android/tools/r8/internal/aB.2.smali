.class public final Lcom/android/tools/r8/internal/aB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic D:Z = true


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Lcom/android/tools/r8/internal/mB;

.field public final a:Lcom/android/tools/r8/internal/DG;

.field public final b:Lcom/android/tools/r8/internal/qd0;

.field public final c:Ljava/util/LinkedList;

.field public d:Z

.field public e:[Z

.field public f:Ljava/util/HashSet;

.field public final g:Ljava/util/LinkedList;

.field public final h:Ljava/util/LinkedList;

.field public i:Lcom/android/tools/r8/internal/W5;

.field public j:Lcom/android/tools/r8/internal/W5;

.field public k:I

.field public final l:Lcom/android/tools/r8/internal/z10;

.field public final m:Lcom/android/tools/r8/internal/z10;

.field public final n:Lcom/android/tools/r8/graph/H5;

.field public o:Lcom/android/tools/r8/graph/H5;

.field public final p:Lcom/android/tools/r8/graph/y;

.field public final q:Lcom/android/tools/r8/internal/Hz;

.field public final r:Lcom/android/tools/r8/graph/proto/j;

.field public s:Lcom/android/tools/r8/internal/xw0;

.field public t:Ljava/util/ArrayList;

.field public u:Lcom/android/tools/r8/internal/on0;

.field public v:Z

.field public w:Lcom/android/tools/r8/internal/xw0;

.field public final x:Ljava/util/ArrayList;

.field public y:Lcom/android/tools/r8/internal/dH;

.field public z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DG;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->e:[Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->i:Lcom/android/tools/r8/internal/W5;

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/aB;->k:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->v:Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->A:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->B:Z

    new-instance v0, Lcom/android/tools/r8/internal/mB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mB;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/aB;->q:Lcom/android/tools/r8/internal/Hz;

    iput-object p5, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    iput-object p6, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    new-instance p1, Lcom/android/tools/r8/internal/z10;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/z10;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->m:Lcom/android/tools/r8/internal/z10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;
    .locals 8

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/aB;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v4, v2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v6

    .line 14
    new-instance v7, Lcom/android/tools/r8/internal/z10;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/z10;-><init>()V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected member type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->q()Lcom/android/tools/r8/internal/Hx0;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->o()Lcom/android/tools/r8/internal/Km0;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_5
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(II)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid invoke instruction. Expected use of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " argument registers, found actual use of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/J41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J41;-><init>()V

    .line 400
    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/T10;)Z
    .locals 1

    .line 876
    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 402
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    instance-of p0, p0, Lcom/android/tools/r8/internal/bY;

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/T10;)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 16

    move-object/from16 v0, p0

    .line 91
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 92
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/on0;->d()V

    move-object/from16 v1, p1

    .line 93
    iput-object v1, v0, Lcom/android/tools/r8/internal/aB;->o:Lcom/android/tools/r8/graph/H5;

    .line 94
    new-instance v1, Lcom/android/tools/r8/internal/VA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/VA;-><init>(Lcom/android/tools/r8/internal/aB;)V

    .line 95
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 97
    iget-object v1, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/on0;->f()I

    move-result v1

    .line 98
    new-array v2, v1, [Z

    iput-object v2, v0, Lcom/android/tools/r8/internal/aB;->e:[Z

    .line 99
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->c:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->c:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_12

    .line 101
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, -0x3

    const/4 v7, -0x2

    if-ne v2, v7, :cond_3

    goto :goto_2

    :cond_3
    if-ne v2, v6, :cond_7

    .line 102
    :goto_2
    sget-boolean v8, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v8, :cond_5

    if-ne v2, v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 103
    :cond_5
    :goto_3
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/aB;->d:Z

    if-eqz v2, :cond_6

    goto :goto_1

    .line 104
    :cond_6
    iput-boolean v5, v0, Lcom/android/tools/r8/internal/aB;->d:Z

    .line 105
    invoke-virtual {v0, v7, v6, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    .line 106
    invoke-virtual {v0, v7, v7, v4}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    goto :goto_1

    .line 107
    :cond_7
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v6, v2}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v6

    .line 108
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->e:[Z

    array-length v8, v7

    if-ge v6, v8, :cond_8

    .line 109
    aget-boolean v7, v7, v6

    goto :goto_4

    .line 110
    :cond_8
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    if-nez v7, :cond_9

    .line 111
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    .line 112
    :cond_9
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_4
    if-eqz v7, :cond_a

    goto :goto_1

    :cond_a
    if-ge v6, v1, :cond_2

    .line 113
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_e

    .line 114
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->e:[Z

    array-length v8, v7

    if-ge v6, v8, :cond_b

    .line 115
    aget-boolean v7, v7, v6

    goto :goto_5

    .line 116
    :cond_b
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    if-nez v7, :cond_c

    .line 117
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    .line 118
    :cond_c
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_5
    if-nez v7, :cond_d

    goto :goto_6

    .line 119
    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_e
    :goto_6
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->e:[Z

    array-length v8, v7

    if-ge v6, v8, :cond_f

    .line 121
    aput-boolean v5, v7, v6

    goto :goto_7

    .line 122
    :cond_f
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    if-nez v7, :cond_10

    .line 123
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    .line 124
    :cond_10
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_7
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7, v6, v0}, Lcom/android/tools/r8/internal/on0;->a(ILcom/android/tools/r8/internal/aB;)I

    move-result v7

    if-eq v7, v3, :cond_11

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_2

    .line 126
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2, v7}, Lcom/android/tools/r8/internal/on0;->g(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/aB;->f(I)Lcom/android/tools/r8/internal/VA;

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v1, :cond_a

    .line 127
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7, v6}, Lcom/android/tools/r8/internal/on0;->g(I)I

    move-result v7

    .line 128
    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 129
    invoke-virtual {v0, v2, v7, v5}, Lcom/android/tools/r8/internal/aB;->a(IIZ)V

    goto/16 :goto_1

    :cond_12
    const/4 v1, 0x0

    .line 130
    iput-object v1, v0, Lcom/android/tools/r8/internal/aB;->e:[Z

    .line 131
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VA;

    iget-object v2, v2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 132
    iput-object v2, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 133
    iput-object v2, v0, Lcom/android/tools/r8/internal/aB;->i:Lcom/android/tools/r8/internal/W5;

    .line 134
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/on0;->b(Lcom/android/tools/r8/internal/aB;)V

    .line 135
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 136
    :cond_13
    :goto_8
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ZA;

    if-eqz v2, :cond_22

    .line 137
    iget-object v6, v2, Lcom/android/tools/r8/internal/ZA;->a:Lcom/android/tools/r8/internal/W5;

    .line 138
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/W5;->i:Z

    if-eqz v6, :cond_14

    goto :goto_8

    .line 139
    :cond_14
    sget-boolean v6, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v6, :cond_16

    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_9

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 140
    :cond_16
    :goto_9
    iget-object v6, v2, Lcom/android/tools/r8/internal/ZA;->a:Lcom/android/tools/r8/internal/W5;

    .line 141
    iput-object v6, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 142
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->m:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 144
    instance-of v6, v2, Lcom/android/tools/r8/internal/WA;

    if-eqz v6, :cond_18

    .line 145
    check-cast v2, Lcom/android/tools/r8/internal/WA;

    .line 146
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v7, v2, Lcom/android/tools/r8/internal/WA;->f:I

    invoke-interface {v6, v7}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v6

    .line 147
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7, v6}, Lcom/android/tools/r8/internal/on0;->f(I)I

    move-result v7

    .line 148
    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v9, v2, Lcom/android/tools/r8/internal/WA;->f:I

    invoke-interface {v8, v9}, Lcom/android/tools/r8/internal/on0;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    if-ltz v7, :cond_17

    .line 149
    iget-object v9, v2, Lcom/android/tools/r8/internal/WA;->d:Lcom/android/tools/r8/graph/M2;

    .line 150
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v10

    iget-object v11, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v9, v10, v11}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    .line 151
    invoke-virtual {v0, v7, v9, v5, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 152
    new-instance v9, Lcom/android/tools/r8/internal/bY;

    iget-object v10, v2, Lcom/android/tools/r8/internal/WA;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 153
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v11

    invoke-direct {v9, v7, v10, v11}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    .line 154
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 155
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    iget-object v10, v0, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v7, v9, v10}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 156
    :cond_17
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v9, v2, Lcom/android/tools/r8/internal/WA;->e:I

    iget v10, v2, Lcom/android/tools/r8/internal/WA;->f:I

    invoke-interface {v7, v0, v9, v10, v5}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;IIZ)V

    .line 157
    iget v2, v2, Lcom/android/tools/r8/internal/WA;->f:I

    .line 158
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VA;

    iget-object v2, v2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 159
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 160
    new-instance v7, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v0, v8, v7}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 161
    invoke-virtual {v0, v2, v6}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/aB;->b()V

    goto/16 :goto_8

    .line 163
    :cond_18
    instance-of v6, v2, Lcom/android/tools/r8/internal/XA;

    if-eqz v6, :cond_1a

    .line 164
    move-object v6, v2

    check-cast v6, Lcom/android/tools/r8/internal/XA;

    .line 165
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v8, v6, Lcom/android/tools/r8/internal/XA;->d:I

    iget v9, v6, Lcom/android/tools/r8/internal/XA;->e:I

    invoke-interface {v7, v0, v8, v9, v4}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;IIZ)V

    .line 166
    iget v7, v2, Lcom/android/tools/r8/internal/ZA;->b:I

    if-ne v7, v3, :cond_19

    .line 167
    new-instance v2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    iget-object v6, v6, Lcom/android/tools/r8/internal/XA;->f:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, v6, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/aB;->b()V

    goto/16 :goto_8

    .line 169
    :cond_19
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 170
    new-instance v6, Lcom/android/tools/r8/internal/cj;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/cj;-><init>()V

    .line 171
    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 172
    :cond_1a
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v6}, Lcom/android/tools/r8/internal/on0;->f()I

    move-result v6

    .line 173
    iget v7, v2, Lcom/android/tools/r8/internal/ZA;->b:I

    :goto_a
    if-ge v7, v6, :cond_13

    .line 174
    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-nez v8, :cond_1b

    goto/16 :goto_8

    .line 175
    :cond_1b
    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v8, v7}, Lcom/android/tools/r8/internal/on0;->g(I)I

    move-result v8

    .line 176
    iget-object v9, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/VA;

    if-eqz v9, :cond_20

    .line 177
    iget-object v10, v9, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    iget-object v11, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-eq v10, v11, :cond_20

    .line 178
    invoke-virtual {v0, v10, v7}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 179
    iget-object v2, v9, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 180
    sget-boolean v6, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v6, :cond_1d

    iget-object v7, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-eqz v7, :cond_1c

    goto :goto_b

    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1d
    :goto_b
    if-nez v6, :cond_1f

    .line 181
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_c

    :cond_1e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :cond_1f
    :goto_c
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 183
    new-instance v2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    goto/16 :goto_8

    .line 184
    :cond_20
    iput v8, v0, Lcom/android/tools/r8/internal/aB;->k:I

    .line 185
    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v9, v2, Lcom/android/tools/r8/internal/ZA;->b:I

    if-ne v7, v9, :cond_21

    move v9, v5

    goto :goto_d

    :cond_21
    move v9, v4

    :goto_d
    invoke-interface {v8, v0, v7, v9}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 186
    :cond_22
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_24

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-nez v3, :cond_23

    goto :goto_e

    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_24
    :goto_e
    if-nez v2, :cond_3b

    .line 187
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 188
    sget-boolean v6, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v6, :cond_25

    if-nez v6, :cond_2a

    .line 189
    sget-boolean v6, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v6, :cond_27

    .line 190
    iget v7, v3, Lcom/android/tools/r8/internal/W5;->l:I

    .line 191
    iget-object v8, v3, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_26

    goto :goto_10

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_27
    :goto_10
    if-nez v6, :cond_29

    .line 192
    iget v6, v3, Lcom/android/tools/r8/internal/W5;->m:I

    if-nez v6, :cond_28

    goto :goto_11

    .line 193
    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 194
    :cond_29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    :cond_2a
    :goto_11
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/DG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/oG;

    .line 196
    new-instance v7, Lcom/android/tools/r8/internal/CG;

    .line 197
    iget-object v6, v6, Lcom/android/tools/r8/internal/oG;->b:Lcom/android/tools/r8/internal/DG;

    .line 198
    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/CG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 199
    :cond_2b
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 200
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 201
    check-cast v6, Lcom/android/tools/r8/internal/VA;

    if-eqz v6, :cond_2b

    .line 202
    iget-object v8, v6, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    if-ne v8, v3, :cond_2b

    .line 203
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_37

    .line 204
    iget-object v7, v6, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    .line 205
    iget v7, v7, Lcom/android/tools/r8/internal/FH;->c:I

    .line 206
    iget-object v8, v6, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    .line 207
    iget v8, v8, Lcom/android/tools/r8/internal/FH;->c:I

    add-int/2addr v7, v8

    .line 208
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 209
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 210
    iget-object v11, v0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 211
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 212
    :cond_2c
    sget-boolean v11, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v11, :cond_2e

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v5, :cond_2d

    goto :goto_13

    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2e
    :goto_13
    if-nez v11, :cond_30

    .line 213
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v5, :cond_2f

    goto :goto_14

    :cond_2f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_30
    :goto_14
    if-nez v11, :cond_33

    .line 214
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    :cond_31
    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_33

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/zE;

    .line 215
    sget-boolean v13, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v13, :cond_31

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    instance-of v13, v12, Lcom/android/tools/r8/internal/bY;

    if-nez v13, :cond_31

    .line 217
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v13

    if-nez v13, :cond_31

    .line 218
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_15

    .line 219
    :cond_32
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 220
    :cond_33
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 221
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 222
    :cond_34
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 223
    :cond_35
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v7, v8, :cond_36

    goto :goto_16

    .line 224
    :cond_36
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 225
    :cond_37
    :goto_16
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_39

    iget-object v8, v6, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 226
    iget v8, v8, Lcom/android/tools/r8/internal/FH;->c:I

    .line 227
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_38

    goto :goto_17

    :cond_38
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 228
    :cond_39
    :goto_17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v8

    if-nez v8, :cond_25

    if-nez v7, :cond_25

    .line 229
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v6, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    .line 230
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v6, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    .line 231
    iget v6, v3, Lcom/android/tools/r8/internal/FH;->c:I

    if-ne v6, v5, :cond_3a

    .line 232
    new-instance v6, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 233
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v3

    if-gez v3, :cond_3a

    goto/16 :goto_f

    .line 234
    :cond_3a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 235
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_1a

    .line 236
    :cond_3c
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 237
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    move-object v6, v1

    .line 238
    :cond_3e
    :goto_18
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 239
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 240
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    .line 241
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v9

    if-eqz v9, :cond_3f

    goto :goto_18

    .line 242
    :cond_3f
    instance-of v9, v7, Lcom/android/tools/r8/internal/bY;

    if-eqz v9, :cond_41

    .line 243
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_43

    if-nez v6, :cond_40

    goto :goto_19

    :cond_40
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 244
    :cond_41
    instance-of v7, v7, Lcom/android/tools/r8/internal/hj;

    if-eqz v7, :cond_42

    .line 245
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 247
    invoke-interface {v3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_18

    .line 248
    :cond_42
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v7

    if-nez v7, :cond_3e

    .line 249
    instance-of v7, v8, Lcom/android/tools/r8/internal/B60$c;

    if-nez v7, :cond_3e

    .line 250
    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 251
    new-instance v6, Lcom/android/tools/r8/internal/hj;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/hj;-><init>()V

    .line 252
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 253
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 254
    invoke-interface {v3, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 255
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_43
    :goto_19
    move-object v6, v8

    goto :goto_18

    .line 256
    :cond_44
    :goto_1a
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    if-eqz v2, :cond_47

    .line 257
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->i:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 258
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->i:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    .line 259
    new-instance v6, Lcom/android/tools/r8/internal/L41;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/L41;-><init>()V

    invoke-interface {v3, v6}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 260
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 261
    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/VG;

    .line 262
    new-instance v7, Lcom/android/tools/r8/internal/cH;

    .line 263
    iget-object v6, v6, Lcom/android/tools/r8/internal/VG;->b:Lcom/android/tools/r8/internal/dH;

    .line 264
    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/cH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 265
    :cond_45
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 266
    iget-object v6, v7, Lcom/android/tools/r8/internal/cH;->h:Lcom/android/tools/r8/internal/dH;

    iget-object v6, v6, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v8

    aget-object v6, v6, v8

    .line 267
    check-cast v6, Ljava/util/List;

    .line 268
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 269
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v9

    if-eqz v9, :cond_46

    .line 270
    new-instance v9, Lcom/android/tools/r8/internal/dj;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/dj;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 271
    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 272
    invoke-interface {v3, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1b

    .line 273
    :cond_47
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 274
    iput-object v1, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    .line 276
    iput-object v1, v6, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    goto :goto_1c

    .line 277
    :cond_49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 279
    iget-object v7, v6, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    .line 280
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 281
    iget-object v7, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    .line 282
    instance-of v7, v7, Lcom/android/tools/r8/internal/bY;

    if-eqz v7, :cond_4a

    goto :goto_1d

    .line 283
    :cond_4a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 285
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4e

    .line 287
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/f60;

    move v11, v4

    .line 288
    :goto_1e
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4e

    .line 289
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v12

    .line 290
    new-instance v13, Lcom/android/tools/r8/internal/YA;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/YA;-><init>()V

    .line 291
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/f60;

    .line 292
    iget-object v15, v13, Lcom/android/tools/r8/internal/YA;->a:Ljava/util/ArrayList;

    .line 293
    iget-object v14, v14, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    .line 295
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 296
    :cond_4b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/W5;

    .line 297
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 298
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 299
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/W5;

    if-nez v15, :cond_4c

    .line 300
    iget-object v15, v0, Lcom/android/tools/r8/internal/aB;->m:Lcom/android/tools/r8/internal/z10;

    .line 301
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v15

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iget-object v4, v0, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    .line 302
    invoke-static {v15, v1, v4, v6}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v15

    .line 303
    invoke-virtual {v9, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 306
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v1, v6, v15}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 308
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_4c
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v12, v6, v15}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 311
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 312
    :cond_4d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1e

    .line 313
    :cond_4e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_22

    .line 314
    :cond_4f
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v1

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 317
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v9, v8, :cond_50

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 318
    invoke-virtual {v4, v10, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v10, v11, 0x1

    goto :goto_21

    .line 319
    :cond_50
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v10, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    :goto_22
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/W5;->a(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1d

    .line 321
    :cond_51
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_52
    iget-object v1, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 323
    new-instance v1, Lcom/android/tools/r8/internal/fB;

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 324
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    const/4 v3, 0x0

    .line 325
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/on0;->a(I)Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    iget-object v11, v0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    iget-object v12, v0, Lcom/android/tools/r8/internal/aB;->m:Lcom/android/tools/r8/internal/z10;

    iget-object v13, v0, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    move-object v6, v1

    move-object/from16 v14, p2

    invoke-direct/range {v6 .. v14}, Lcom/android/tools/r8/internal/fB;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/EW$a;)V

    .line 326
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_5e

    .line 327
    iget-object v2, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 328
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    .line 329
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_59

    .line 330
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 331
    sget-boolean v7, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v7, :cond_57

    .line 332
    iget-object v8, v6, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_55

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    if-eqz v8, :cond_55

    move v8, v5

    goto :goto_24

    :cond_55
    const/4 v8, 0x0

    :goto_24
    if-eqz v8, :cond_56

    goto :goto_25

    .line 334
    :cond_56
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_57
    :goto_25
    if-nez v7, :cond_54

    .line 335
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_58

    goto :goto_23

    :cond_58
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 336
    :cond_59
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 337
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5a
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 338
    sget-boolean v7, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v7, :cond_5c

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_5b

    goto :goto_27

    :cond_5b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5c
    :goto_27
    if-nez v7, :cond_5a

    .line 339
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_5d

    goto :goto_26

    :cond_5d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 340
    :cond_5e
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 341
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->e()V

    goto :goto_28

    :cond_5f
    const/4 v3, 0x0

    .line 342
    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 343
    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 344
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    .line 345
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/aB;->A:Z

    if-nez v2, :cond_68

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    if-eqz v2, :cond_60

    goto :goto_2d

    .line 346
    :cond_60
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/on0;->a()Z

    move-result v2

    if-eqz v2, :cond_61

    move v2, v5

    goto :goto_29

    :cond_61
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_62

    .line 347
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/aB;->B:Z

    if-eqz v2, :cond_63

    :cond_62
    const/4 v4, 0x0

    goto :goto_2c

    .line 348
    :cond_63
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_66

    .line 349
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/on0;->a()Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_2a

    :cond_64
    const/4 v5, 0x0

    :goto_2a
    if-eqz v5, :cond_65

    .line 350
    iget-boolean v3, v0, Lcom/android/tools/r8/internal/aB;->B:Z

    if-nez v3, :cond_65

    goto :goto_2b

    :cond_65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_66
    :goto_2b
    if-nez v2, :cond_67

    .line 351
    invoke-static {v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 352
    :cond_67
    new-instance v2, Lcom/android/tools/r8/internal/lu0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    const/4 v4, 0x0

    .line 353
    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    .line 354
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lu0;->b()V

    goto/16 :goto_33

    .line 355
    :goto_2c
    new-instance v2, Lcom/android/tools/r8/internal/lu0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 356
    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    .line 357
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lu0;->c()V

    goto/16 :goto_33

    .line 358
    :cond_68
    :goto_2d
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_6a

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    instance-of v2, v2, Lcom/android/tools/r8/internal/ks;

    if-eqz v2, :cond_69

    goto :goto_2e

    :cond_69
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 359
    :cond_6a
    :goto_2e
    new-instance v2, Lcom/android/tools/r8/internal/ou0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/ou0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/aB;)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    .line 360
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v6, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 362
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/f60;

    .line 363
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v10

    if-nez v10, :cond_6d

    .line 364
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_6d
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 366
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v2, v12, v11}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_2f

    .line 367
    :cond_6e
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    :cond_6f
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 368
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    if-eqz v9, :cond_70

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v9

    if-nez v9, :cond_70

    .line 369
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_70
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 371
    iget-object v9, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6f

    .line 373
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v8

    .line 374
    sget-boolean v9, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v9, :cond_72

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v9

    if-nez v9, :cond_71

    goto :goto_31

    :cond_71
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 375
    :cond_72
    :goto_31
    iget-object v9, v8, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 376
    sget-object v10, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v9, v10, :cond_73

    sget-object v10, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v9, v10, :cond_6f

    .line 377
    :cond_73
    iget-object v9, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 378
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 379
    iget-object v8, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 381
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_30

    .line 382
    :cond_74
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_75
    :goto_32
    if-ge v8, v7, :cond_76

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 384
    iget-object v10, v2, Lcom/android/tools/r8/internal/ou0;->b:Lcom/android/tools/r8/internal/aB;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v9}, Lcom/android/tools/r8/internal/ou0;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v12

    .line 385
    iget-object v13, v10, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v10, v10, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 386
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v10

    .line 387
    iget-object v10, v10, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 388
    invoke-virtual {v9, v12, v13, v10}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    .line 389
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v10

    if-nez v10, :cond_75

    .line 390
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 391
    :cond_76
    new-instance v4, Lcom/android/tools/r8/internal/lu0;

    iget-object v7, v2, Lcom/android/tools/r8/internal/ou0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v4, v7, v1, v5}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/lu0;->c()V

    .line 392
    invoke-virtual {v2, v1, v3, v6}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 393
    :goto_33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 394
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_77

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->r()V

    .line 395
    :cond_77
    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/on0;->clear()V

    const/4 v2, 0x0

    .line 396
    iput-object v2, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    return-object v1
.end method

.method public final a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 9

    .line 722
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/on0;->e(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 723
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    goto :goto_3

    .line 724
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 725
    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v7

    .line 726
    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    sget-object v6, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    sget-object v8, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 728
    iget-object v0, v5, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, p0

    move v4, p1

    .line 730
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 731
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    .line 732
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->m0:Z

    if-nez v0, :cond_7

    .line 674
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->f:Lcom/android/tools/r8/internal/Mw0;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 677
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    if-ne p2, v0, :cond_2

    .line 679
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Mw0;->b()Lcom/android/tools/r8/internal/D70;

    move-result-object p2

    .line 680
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    if-nez v0, :cond_3

    .line 681
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    .line 682
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 683
    iput-object v0, p0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 685
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 686
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    if-ne v2, p2, :cond_4

    return-object v1

    .line 687
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->y:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 690
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 691
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/IJ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Information in locals-table is invalid. Local refers to uninitialized register: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with constraint "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v8, p5

    .line 500
    iget-boolean v4, v3, Lcom/android/tools/r8/internal/W5;->j:Z

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_d

    .line 501
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_d

    .line 502
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, p3

    .line 503
    :goto_0
    sget-boolean v7, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v7, :cond_3

    .line 504
    sget-boolean v7, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v7, :cond_1

    iget v11, v3, Lcom/android/tools/r8/internal/W5;->l:I

    iget-object v12, v3, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_1
    if-nez v7, :cond_3

    .line 505
    iget v7, v3, Lcom/android/tools/r8/internal/W5;->m:I

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 506
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 507
    sget-boolean v11, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v11, :cond_5

    .line 508
    iget-object v11, v7, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 510
    :cond_5
    :goto_3
    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 511
    sget-object v11, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    goto :goto_4

    :cond_6
    sget-object v11, Lcom/android/tools/r8/internal/U5;->c:Lcom/android/tools/r8/internal/U5;

    .line 512
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 513
    sget-object v12, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    if-ne v11, v12, :cond_7

    .line 514
    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v13, v1, 0x1

    neg-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    goto :goto_5

    :cond_7
    move-object v12, v10

    :goto_5
    if-eqz v12, :cond_8

    .line 515
    sget-object v13, Lcom/android/tools/r8/internal/xw0;->n:Lcom/android/tools/r8/internal/xw0;

    if-ne v12, v13, :cond_9

    move-object v12, v10

    goto :goto_6

    .line 516
    :cond_8
    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    :cond_9
    :goto_6
    if-eqz v12, :cond_a

    move-object v11, v3

    move-object v13, v4

    move-object v3, v12

    move-object v12, v6

    goto :goto_8

    .line 517
    :cond_a
    new-instance v13, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v13, v3, v6}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-boolean v3, v7, Lcom/android/tools/r8/internal/W5;->j:Z

    if-eqz v3, :cond_c

    .line 519
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v3, v7

    move-object v6, v11

    goto/16 :goto_0

    :cond_c
    :goto_7
    move-object v13, v4

    move-object v3, v12

    move-object v12, v11

    move-object v11, v7

    goto :goto_8

    :cond_d
    move-object/from16 v12, p3

    move-object v11, v3

    move-object v3, v10

    move-object v13, v3

    :goto_8
    if-nez v3, :cond_20

    .line 520
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->i:Lcom/android/tools/r8/internal/W5;

    if-ne v11, v3, :cond_10

    sget-object v3, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    if-ne v8, v3, :cond_10

    .line 521
    sget-boolean v3, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v3, :cond_f

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 522
    :cond_f
    :goto_9
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    goto/16 :goto_12

    .line 523
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 524
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v3, v11}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v3

    .line 525
    iget-object v4, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v4, v1, v3}, Lcom/android/tools/r8/internal/on0;->a(II)Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    move-object v14, v3

    goto :goto_a

    :cond_11
    move-object v14, v10

    .line 526
    :goto_a
    invoke-static/range {p4 .. p4}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v15

    .line 527
    iget-boolean v3, v0, Lcom/android/tools/r8/internal/aB;->A:Z

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v4

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/aB;->A:Z

    .line 528
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/on0;->a()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 529
    iget-boolean v3, v0, Lcom/android/tools/r8/internal/aB;->B:Z

    if-nez v3, :cond_16

    .line 530
    iget-object v3, v0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget-object v4, v0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    .line 531
    invoke-virtual {v4, v11}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v1, v4, v8}, Lcom/android/tools/r8/internal/on0;->a(IILcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 532
    new-instance v16, Lcom/android/tools/r8/internal/g60;

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    .line 533
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v4

    .line 534
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v2, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    move-object/from16 v2, v16

    move v3, v4

    move-object v4, v11

    move-object v6, v14

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/g60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    goto :goto_d

    .line 535
    :cond_12
    sget-object v3, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    if-eq v8, v3, :cond_15

    .line 536
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_b

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 537
    :cond_14
    :goto_b
    iput-boolean v5, v0, Lcom/android/tools/r8/internal/aB;->B:Z

    goto :goto_c

    .line 538
    :cond_15
    new-instance v3, Lcom/android/tools/r8/internal/IJ;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Information in locals-table is invalid with respect to the stack map table. Local refers to non-present stack map type for register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with constraint "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/IJ;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    :goto_c
    move-object/from16 v16, v10

    :goto_d
    if-nez v16, :cond_17

    .line 539
    new-instance v16, Lcom/android/tools/r8/internal/f60;

    iget-object v2, v0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v3

    move-object/from16 v2, v16

    move-object v4, v11

    move-object v5, v15

    move-object v6, v14

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    goto :goto_e

    :cond_17
    move-object/from16 v2, v16

    .line 540
    :goto_e
    iget-boolean v3, v11, Lcom/android/tools/r8/internal/W5;->j:Z

    if-nez v3, :cond_1d

    .line 541
    sget-object v3, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    if-ne v12, v3, :cond_18

    .line 542
    iget-object v3, v11, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    :cond_18
    if-eqz v10, :cond_19

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    goto :goto_f

    :cond_19
    move v3, v1

    .line 543
    :goto_f
    sget-boolean v4, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v4, :cond_1b

    iget-object v4, v11, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_10

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 544
    :cond_1b
    :goto_10
    iget-object v4, v11, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    move-object v10, v2

    goto :goto_12

    .line 545
    :cond_1d
    invoke-virtual {v11, v1, v2, v12}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/U5;)V

    .line 546
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/internal/aB;)V

    .line 547
    sget-object v2, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    if-ne v12, v2, :cond_1e

    .line 548
    iget-object v2, v11, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    goto :goto_11

    :cond_1e
    move-object v2, v10

    :goto_11
    if-eqz v2, :cond_1f

    .line 549
    sget-object v3, Lcom/android/tools/r8/internal/xw0;->n:Lcom/android/tools/r8/internal/xw0;

    if-ne v2, v3, :cond_1c

    goto :goto_12

    .line 550
    :cond_1f
    iget-object v2, v11, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    goto :goto_12

    :cond_20
    move-object v10, v3

    :goto_12
    if-eqz v13, :cond_21

    .line 551
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_13
    if-ge v9, v2, :cond_21

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/o50;

    .line 552
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/U5;

    invoke-virtual {v4, v1, v10, v3}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/U5;)V

    goto :goto_13

    .line 553
    :cond_21
    invoke-virtual {v11, v1, v10, v12}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/U5;)V

    return-object v10
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 718
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    .line 719
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-direct {v0, v1, p2, p4}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 721
    iget-object p2, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;I)V

    return-object v0
.end method

.method public final a(J)Lcom/android/tools/r8/internal/xw0;
    .locals 4

    .line 714
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 715
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 717
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 618
    new-instance v0, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    .line 619
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 620
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1, p0}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 815
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 816
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 817
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 818
    new-instance p1, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final a(IILcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 554
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 555
    iget-object v0, p3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 556
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x2

    .line 557
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 558
    new-instance v0, Lcom/android/tools/r8/internal/bE;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/bE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/l1;)V

    .line 559
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(IIZ)V
    .locals 4

    const/4 v0, 0x1

    if-ltz p2, :cond_2

    .line 791
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1, p2}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v1

    .line 792
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->e:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 793
    aget-boolean v1, v2, v1

    goto :goto_1

    .line 794
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 795
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_3

    .line 797
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->d:Z

    goto :goto_1

    .line 798
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_5

    const/4 v1, -0x3

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    move v1, v0

    :goto_1
    if-nez v1, :cond_6

    .line 799
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->c:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/aB;->f(I)Lcom/android/tools/r8/internal/VA;

    move-result-object v1

    .line 801
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/DG;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 802
    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->d()I

    move-result p1

    .line 803
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VA;

    if-eqz p3, :cond_8

    .line 804
    iget-object p3, v2, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 805
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    .line 806
    iget-object p2, v1, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    goto :goto_3

    .line 807
    :cond_8
    iget-object p3, v2, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    .line 808
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    .line 809
    iget-object p2, v1, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    .line 810
    :goto_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 811
    iget p2, p1, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/2addr p2, v0

    .line 812
    iput p2, p1, Lcom/android/tools/r8/internal/W5;->m:I

    .line 813
    iget p2, p1, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/tools/r8/internal/W5;->l:I

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/C2;)V
    .locals 3

    .line 469
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    sget-object v1, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    .line 471
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 473
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 474
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 475
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x2

    .line 476
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 477
    new-instance v0, Lcom/android/tools/r8/internal/mh;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/mh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/C2;)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/I2;)V
    .locals 3

    .line 479
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    sget-object v1, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    .line 481
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 484
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 485
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x2

    .line 486
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 487
    new-instance v0, Lcom/android/tools/r8/internal/nh;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/nh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/I2;)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 464
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    const/4 v1, 0x2

    .line 465
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 466
    new-instance v0, Lcom/android/tools/r8/internal/jh;

    const/4 v1, 0x0

    .line 467
    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;Z)V
    .locals 3

    .line 454
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    const/4 v2, 0x2

    .line 456
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 457
    new-instance p3, Lcom/android/tools/r8/internal/Qk0;

    invoke-direct {p3, p1, v0, p2}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/jc;

    invoke-direct {p3, p1, v0, p2}, Lcom/android/tools/r8/internal/jc;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 458
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/j0;)V
    .locals 7

    .line 407
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 408
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    .line 409
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 410
    :cond_4
    :goto_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    .line 411
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    sget-object v4, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    sget-object v6, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 413
    iget-object v0, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p0

    move v2, p1

    .line 415
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 416
    :goto_2
    iget-object p1, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz p1, :cond_6

    .line 417
    instance-of p1, p1, Lcom/android/tools/r8/internal/dj;

    if-eqz p1, :cond_6

    return-void

    .line 418
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    if-ne p1, p2, :cond_7

    .line 419
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/j1;Ljava/util/function/BiConsumer;)V
    .locals 11

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_8

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-interface {p3, v1, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->o:Lcom/android/tools/r8/graph/H5;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    if-eq v1, v5, :cond_2

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 22
    :goto_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v5, v1, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v5, p1}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    .line 25
    :goto_2
    invoke-virtual {p0, p1, v1, v3, v5}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 26
    new-instance v5, Lcom/android/tools/r8/internal/k3;

    iget-object v6, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 27
    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v6

    .line 29
    invoke-direct {v5, v1, v6, v4}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 30
    iget-object v6, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v6}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 31
    iput-object v1, p0, Lcom/android/tools/r8/internal/aB;->s:Lcom/android/tools/r8/internal/xw0;

    .line 32
    sget-boolean v5, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    if-nez v5, :cond_7

    .line 33
    iget-boolean v5, v1, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_7
    :goto_4
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/xw0;->j:Z

    add-int/lit8 p1, p1, 0x1

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v4

    .line 35
    :goto_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v5

    .line 36
    iget-object v6, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v7, 0x7fffffff

    .line 37
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v6

    add-int/2addr v6, v5

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v5

    xor-int/2addr v5, v3

    add-int/2addr v6, v5

    .line 39
    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 40
    iget-object v5, v5, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 41
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v6, v5

    move v5, v4

    :goto_6
    if-ge v1, v6, :cond_10

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 44
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object v7

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-interface {p3, v8, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 47
    invoke-static {v7, v8, v9}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 48
    invoke-virtual {p0, p1, v7}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    :cond_9
    sub-int v8, v1, v5

    .line 49
    iget-object v9, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v8

    .line 50
    instance-of v9, v7, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v9, :cond_c

    .line 51
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v7

    .line 52
    sget-boolean v9, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v9, :cond_b

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 54
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    if-ne v8, v9, :cond_a

    goto :goto_7

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_b
    :goto_7
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    goto :goto_8

    .line 56
    :cond_c
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 57
    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p3, v8, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v7, v8, v9}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    .line 59
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7, p1}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    goto :goto_9

    :cond_d
    move-object v7, v2

    .line 61
    :goto_9
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v7}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 62
    new-instance v9, Lcom/android/tools/r8/internal/k3;

    iget-object v10, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 63
    iget-object v10, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 64
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v10

    .line 65
    invoke-direct {v9, v7, v10, v3}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 66
    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    if-nez v7, :cond_e

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 68
    :cond_e
    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 69
    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 70
    :cond_f
    invoke-virtual {p0, p1, v8}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;)V

    :goto_a
    move-object v7, v8

    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 71
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v7

    add-int/2addr p1, v7

    goto/16 :goto_6

    .line 72
    :cond_10
    iget-object p3, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 73
    iget-object p3, p3, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 74
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Bv;

    sub-int v6, v1, v5

    .line 75
    iget-object v7, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v6

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Bv;->a()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 78
    new-instance v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    .line 79
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v7

    .line 80
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v8

    goto :goto_d

    :cond_11
    iget-object v8, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    :goto_d
    invoke-direct {v3, v7, v8, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 81
    new-instance v7, Lcom/android/tools/r8/internal/k3;

    iget-object v8, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 82
    iget-object v8, v8, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 83
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v8

    .line 84
    invoke-direct {v7, v3, v8, v4}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 85
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 87
    :cond_12
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 88
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 89
    :cond_13
    iget-object v7, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v7, v6}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;)V

    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 90
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_c

    :cond_14
    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 622
    iget-object v0, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 623
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x2

    .line 624
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 625
    new-instance v0, Lcom/android/tools/r8/internal/Mo0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 626
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;)V
    .locals 2

    .line 733
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 734
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 735
    new-instance p2, Lcom/android/tools/r8/internal/k3;

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 736
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 737
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 738
    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 739
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 740
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 741
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 742
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I[II[I)V
    .locals 8

    .line 627
    array-length v0, p4

    .line 628
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    array-length v3, p2

    if-eq v3, v2, :cond_1

    array-length v3, p2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 629
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/aB;->a(I)V

    return-void

    .line 630
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 631
    new-instance v3, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 632
    new-instance v4, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 633
    array-length v5, p2

    const/4 v6, 0x0

    if-ne v5, v2, :cond_4

    .line 634
    aget p2, p2, v6

    move v1, v6

    move v5, v1

    :goto_1
    if-ge v1, v0, :cond_8

    .line 635
    aget v7, p4, v1

    if-eq v7, p3, :cond_3

    .line 636
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 637
    aget v7, p4, v1

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    .line 638
    array-length v1, p2

    if-ne v1, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    move v1, v6

    move v5, v1

    :goto_4
    if-ge v1, v0, :cond_8

    .line 639
    aget v7, p4, v1

    if-eq v7, p3, :cond_7

    .line 640
    aget v7, p2, v1

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 641
    aget v7, p4, v1

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 642
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/VA;

    iget-object p2, p2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 643
    iget p4, p2, Lcom/android/tools/r8/internal/W5;->m:I

    sub-int/2addr p4, v5

    .line 644
    iput p4, p2, Lcom/android/tools/r8/internal/W5;->m:I

    .line 645
    iget p4, p2, Lcom/android/tools/r8/internal/W5;->l:I

    sub-int/2addr p4, v5

    iput p4, p2, Lcom/android/tools/r8/internal/W5;->l:I

    if-ne v5, v0, :cond_b

    .line 646
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_a

    .line 647
    iget p1, v3, Lcom/android/tools/r8/internal/CH;->c:I

    if-nez p1, :cond_9

    goto :goto_6

    .line 648
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 649
    :cond_a
    :goto_6
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/aB;->a(I)V

    return-void

    :cond_b
    const/4 p2, 0x0

    .line 650
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object p4

    .line 651
    invoke-virtual {v4, p2}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object p2

    .line 652
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_d

    array-length v0, p4

    array-length v1, p2

    if-ne v0, v1, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 653
    :cond_d
    :goto_7
    array-length v0, p2

    new-array v0, v0, [I

    .line 654
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 655
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v3, p3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/VA;

    iget-object v3, v3, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 656
    iget-object v4, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 657
    iget-object v4, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v4, p3}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 658
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 659
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :goto_8
    array-length p3, p2

    if-ge v6, p3, :cond_f

    .line 661
    aget p3, p2, v6

    .line 662
    iget-object v4, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v4, p3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/VA;

    iget-object v4, v4, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 663
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_e

    .line 664
    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 665
    iget-object v5, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v5, p3}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 666
    iget-object v4, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 667
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    aput v4, v0, v6

    goto :goto_9

    .line 669
    :cond_e
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->d()V

    .line 670
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, v0, v6

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 671
    :cond_f
    new-instance p2, Lcom/android/tools/r8/internal/tI;

    invoke-direct {p2, p1, p4, v0, v3}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    .line 672
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;)V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 421
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 422
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 424
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 425
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 426
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 427
    new-instance p1, Lcom/android/tools/r8/internal/cj;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/cj;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 429
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 430
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 431
    :cond_7
    :goto_3
    new-instance p1, Lcom/android/tools/r8/internal/hj;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/hj;-><init>()V

    .line 432
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    :cond_8
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V
    .locals 6

    .line 743
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_3

    if-nez v0, :cond_1

    .line 744
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 745
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 746
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 747
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 748
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    instance-of v1, v1, Lcom/android/tools/r8/internal/z7;

    if-eqz v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 751
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 752
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->A:Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->A:Z

    .line 753
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 754
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 755
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 756
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-eqz p1, :cond_b

    if-nez v0, :cond_6

    .line 757
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 758
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->e()Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    if-eqz p1, :cond_b

    if-nez v0, :cond_8

    .line 759
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/aB;->v:Z

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 760
    :cond_8
    :goto_4
    iput-boolean v4, p0, Lcom/android/tools/r8/internal/aB;->v:Z

    .line 761
    new-instance p2, Ljava/util/ArrayList;

    .line 762
    iget-object v0, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 763
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 764
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 765
    new-instance v1, Lcom/android/tools/r8/internal/I41;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/internal/I41;-><init>(Lcom/android/tools/r8/internal/aB;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/N8;->a(Ljava/util/function/BiConsumer;)V

    .line 766
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 767
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 768
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 770
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    if-ge v3, v2, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 771
    iget-object v5, v0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_9

    .line 772
    iget-object v5, v0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 773
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 774
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 775
    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/N8;

    invoke-direct {p2, p1, v1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p2, v0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    :cond_b
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Mw0;II)V
    .locals 2

    .line 489
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 490
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    if-eq p3, v1, :cond_1

    .line 493
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 494
    new-instance p3, Lcom/android/tools/r8/internal/ej;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/ej;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 495
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 496
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 497
    new-instance p3, Lcom/android/tools/r8/internal/cj;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/cj;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 499
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;II)V
    .locals 2

    .line 709
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    const/4 v0, 0x1

    .line 710
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 711
    new-instance v0, Lcom/android/tools/r8/internal/fZ;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/fZ;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 712
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 713
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;III)V
    .locals 2

    .line 692
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 693
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v0, 0x1

    .line 694
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 695
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/d2;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/d2;

    move-result-object p1

    .line 696
    sget-boolean p2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 697
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;II)V
    .locals 2

    .line 704
    invoke-static {p2}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v0, 0x1

    .line 705
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 706
    new-instance v0, Lcom/android/tools/r8/internal/w10;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/tools/r8/internal/w10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 707
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 708
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;III)V
    .locals 7

    .line 698
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 699
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object p4

    invoke-virtual {p0, p5, p4}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 700
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p0, p3, p5, p4}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 701
    new-instance p3, Lcom/android/tools/r8/internal/se;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/se;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 702
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 703
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;I)V
    .locals 2

    .line 397
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/W5;->i:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/ZA;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/ZA;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;III)V
    .locals 2

    .line 433
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 434
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 435
    sget-object v0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_1

    .line 442
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    instance-of v0, v0, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_2

    .line 444
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aB;->B:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 445
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_1

    .line 446
    :cond_4
    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    .line 447
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 448
    new-instance v0, Lcom/android/tools/r8/internal/N3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/N3;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 449
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 450
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    if-nez p1, :cond_5

    .line 451
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    .line 452
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;II)V
    .locals 6

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    if-eq p1, v0, :cond_0

    .line 605
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p5, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v0

    add-int/2addr v0, p5

    goto :goto_0

    :cond_0
    move v0, p5

    .line 607
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    if-ne p1, v1, :cond_1

    .line 608
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 609
    :cond_1
    iget-object v1, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    .line 610
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v3

    .line 612
    invoke-virtual {p0, v0, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr p5, p4

    .line 614
    invoke-static {v0, p5}, Lcom/android/tools/r8/internal/aB;->a(II)V

    .line 615
    sget-boolean p4, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 616
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;I[I)V
    .locals 6

    .line 589
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 591
    aget v0, p5, v1

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v1

    .line 593
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    if-ne p1, v0, :cond_1

    .line 594
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    .line 596
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v3

    .line 598
    aget v5, p5, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Mw0;->a()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 600
    :cond_2
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/aB;->a(II)V

    .line 601
    sget-boolean p4, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 602
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V
    .locals 6

    .line 575
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_6

    .line 576
    sget-object v1, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    .line 577
    instance-of v1, p2, Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 578
    :cond_2
    :goto_0
    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    .line 579
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    sget-object v3, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 581
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 582
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 583
    :cond_4
    :goto_1
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_6

    if-nez v0, :cond_6

    .line 584
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 586
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 587
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    .line 588
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 460
    new-instance p2, Lcom/android/tools/r8/internal/qh;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 461
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 462
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sL;)V
    .locals 11

    .line 819
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 820
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 821
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 822
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 823
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 824
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 825
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 826
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 827
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 828
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 829
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 830
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v1

    .line 831
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VA;

    .line 832
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 833
    iget-object v3, v1, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 834
    iget v3, v3, Lcom/android/tools/r8/internal/FH;->c:I

    const/4 v9, 0x1

    if-gt v3, v9, :cond_d

    if-ne v3, v9, :cond_a

    .line 835
    iget-object v3, v1, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 836
    :cond_a
    iget-object v2, v1, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 837
    iget v3, v2, Lcom/android/tools/r8/internal/FH;->c:I

    if-ne v3, v9, :cond_b

    .line 838
    new-instance v0, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 839
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v0

    .line 840
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    iget v2, p0, Lcom/android/tools/r8/internal/aB;->k:I

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;IIZ)V

    goto/16 :goto_9

    :cond_b
    if-nez v0, :cond_13

    .line 841
    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v2, v1, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 842
    iget v2, v2, Lcom/android/tools/r8/internal/FH;->c:I

    .line 843
    iget-object v3, v1, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    .line 844
    iget v3, v3, Lcom/android/tools/r8/internal/FH;->c:I

    add-int/2addr v3, v2

    .line 845
    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/FH;-><init>(I)V

    .line 846
    iget-object v2, v1, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 847
    iget-object v1, v1, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 848
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 849
    :cond_d
    :goto_5
    iget-object v0, v1, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    new-instance v1, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 851
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 852
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v8

    .line 853
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VA;

    .line 854
    iget-object v3, v0, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    .line 855
    iget v3, v3, Lcom/android/tools/r8/internal/FH;->c:I

    .line 856
    iget-object v4, v0, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    .line 857
    iget v4, v4, Lcom/android/tools/r8/internal/FH;->c:I

    add-int/2addr v3, v4

    if-ne v3, v9, :cond_12

    .line 858
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ZA;

    .line 859
    iget-object v6, v5, Lcom/android/tools/r8/internal/ZA;->a:Lcom/android/tools/r8/internal/W5;

    iget-object v7, v0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    if-ne v6, v7, :cond_e

    move-object v4, v5

    goto :goto_7

    .line 860
    :cond_f
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_11

    iget v0, v4, Lcom/android/tools/r8/internal/ZA;->b:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v3, v8}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v3

    if-ne v0, v3, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 861
    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    new-instance v10, Lcom/android/tools/r8/internal/XA;

    iget v5, v4, Lcom/android/tools/r8/internal/ZA;->b:I

    iget-object v6, v4, Lcom/android/tools/r8/internal/ZA;->a:Lcom/android/tools/r8/internal/W5;

    iget v7, p0, Lcom/android/tools/r8/internal/aB;->k:I

    move-object v3, v10

    move v4, v5

    move-object v5, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/XA;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/B60;II)V

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 863
    :cond_12
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 864
    new-instance v5, Lcom/android/tools/r8/internal/W5;

    .line 865
    iget-object v4, v3, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    .line 866
    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 867
    iget v4, v5, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/2addr v4, v9

    iput v4, v5, Lcom/android/tools/r8/internal/W5;->m:I

    .line 868
    iget v4, v5, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/2addr v4, v9

    iput v4, v5, Lcom/android/tools/r8/internal/W5;->l:I

    .line 869
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-virtual {v3, v0, v5}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 872
    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 873
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    new-instance v10, Lcom/android/tools/r8/internal/XA;

    iget v7, p0, Lcom/android/tools/r8/internal/aB;->k:I

    const/4 v4, -0x1

    move-object v3, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/XA;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/B60;II)V

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 874
    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 875
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->b()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 405
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 406
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/lang/Integer;)V
    .locals 5

    .line 776
    new-instance v0, Lcom/android/tools/r8/internal/W5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 777
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    .line 778
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 779
    iget v1, v0, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/tools/r8/internal/W5;->m:I

    .line 780
    iget v1, v0, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/tools/r8/internal/W5;->l:I

    .line 781
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->g:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/tools/r8/internal/WA;

    iget v3, p0, Lcom/android/tools/r8/internal/aB;->k:I

    .line 782
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v0, p3, v3, v4}, Lcom/android/tools/r8/internal/WA;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;II)V

    .line 783
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 786
    iget-object p3, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/VA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 787
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 788
    iget p2, p1, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/lit8 p2, p2, 0x1

    .line 789
    iput p2, p1, Lcom/android/tools/r8/internal/W5;->m:I

    .line 790
    iget p2, p1, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/tools/r8/internal/W5;->l:I

    :cond_0
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/CH;I)V
    .locals 3

    .line 560
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    array-length v0, p1

    .line 561
    iget v1, p2, Lcom/android/tools/r8/internal/CH;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 563
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 564
    iget v1, p2, Lcom/android/tools/r8/internal/CH;->c:I

    .line 565
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object p2

    .line 567
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/X;

    .line 568
    invoke-interface {v1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    .line 569
    sget-object v2, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 571
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 572
    invoke-static {p2, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    const/4 v1, 0x2

    .line 573
    invoke-virtual {p0, p3, v1, p2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 574
    new-instance p3, Lcom/android/tools/r8/internal/rc0;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/rc0;-><init>([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 7

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/on0;->e(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    sget-object v4, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    sget-object v6, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 73
    iget-object v1, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    move v2, p1

    move-object v5, p2

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    if-eq p1, v0, :cond_3

    .line 77
    iget-object p1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz p1, :cond_2

    .line 78
    instance-of p1, p1, Lcom/android/tools/r8/internal/dj;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 79
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/IJ;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to read local "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but no local information was associated with the value being read."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/IJ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    :goto_2
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 81
    iget-object p1, v1, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-nez p1, :cond_4

    .line 82
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_3

    .line 83
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_6

    .line 84
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 90
    invoke-virtual {v1, p2, p1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->S()V

    return-object v1
.end method

.method public final b()V
    .locals 2

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/aB;->v:Z

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Lcom/android/tools/r8/internal/aB;->k:I

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/K41;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/K41;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-nez v0, :cond_8

    .line 42
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 44
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    instance-of v0, v0, Lcom/android/tools/r8/internal/bY;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 46
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    if-nez v0, :cond_8

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of p1, p1, Lcom/android/tools/r8/internal/bY;

    if-eqz p1, :cond_7

    goto :goto_3

    .line 49
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public final b(IILcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 34
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 35
    iget-object v0, p3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/rE;

    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p3, p2, p1, v1}, Lcom/android/tools/r8/internal/rE;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/graph/j0;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_4
    :goto_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    sget-object v4, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    sget-object v6, Lcom/android/tools/r8/internal/f60$a;->c:Lcom/android/tools/r8/internal/f60$a;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aB;->e(I)V

    .line 7
    iget-object v0, v3, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p0

    move v2, p1

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/U5;Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/internal/f60$a;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 10
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    if-ne v1, p2, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eq v1, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return-void

    .line 15
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/android/tools/r8/internal/ej;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/ej;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 50
    iget-object v0, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/No0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/No0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;II)V
    .locals 6

    .line 53
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    const/4 v0, 0x1

    .line 54
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/tools/r8/internal/e10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/e10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_2

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->l:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/qh;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 66
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    move-object v0, v1

    .line 68
    :goto_2
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v1, p4

    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    .line 21
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/d2;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/d2;

    move-result-object p1

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/YV;III)V
    .locals 1

    .line 25
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 27
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 28
    invoke-static {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 96
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 99
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/tools/r8/internal/aB;->w:Lcom/android/tools/r8/internal/xw0;

    .line 101
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v0

    .line 15
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    instance-of v2, v0, Lcom/android/tools/r8/internal/XJ;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    .line 22
    :goto_2
    instance-of v3, v0, Lcom/android/tools/r8/internal/OJ;

    if-eqz v3, :cond_5

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_3

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    :goto_3
    const/4 v2, 0x2

    .line 25
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    .line 9
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/t2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/t2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d(I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aB;->a()V

    return-void

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    .line 24
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/on0;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v1, p4

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/t2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/t2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final e(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/on0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use of register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/bJ;

    const-string v0, "Invalid register"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Ws;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Ws;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ws;->o()Z

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final f(I)Lcom/android/tools/r8/internal/VA;
    .locals 7

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VA;

    if-nez v1, :cond_c

    if-ltz p1, :cond_b

    const/4 v1, 0x1

    if-ltz p1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->e:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 13
    aget-boolean v0, v2, v0

    goto :goto_2

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    if-nez v2, :cond_3

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->f:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v2, -0x2

    if-ne p1, v2, :cond_5

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aB;->d:Z

    goto :goto_2

    :cond_5
    if-nez v0, :cond_7

    const/4 v0, -0x3

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_b

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p1

    goto :goto_3

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AG;->d()I

    move-result v0

    .line 21
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VA;

    .line 22
    iget-object v3, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    .line 23
    new-instance v4, Lcom/android/tools/r8/internal/VA;

    .line 24
    iget-object v5, v2, Lcom/android/tools/r8/internal/VA;->f:Lcom/android/tools/r8/internal/aB;

    .line 25
    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/VA;-><init>(Lcom/android/tools/r8/internal/aB;)V

    .line 26
    new-instance v5, Lcom/android/tools/r8/internal/FH;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/FH;-><init>(Ljava/util/Set;)V

    iput-object v5, v4, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    .line 27
    iget-object v5, v4, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 28
    iget v6, v5, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/2addr v6, v1

    .line 29
    iput v6, v5, Lcom/android/tools/r8/internal/W5;->m:I

    .line 30
    iget v6, v5, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/2addr v6, v1

    iput v6, v5, Lcom/android/tools/r8/internal/W5;->l:I

    .line 31
    iget-object v1, v2, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v5, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 33
    :goto_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VA;

    .line 35
    iget-object v6, v1, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    .line 36
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/FH;->remove(I)Z

    .line 37
    iget-object v1, v1, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    goto :goto_4

    .line 38
    :cond_9
    iget-object v0, v2, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    iput-object v0, v4, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 39
    new-instance v0, Lcom/android/tools/r8/internal/FH;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FH;-><init>(Ljava/util/Set;)V

    iput-object v0, v2, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    .line 40
    iget-object v0, v4, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v1, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 42
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VA;

    .line 44
    iget-object v0, v0, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    goto :goto_5

    .line 46
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v1, v2, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FH;-><init>(Lcom/android/tools/r8/internal/nI;)V

    iput-object v0, v4, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    goto :goto_6

    .line 47
    :cond_b
    new-instance v4, Lcom/android/tools/r8/internal/VA;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/VA;-><init>(Lcom/android/tools/r8/internal/aB;)V

    .line 48
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1, v4}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/aB;->b:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, v4, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    return-object v4

    :cond_c
    return-object v1
.end method

.method public final f(Lcom/android/tools/r8/internal/T10;III)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v3

    invoke-virtual {p0, p3, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v3, p4

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 5
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/Ws;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Ws;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_5

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ws;->o()Z

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/internal/T10;III)V
    .locals 2

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/gY;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/gY;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->x2()V

    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v1, p4

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/gY;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/gY;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/A40;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/A40;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v1, p4

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/A40;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/A40;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/if0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/if0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/if0;->o()Z

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/internal/T10;III)V
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v3

    invoke-virtual {p0, p3, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v3, p4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/if0;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/if0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/if0;->o()Z

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    int-to-long v1, p4

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/Qq0;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/android/tools/r8/internal/Qq0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final n(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/Ol0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Ol0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final o(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/Sl0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Sl0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final p(Lcom/android/tools/r8/internal/T10;III)V
    .locals 2

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/Qq0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Qq0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/internal/T10;III)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/mw0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/mw0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final r(Lcom/android/tools/r8/internal/T10;III)V
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    sget-object v2, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    :goto_2
    new-instance p4, Lcom/android/tools/r8/internal/e10;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/tools/r8/internal/e10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    move-object p4, v1

    :goto_3
    if-nez v0, :cond_7

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final s(Lcom/android/tools/r8/internal/T10;III)V
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object p4

    invoke-virtual {p0, p2, v2, p4}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance p4, Lcom/android/tools/r8/internal/e10;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/tools/r8/internal/e10;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    :cond_2
    int-to-long v3, p4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/aB;->a(J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v1

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->x2()V

    move-object p4, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "blocks:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/aB;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
