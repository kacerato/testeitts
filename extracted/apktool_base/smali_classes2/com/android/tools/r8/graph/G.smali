.class public Lcom/android/tools/r8/graph/G;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/P;
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/G$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/i0;",
        "Lcom/android/tools/r8/graph/P;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/G;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/M2;

.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public k:I

.field public final l:Lcom/android/tools/r8/position/Position;

.field public final m:Lcom/android/tools/r8/internal/u8;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 1
    sget-object v7, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 2
    sget-object v8, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/internal/u8;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/internal/u8;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/tools/r8/graph/G;->k:I

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/G;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    iput p2, p0, Lcom/android/tools/r8/graph/G;->g:I

    .line 8
    iput p3, p0, Lcom/android/tools/r8/graph/G;->f:I

    .line 9
    iput-object p4, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 10
    iput-object p5, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    .line 11
    iput-object p6, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    .line 12
    iput-object p7, p0, Lcom/android/tools/r8/graph/G;->l:Lcom/android/tools/r8/position/Position;

    .line 13
    iput-object p8, p0, Lcom/android/tools/r8/graph/G;->m:Lcom/android/tools/r8/internal/u8;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/G;)Ljava/util/Collection;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O;Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/android/tools/r8/graph/o7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/o7;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v1, Lcom/android/tools/r8/graph/L;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/L;-><init>(Lcom/android/tools/r8/graph/O;)V

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/p7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/p7;-><init>()V

    .line 27
    new-instance v1, Lcom/android/tools/r8/graph/M;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/M;-><init>(Lcom/android/tools/r8/graph/O;)V

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/q7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/q7;-><init>()V

    .line 29
    new-instance v1, Lcom/android/tools/r8/graph/N;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/N;-><init>(Lcom/android/tools/r8/graph/O;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/f6;Lcom/android/tools/r8/internal/Db;)V
    .locals 1

    .line 155
    iget-object p1, p1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/graph/v7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/v7;-><init>(Lcom/android/tools/r8/graph/f6;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/rA;Lcom/android/tools/r8/internal/W9;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v0

    .line 4
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 6
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/G;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/G;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public E0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W9;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public F0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/G$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/G;->f:I

    return v0
.end method

.method public final H0()Lcom/android/tools/r8/internal/B60;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lcom/android/tools/r8/internal/Ma;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public I0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/Db;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    return-object v0
.end method

.method public final V()Lcom/android/tools/r8/graph/G;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 21
    new-instance v0, Lcom/android/tools/r8/graph/O;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/O;-><init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/G;)V

    .line 22
    new-instance v1, Lcom/android/tools/r8/graph/r7;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/r7;-><init>(Lcom/android/tools/r8/graph/O;)V

    invoke-virtual {p2, p0, p1, v1}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)I
    .locals 8

    .line 194
    iget v0, p0, Lcom/android/tools/r8/graph/G;->k:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    new-instance v6, Lcom/android/tools/r8/graph/F;

    invoke-direct {v6, p1}, Lcom/android/tools/r8/graph/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 196
    new-instance v0, Lcom/android/tools/r8/internal/J9;

    .line 197
    new-instance v5, Lcom/android/tools/r8/internal/K9;

    invoke-direct {v5, p1, p0, p2}, Lcom/android/tools/r8/internal/K9;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/H5;)V

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v7, p2

    .line 198
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/J9;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/L9;Lcom/android/tools/r8/graph/H5;)V

    .line 199
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J9;->a()I

    move-result p1

    .line 200
    iput p1, p0, Lcom/android/tools/r8/graph/G;->k:I

    .line 201
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/graph/G;->k:I

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 202
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/G;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 157
    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-eqz v2, :cond_0

    .line 158
    check-cast v1, Lcom/android/tools/r8/internal/ka;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 159
    sget-object p1, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    return-object p1

    .line 160
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 161
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v0, :cond_b

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->u()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 165
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 166
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 167
    sget-object p1, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    return-object p1

    .line 168
    :cond_4
    new-instance p1, Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 169
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v0

    .line 171
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, p2

    :goto_2
    if-ge v0, v4, :cond_8

    aget-object v5, p2, v0

    .line 172
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 173
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v3

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v5, 0x2

    :goto_4
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/GG;

    .line 175
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    .line 176
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/G$a;

    .line 177
    iget-object v3, v2, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    if-ne v3, v1, :cond_9

    iget v3, v2, Lcom/android/tools/r8/graph/G$a;->a:I

    .line 178
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v2, Lcom/android/tools/r8/graph/G$a;->a:I

    .line 179
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/GG;->a(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 180
    iget v3, v2, Lcom/android/tools/r8/graph/G$a;->a:I

    new-instance v4, Lcom/android/tools/r8/graph/j0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    iget-object v5, v2, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v6, v2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v4, v5, v6, v2}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p2, v3, v4}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    return-object p2

    .line 181
    :cond_b
    :goto_6
    sget-object p1, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p2

    .line 114
    sget-boolean v0, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz p7, :cond_5

    :cond_4
    move-object/from16 v13, p3

    goto :goto_2

    .line 116
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :goto_2
    invoke-virtual {p0, v13, v12}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 118
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v14

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->s0:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 121
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_8

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 123
    :cond_7
    :goto_3
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v14

    .line 124
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    return-object v0

    .line 125
    :cond_8
    :goto_4
    :try_start_0
    iget-object v0, v11, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v14

    .line 127
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/IJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/IJ;)V

    .line 129
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v14

    .line 130
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 100
    invoke-virtual {v11, v13, v12}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 101
    iget-object v14, v13, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 102
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->s0:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_2

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p3

    .line 107
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    return-object v0

    .line 108
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, v11, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p3

    .line 110
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/IJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/IJ;)V

    .line 112
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p3

    .line 113
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 8

    .line 131
    new-instance v6, Lcom/android/tools/r8/internal/hb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p7

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/hb;-><init>(Lcom/android/tools/r8/graph/G;Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/y;)V

    if-nez p6, :cond_2

    .line 132
    sget-boolean v0, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v0, :cond_0

    if-nez p8, :cond_1

    :cond_0
    move-object v1, p3

    move-object v2, p4

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :goto_0
    invoke-static {p3, p4, v6}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object v0

    :goto_1
    move-object v1, p2

    move-object/from16 v2, p9

    goto :goto_2

    :cond_2
    move-object v1, p3

    move-object v2, p4

    .line 134
    new-instance v7, Lcom/android/tools/r8/internal/aB;

    move-object v0, v7

    move-object v3, p5

    move-object v4, v6

    move-object/from16 v5, p8

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    goto :goto_1

    .line 135
    :goto_2
    invoke-virtual {v0, p2, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;
    .locals 1

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ka;->r()Lcom/android/tools/r8/internal/W9;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->m:Lcom/android/tools/r8/internal/u8;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/u8;->a:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/s8;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 1

    .line 182
    new-instance v0, Lcom/android/tools/r8/internal/Va;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/Va;-><init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Va;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    instance-of v0, p2, Lcom/android/tools/r8/internal/Ma;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 136
    sget-boolean p1, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 140
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 141
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 143
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V

    .line 144
    iget-object v0, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 145
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Db;

    .line 147
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Db;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 148
    iget-object v0, p2, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 149
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v14

    .line 32
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v15

    .line 33
    sget-boolean v2, Lcom/android/tools/r8/graph/G;->n:Z

    move-object/from16 v10, p1

    if-nez v2, :cond_1

    invoke-virtual {v0, v11, v10}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Could not validate stack map frames"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v16

    .line 35
    iget-object v9, v11, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v4

    const/16 v17, 0x0

    if-eqz v4, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v4, :cond_7

    invoke-virtual {v11, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    .line 40
    iget-object v2, v0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 41
    :cond_5
    :goto_1
    iget-object v2, v3, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    sget-object v4, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    if-eq v2, v4, :cond_7

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v2

    .line 43
    iget-object v4, v2, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 45
    :cond_6
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/tools/r8/internal/EX;->a(Lcom/android/tools/r8/internal/XQ;)V

    move-object/from16 v18, v2

    goto :goto_3

    :cond_7
    :goto_2
    move-object/from16 v18, v17

    .line 47
    :goto_3
    sget-object v2, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 48
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v3

    const/4 v4, 0x1

    const/16 v19, 0x0

    if-nez v3, :cond_b

    .line 49
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 50
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    sget-boolean v1, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v1, :cond_9

    .line 52
    iget-boolean v1, v8, Lcom/android/tools/r8/internal/nJ;->U1:Z

    if-nez v1, :cond_9

    .line 53
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 54
    :cond_9
    :goto_4
    iget-boolean v1, v8, Lcom/android/tools/r8/internal/nJ;->U1:Z

    if-nez v1, :cond_a

    .line 55
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->r:Z

    if-eqz v1, :cond_b

    :cond_a
    move/from16 v20, v19

    goto :goto_5

    :cond_b
    move/from16 v20, v4

    .line 56
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/G;->H0()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 57
    instance-of v1, v7, Lcom/android/tools/r8/internal/B60$c;

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v4, v19

    .line 58
    :goto_6
    iget-object v1, v0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v22, v4

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    if-eqz v20, :cond_d

    .line 59
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v23, v7

    move-object v11, v8

    move-object/from16 v24, v9

    goto :goto_8

    :cond_d
    if-eqz v22, :cond_e

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    instance-of v2, v1, Lcom/android/tools/r8/internal/Ma;

    if-eqz v2, :cond_e

    .line 62
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {v2, v7}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v22, v19

    goto :goto_7

    :cond_e
    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v23, v7

    move-object v7, v9

    move-object v11, v8

    move-object/from16 v8, p4

    move-object/from16 v24, v9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 64
    invoke-virtual/range {v1 .. v10}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V

    :goto_8
    move-object/from16 v10, p1

    move-object v8, v11

    move-object/from16 v7, v23

    move-object/from16 v9, v24

    move-object/from16 v11, p3

    goto :goto_7

    :cond_f
    move-object v11, v8

    .line 65
    iget v1, v0, Lcom/android/tools/r8/graph/G;->g:I

    iget v2, v0, Lcom/android/tools/r8/graph/G;->f:I

    invoke-virtual {v13, v1, v2}, Lcom/android/tools/r8/internal/EX;->c(II)V

    .line 66
    iget-object v1, v0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Db;

    .line 67
    iget-object v3, v2, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v3

    .line 68
    iget-object v4, v2, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v4

    move/from16 v5, v19

    .line 69
    :goto_9
    iget-object v6, v2, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 70
    iget-object v6, v2, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    .line 71
    invoke-virtual {v14, v15, v6}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 72
    iget-object v7, v2, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v7

    .line 73
    iget-object v8, v11, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v8, :cond_11

    move-object/from16 v6, v17

    goto :goto_a

    .line 74
    :cond_11
    invoke-virtual {v12, v6}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v6

    .line 75
    :goto_a
    invoke-virtual {v13, v3, v4, v7, v6}, Lcom/android/tools/r8/internal/EX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    if-eqz v18, :cond_16

    .line 76
    sget-boolean v1, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :cond_14
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 78
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    .line 79
    invoke-interface {v1}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 81
    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v7

    .line 82
    iget-object v1, v2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14, v15, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 83
    iget-object v3, v2, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    .line 84
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v12, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v1, v2, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_15

    move-object/from16 v5, v17

    goto :goto_d

    :cond_15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 87
    :goto_d
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v6

    .line 88
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v9

    move-object/from16 v1, p6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    .line 89
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    goto :goto_c

    .line 90
    :cond_16
    iget-object v1, v0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/G$a;

    .line 91
    iget-object v2, v1, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    iget-object v3, v1, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    iget-object v4, v1, Lcom/android/tools/r8/graph/G$a;->d:Lcom/android/tools/r8/internal/ka;

    iget v7, v1, Lcom/android/tools/r8/graph/G$a;->a:I

    .line 92
    iget-object v1, v2, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14, v15, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 93
    iget-object v5, v2, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    .line 94
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v12, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    iget-object v1, v2, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_17

    move-object/from16 v9, v17

    goto :goto_f

    :cond_17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 97
    :goto_f
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v10

    .line 98
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object v11

    move-object/from16 v1, p6

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 99
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    goto :goto_e

    :cond_18
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 151
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 153
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/graph/s7;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/s7;-><init>(Lcom/android/tools/r8/graph/f6;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "this"

    if-ge v0, v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/G$a;

    .line 186
    iget-object v5, v3, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    iget-object v5, v5, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    .line 187
    invoke-static {p1, v5}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/L2;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    iget-object v3, v3, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 189
    const-string v0, "_"

    invoke-static {v0, v1}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/android/tools/r8/graph/j0;

    .line 191
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v3}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 192
    iget-object p1, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/G$a;

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    new-instance v3, Lcom/android/tools/r8/graph/G$a;

    iget v4, p1, Lcom/android/tools/r8/graph/G$a;->a:I

    iget-object v5, p1, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    iget-object p1, p1, Lcom/android/tools/r8/graph/G$a;->d:Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3, v4, v1, v5, p1}, Lcom/android/tools/r8/graph/G$a;-><init>(ILcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 14
    iget-object v2, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 15
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/graph/u7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/u7;-><init>(Lcom/android/tools/r8/internal/rA;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W9;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;
    .locals 8

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object p5

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/B60$c$a;

    .line 8
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 9
    iput-boolean p2, p1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of p2, p2, Lcom/android/tools/r8/internal/ka;

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 16
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_0
    iget-object p5, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    move v1, v0

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v3, v2, Lcom/android/tools/r8/internal/Ma;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/Ma;

    .line 22
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ma;->c:Lcom/android/tools/r8/internal/ka;

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 24
    invoke-static {p1, v1, p4}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    .line 25
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    .line 26
    :cond_1
    instance-of v3, v2, Lcom/android/tools/r8/internal/ka;

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    move-object v1, p1

    goto :goto_2

    .line 27
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 29
    iput-object p1, v1, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v1

    .line 32
    :goto_2
    new-instance v3, Lcom/android/tools/r8/internal/Ma;

    invoke-direct {v3, p2, v1}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    .line 33
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_4
    new-instance p1, Lcom/android/tools/r8/graph/G;

    iget-object v2, p0, Lcom/android/tools/r8/graph/G;->e:Lcom/android/tools/r8/graph/M2;

    iget v3, p0, Lcom/android/tools/r8/graph/G;->g:I

    iget v4, p0, Lcom/android/tools/r8/graph/G;->f:I

    iget-object v6, p0, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    iget-object v7, p0, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/graph/G;->k:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance p2, Lcom/android/tools/r8/graph/t7;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/t7;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final k(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_0

    :cond_1
    if-gt v1, p1, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final k0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/P;
    .locals 0

    return-object p0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q0()I
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/G;->k(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final s0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    instance-of v1, v1, Lcom/android/tools/r8/internal/sa;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final t0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Va;

    sget-object v1, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/tools/r8/internal/Va;-><init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Va;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x0()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    instance-of v2, v1, Lcom/android/tools/r8/internal/bb;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-nez v2, :cond_0

    instance-of v1, v1, Lcom/android/tools/r8/internal/Ma;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
