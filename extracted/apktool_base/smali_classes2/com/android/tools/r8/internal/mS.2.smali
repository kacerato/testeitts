.class public Lcom/android/tools/r8/internal/mS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Je0;


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:I

.field public d:I

.field public e:Ljava/util/IdentityHashMap;

.field public f:Lcom/android/tools/r8/internal/xw0;

.field public g:Lcom/android/tools/r8/internal/kS;

.field public h:Lcom/android/tools/r8/internal/lI;

.field public i:I

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/LinkedList;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/FT;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/tools/r8/internal/FT;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/android/tools/r8/internal/CH;

.field public final o:Ljava/util/ArrayList;

.field public p:I

.field public q:[I

.field public final r:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/ns0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/mS;->d:I

    new-instance v1, Lcom/android/tools/r8/internal/lI;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lI;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/tools/r8/internal/CH;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/tools/r8/internal/mS;->p:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->q:[I

    iput-object p1, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IT;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/android/tools/r8/internal/IT;->b:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NJ;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/FT;
    .locals 3

    .line 235
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    iget v0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p1

    .line 239
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 240
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v1

    .line 241
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 243
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    .line 244
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    if-eq v0, v1, :cond_5

    .line 245
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    .line 246
    iget p0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 p0, p0, 0x1

    if-ne v0, p0, :cond_4

    goto :goto_2

    .line 247
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/k3;)Lcom/android/tools/r8/internal/FT;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/fj;
    .locals 6

    .line 212
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 217
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/FH;

    .line 218
    iget v2, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iget v3, p1, Lcom/android/tools/r8/internal/dH;->h:I

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/FH;-><init>(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/aH;

    .line 221
    new-instance v3, Lcom/android/tools/r8/internal/WG;

    iget-object v2, v2, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 222
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    .line 224
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    goto :goto_1

    .line 225
    :cond_5
    iget v2, v0, Lcom/android/tools/r8/internal/FH;->c:I

    .line 226
    iget v3, p0, Lcom/android/tools/r8/internal/dH;->h:I

    if-ne v2, v3, :cond_6

    iget v3, p1, Lcom/android/tools/r8/internal/dH;->h:I

    if-ne v2, v3, :cond_6

    return-object v1

    .line 227
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 228
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 232
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/fj;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fj;-><init>(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V

    goto :goto_4

    .line 233
    :cond_8
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/fj;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fj;-><init>(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V

    .line 234
    :goto_4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/FT;ILjava/util/function/Predicate;)Ljava/util/Collection;
    .locals 5

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p1

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 17
    invoke-virtual {v1, p2, p1}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, p2, v3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 19
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 20
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 22
    :cond_6
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static a(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/Pe0;Lcom/android/tools/r8/internal/Pe0;I)V
    .locals 1

    if-gt p5, p0, :cond_3

    .line 1094
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result p0

    .line 1095
    iget-object p2, p1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 1096
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GT;

    .line 1097
    iget v0, v0, Lcom/android/tools/r8/internal/GT;->b:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    .line 1098
    :goto_0
    invoke-virtual {p3, p5}, Lcom/android/tools/r8/internal/Pe0;->a(I)I

    move-result p0

    if-ge v0, p0, :cond_3

    .line 1099
    invoke-virtual {p3, p5, v0, p1}, Lcom/android/tools/r8/internal/Pe0;->a(IILcom/android/tools/r8/internal/FT;)V

    .line 1100
    sget-boolean p0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p0, :cond_3

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/Pe0;->b(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1101
    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/Pe0;->a(I)I

    move-result p0

    invoke-virtual {p3, p5}, Lcom/android/tools/r8/internal/Pe0;->a(I)I

    move-result p1

    if-gt p0, p1, :cond_2

    goto :goto_1

    .line 1102
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1106
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 1107
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1108
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1109
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1110
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v8

    .line 1111
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 1112
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1113
    invoke-virtual {v1, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/eB;

    iget-object v12, v12, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 1114
    invoke-virtual {v7, v12}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1115
    :cond_2
    invoke-virtual {v1, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/eB;

    iget-object v12, v12, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 1116
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1117
    :goto_0
    sget-boolean v12, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v12, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1118
    :cond_4
    :goto_1
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/f60;

    .line 1119
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1121
    iget-object v12, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 1122
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 1123
    invoke-virtual {v6, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1124
    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1125
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 1126
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 1127
    iget-object v11, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 1128
    iget v11, v11, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/2addr v11, v8

    .line 1129
    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, -0x1

    .line 1130
    :cond_6
    invoke-static {v10, v4, v11, v2, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V

    goto :goto_3

    .line 1131
    :cond_7
    iget-object v6, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_0

    .line 1132
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1133
    instance-of v10, v8, Lcom/android/tools/r8/internal/lo0;

    if-eqz v10, :cond_8

    .line 1134
    move-object v10, v8

    check-cast v10, Lcom/android/tools/r8/internal/lo0;

    .line 1135
    iget-object v10, v10, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 1136
    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_a

    aget-object v13, v10, v12

    .line 1137
    invoke-virtual {v5, v13}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1138
    :cond_8
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1139
    iget v10, v6, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v10, v10, 0x1

    .line 1140
    invoke-static {v8, v4, v10, v2, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V

    .line 1141
    sget-boolean v10, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v10, :cond_a

    .line 1142
    iget-object v10, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 1143
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/EW$a;->a()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Arguments should be the only potentially unused local in CF"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1144
    :cond_a
    :goto_6
    invoke-virtual {v5, v8}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1145
    :cond_b
    iget-object v8, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 1146
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :cond_c
    :goto_7
    if-ge v11, v10, :cond_11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 1147
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1148
    sget-boolean v13, Lcom/android/tools/r8/internal/mS;->s:Z

    const v14, 0xffff

    if-nez v13, :cond_e

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->p2()I

    move-result v13

    .line 1149
    iget-object v15, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 1150
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result v15

    if-nez v15, :cond_e

    if-ne v13, v14, :cond_d

    goto :goto_8

    .line 1151
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1152
    :cond_e
    :goto_8
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 1153
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1154
    iget v13, v6, Lcom/android/tools/r8/internal/zE;->g:I

    .line 1155
    invoke-static {v12, v4, v13, v2, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V

    .line 1156
    :cond_f
    iget-object v13, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 1157
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1158
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->p2()I

    move-result v13

    .line 1159
    iget-object v15, v12, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 1160
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v12

    if-eqz v12, :cond_10

    if-ne v13, v14, :cond_10

    .line 1161
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 1162
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v14

    const/4 v9, 0x5

    if-le v14, v9, :cond_c

    .line 1163
    invoke-static {v12}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/NJ;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1164
    :cond_10
    new-instance v9, Lcom/android/tools/r8/internal/GT;

    .line 1165
    iget v12, v6, Lcom/android/tools/r8/internal/zE;->g:I

    .line 1166
    invoke-direct {v9, v12, v13}, Lcom/android/tools/r8/internal/GT;-><init>(II)V

    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/GT;)V

    goto :goto_7

    .line 1167
    :cond_11
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1168
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 1169
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 1170
    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1171
    iget v10, v6, Lcom/android/tools/r8/internal/zE;->g:I

    .line 1172
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    if-eq v9, v11, :cond_13

    add-int/lit8 v10, v10, 0x2

    .line 1173
    :cond_13
    invoke-static {v9, v4, v10, v2, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V

    goto :goto_9

    .line 1174
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v8, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    .line 1175
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    .line 1176
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1177
    :cond_15
    iget v8, v6, Lcom/android/tools/r8/internal/zE;->g:I

    .line 1178
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1179
    new-instance v10, Lcom/android/tools/r8/internal/sa1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/sa1;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1180
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :cond_16
    :goto_a
    if-ge v11, v10, :cond_19

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 1181
    sget-boolean v13, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v13, :cond_18

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_b

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1182
    :cond_18
    :goto_b
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 1183
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1184
    invoke-static {v12, v4, v8, v2, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V

    goto :goto_a

    .line 1185
    :cond_19
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    goto/16 :goto_4

    :cond_1a
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/hC;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Je0;Ljava/util/IdentityHashMap;)V
    .locals 19

    move-object/from16 v0, p2

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_7

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/FT;

    .line 39
    iget-object v7, v6, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    iget-object v9, v6, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 43
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    iget-object v6, v6, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/FT;

    .line 46
    sget-boolean v12, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v12, :cond_3

    .line 47
    iget-object v13, v11, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v13, v7, :cond_2

    goto :goto_2

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    if-nez v12, :cond_5

    .line 49
    iget-object v12, v11, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 50
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_5
    :goto_3
    iget-object v11, v11, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 53
    :cond_6
    new-instance v6, Lcom/android/tools/r8/internal/ek1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ek1;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 54
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/IT;

    .line 55
    iget v11, v10, Lcom/android/tools/r8/internal/IT;->b:I

    .line 56
    iget v10, v10, Lcom/android/tools/r8/internal/IT;->c:I

    .line 57
    new-instance v12, Lcom/android/tools/r8/internal/lS;

    .line 58
    invoke-interface {v0, v7, v11}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v13

    invoke-direct {v12, v7, v13, v11, v10}, Lcom/android/tools/r8/internal/lS;-><init>(Lcom/android/tools/r8/internal/xw0;III)V

    .line 59
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 60
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_20

    .line 61
    :cond_8
    new-instance v2, Lcom/android/tools/r8/internal/fk1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/fk1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 62
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/lS;

    .line 65
    new-instance v5, Lcom/android/tools/r8/internal/dH;

    const/16 v6, 0x10

    .line 66
    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 67
    new-instance v7, Lcom/android/tools/r8/internal/dH;

    .line 68
    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v8

    const/4 v9, 0x1

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 70
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    move-object/from16 v12, p3

    .line 71
    invoke-virtual {v12, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/eB;

    iget-object v13, v13, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-static {v13}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    if-eqz v9, :cond_d

    .line 72
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_a

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_a
    :goto_6
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 74
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 75
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_7

    .line 76
    :cond_b
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 77
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 78
    :cond_c
    :goto_7
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v9, 0x0

    goto :goto_9

    .line 79
    :cond_d
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/f60;

    .line 80
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 81
    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 82
    :cond_f
    :goto_9
    new-instance v14, Lcom/android/tools/r8/internal/gk1;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/gk1;-><init>()V

    invoke-interface {v11, v14}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 83
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    .line 84
    iget v15, v14, Lcom/android/tools/r8/internal/zE;->g:I

    .line 85
    new-instance v6, Lcom/android/tools/r8/internal/hk1;

    invoke-direct {v6, v13, v14}, Lcom/android/tools/r8/internal/hk1;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_a
    if-eqz v4, :cond_12

    .line 86
    iget v6, v4, Lcom/android/tools/r8/internal/lS;->e:I

    if-ge v6, v15, :cond_12

    .line 87
    iget-object v6, v4, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 88
    invoke-static {v14, v4}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/lS;

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    .line 91
    :cond_12
    new-instance v6, Lcom/android/tools/r8/internal/dH;

    .line 92
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v14

    .line 93
    invoke-direct {v6, v14}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 94
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_13
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/lS;

    .line 95
    iget-object v3, v15, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v13, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 96
    iget v3, v15, Lcom/android/tools/r8/internal/lS;->d:I

    iget-object v15, v15, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v6, v3, v15}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 97
    :cond_14
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 98
    iget-object v3, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 99
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    if-ne v3, v13, :cond_16

    :cond_15
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_12

    .line 100
    :cond_16
    new-instance v3, Lcom/android/tools/r8/internal/dH;

    .line 101
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 102
    invoke-direct {v3, v13}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 103
    iget-object v13, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    .line 104
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    instance-of v13, v13, Lcom/android/tools/r8/internal/bY;

    if-eqz v13, :cond_17

    .line 106
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    .line 107
    iget v13, v13, Lcom/android/tools/r8/internal/zE;->g:I

    goto :goto_c

    :cond_17
    const/4 v14, 0x0

    .line 108
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    .line 109
    iget v13, v13, Lcom/android/tools/r8/internal/zE;->g:I

    .line 110
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/lS;

    move-object/from16 v17, v4

    .line 111
    iget-object v4, v15, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v15, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-ne v4, v10, :cond_18

    .line 112
    iget-object v4, v15, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v4

    .line 113
    iget-object v4, v4, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .line 114
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    goto :goto_e

    :cond_18
    move-object/from16 v18, v5

    const/4 v5, 0x0

    .line 115
    iget-object v4, v15, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    .line 116
    :goto_e
    invoke-interface {v0, v4, v13}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    .line 117
    iget-object v15, v15, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v3, v4, v15}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_d

    :cond_19
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .line 118
    iput-object v3, v10, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    .line 119
    new-instance v4, Lcom/android/tools/r8/internal/dH;

    const/16 v13, 0x10

    .line 120
    invoke-direct {v4, v13}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 121
    new-instance v14, Lcom/android/tools/r8/internal/dH;

    .line 122
    invoke-direct {v14, v13}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 123
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/aH;

    .line 124
    new-instance v15, Lcom/android/tools/r8/internal/WG;

    .line 125
    iget-object v13, v13, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 126
    invoke-direct {v15, v13}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 127
    :goto_f
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/RG;

    .line 128
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v13}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j0;

    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v0, :cond_1a

    :goto_10
    move-object/from16 v0, p2

    const/4 v5, 0x0

    goto :goto_f

    .line 130
    :cond_1a
    invoke-interface {v13}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v4, v0, v5}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 131
    :cond_1b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 132
    new-instance v5, Lcom/android/tools/r8/internal/WG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 133
    :goto_11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/RG;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v15

    invoke-virtual {v3, v15}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/j0;

    .line 135
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v13, v15, :cond_1c

    goto :goto_11

    .line 136
    :cond_1c
    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v14, v13, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 137
    :cond_1d
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-static {v4, v14, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/fj;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 138
    invoke-interface {v11, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_15

    .line 139
    :goto_12
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1f

    .line 140
    iget-object v3, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    instance-of v3, v3, Lcom/android/tools/r8/internal/bY;

    if-nez v3, :cond_1e

    goto :goto_13

    .line 143
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_13
    if-nez v0, :cond_21

    .line 144
    iget-object v0, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_14

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_21
    :goto_14
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    .line 147
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 148
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 149
    iput-object v0, v10, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    :cond_22
    :goto_15
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    .line 150
    :cond_23
    :goto_16
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 151
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 152
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_26

    .line 153
    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v3, :cond_25

    .line 154
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 155
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_17

    .line 156
    :cond_24
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_25
    const/16 v0, 0x10

    goto/16 :goto_1f

    .line 157
    :cond_26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 158
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 159
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    .line 160
    :cond_28
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27

    .line 161
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/lS;

    .line 162
    iget-object v15, v14, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v15, v10, :cond_28

    .line 163
    sget-boolean v10, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v10, :cond_2a

    iget-object v10, v14, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    iget v13, v14, Lcom/android/tools/r8/internal/lS;->d:I

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v10, v13, :cond_29

    goto :goto_19

    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_2a
    :goto_19
    iget v10, v14, Lcom/android/tools/r8/internal/lS;->d:I

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    .line 165
    iget v10, v14, Lcom/android/tools/r8/internal/lS;->d:I

    iget-object v13, v14, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v5, v10, v13}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 166
    :cond_2b
    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v3, :cond_2d

    .line 167
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 168
    invoke-virtual {v10, v0}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_1a

    .line 169
    :cond_2c
    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 170
    :cond_2d
    instance-of v3, v0, Lcom/android/tools/r8/internal/cj;

    if-eqz v3, :cond_30

    .line 171
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 172
    sget-boolean v10, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v10, :cond_2f

    if-ne v3, v0, :cond_2e

    goto :goto_1b

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 173
    :cond_2f
    :goto_1b
    invoke-interface {v11}, Lcom/android/tools/r8/internal/EE;->remove()V

    .line 174
    :cond_30
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 175
    invoke-static {v3}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v10

    if-eqz v10, :cond_31

    goto/16 :goto_16

    .line 176
    :cond_31
    iget v10, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 177
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    .line 178
    :cond_32
    :goto_1c
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_33

    .line 179
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/lS;

    .line 180
    invoke-static {v3, v14}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z

    move-result v15

    if-nez v15, :cond_32

    .line 181
    invoke-interface {v13}, Ljava/util/ListIterator;->remove()V

    .line 182
    iget v15, v14, Lcom/android/tools/r8/internal/lS;->d:I

    invoke-virtual {v6, v15}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_32

    .line 183
    iget v15, v14, Lcom/android/tools/r8/internal/lS;->d:I

    iget-object v14, v14, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v5, v15, v14}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_33
    :goto_1d
    if-eqz v4, :cond_38

    .line 184
    iget v13, v4, Lcom/android/tools/r8/internal/lS;->e:I

    if-ge v13, v10, :cond_38

    .line 185
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-boolean v13, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v13, :cond_35

    iget v13, v4, Lcom/android/tools/r8/internal/lS;->d:I

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v13

    if-nez v13, :cond_34

    goto :goto_1e

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_35
    :goto_1e
    iget v13, v4, Lcom/android/tools/r8/internal/lS;->d:I

    iget-object v14, v4, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v6, v13, v14}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget v13, v4, Lcom/android/tools/r8/internal/lS;->d:I

    iget-object v4, v4, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v7, v13, v4}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/lS;

    goto :goto_1d

    :cond_37
    const/4 v4, 0x0

    goto :goto_1d

    .line 191
    :cond_38
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 192
    :cond_39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-static {v5, v7, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/fj;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 193
    invoke-interface {v11, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 194
    :cond_3a
    new-instance v5, Lcom/android/tools/r8/internal/dH;

    const/16 v0, 0x10

    .line 195
    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 196
    new-instance v7, Lcom/android/tools/r8/internal/dH;

    .line 197
    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    goto/16 :goto_16

    :goto_1f
    move v6, v0

    move-object/from16 v0, p2

    goto/16 :goto_5

    :cond_3b
    :goto_20
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/qI;I)V
    .locals 1

    .line 636
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 637
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/nI;->remove(I)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;ILjava/util/ArrayList;Lcom/android/tools/r8/internal/fB;)V
    .locals 3

    .line 248
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 249
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 250
    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 251
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x2

    .line 252
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 254
    iget v1, v1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    if-nez v2, :cond_1

    .line 256
    new-instance v2, Lcom/android/tools/r8/internal/FT;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/FT;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    if-gt v0, v1, :cond_6

    if-gt v1, p1, :cond_6

    .line 258
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 259
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/IT;

    invoke-direct {p1, v1, p2}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/IT;)V

    .line 260
    sget-boolean p1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p1, :cond_4

    .line 261
    iget p1, p3, Lcom/android/tools/r8/internal/FT;->s:I

    .line 262
    iget-object p2, p4, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 263
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result p2

    if-nez p2, :cond_4

    const p2, 0xffff

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 264
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 265
    :cond_4
    :goto_1
    iget-object p1, p4, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 266
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-nez p1, :cond_5

    .line 267
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->q2()I

    move-result p0

    .line 268
    new-instance p1, Lcom/android/tools/r8/internal/GT;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/internal/GT;-><init>(II)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/GT;)V

    :cond_5
    return-void

    .line 269
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/IT;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p2}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/IT;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 32
    iget-object p0, p0, Lcom/android/tools/r8/internal/FT;->d:Lcom/android/tools/r8/internal/FT;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NJ;)Z
    .locals 4

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    new-instance v1, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/k3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    new-instance v3, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/k3;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 271
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    instance-of p0, p0, Lcom/android/tools/r8/internal/bY;

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;)Z
    .locals 3

    .line 1186
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v1

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p0

    .line 1188
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1190
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1191
    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 1194
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1195
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1197
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 583
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 584
    instance-of v0, v0, Lcom/android/tools/r8/internal/ix;

    if-eqz v0, :cond_6

    .line 585
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    .line 586
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 589
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z
    .locals 6

    .line 201
    iget v0, p1, Lcom/android/tools/r8/internal/lS;->e:I

    iget v1, p1, Lcom/android/tools/r8/internal/lS;->f:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    .line 202
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 203
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-lt v2, v1, :cond_8

    const/4 v0, 0x0

    if-ne v2, v1, :cond_7

    .line 204
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v4, :cond_3

    goto :goto_1

    .line 206
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Lcom/android/tools/r8/internal/hx;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/tools/r8/internal/hx;

    .line 207
    iget-object v4, v4, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    if-ne v4, p1, :cond_2

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object p0

    .line 209
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v1, :cond_6

    goto :goto_1

    .line 210
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/android/tools/r8/internal/hx;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/android/tools/r8/internal/hx;

    .line 211
    iget-object v1, v1, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    if-ne v1, p1, :cond_5

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z
    .locals 1

    .line 199
    iget-object v0, p2, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 200
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/qI;I)V
    .locals 1

    .line 211
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 212
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/nI;->remove(I)Z

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 208
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    instance-of p0, p0, Lcom/android/tools/r8/internal/bY;

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    instance-of v0, p0, Lcom/android/tools/r8/internal/bY;

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/internal/FT;)Z
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(IZ)I
    .locals 6

    .line 1201
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 1202
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    if-eqz p2, :cond_0

    .line 1203
    new-instance v1, Lcom/android/tools/r8/internal/lI;

    new-instance p2, Lcom/android/tools/r8/internal/bk1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/bk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/lI;-><init>(Ljava/util/Comparator;)V

    .line 1204
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 1205
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    new-instance p2, Lcom/android/tools/r8/internal/iI;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    .line 1207
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1208
    invoke-interface {p2}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    goto :goto_0

    .line 1209
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    :goto_0
    move v2, v1

    :cond_2
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    if-eq v3, p1, :cond_6

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_2

    .line 1210
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1211
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/iI;->r()I

    move-result v4

    goto :goto_2

    .line 1212
    :cond_3
    iget v4, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/tools/r8/internal/mS;->i:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    if-ne v4, v1, :cond_5

    .line 1213
    iget v5, p0, Lcom/android/tools/r8/internal/mS;->c:I

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    move v1, v4

    goto :goto_0

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1214
    iget p2, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v0, p2, :cond_8

    .line 1215
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    move-result p2

    .line 1216
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_6

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1217
    :cond_8
    sget-boolean p2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p2, :cond_b

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p2

    if-eqz p2, :cond_9

    add-int p2, v2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p2

    if-nez p2, :cond_b

    .line 1218
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p2

    if-nez p2, :cond_a

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_5

    .line 1219
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Pe0;ZLcom/android/tools/r8/internal/Oe0;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-gt v2, p2, :cond_9

    .line 2
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Pe0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/Pe0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3, v2, p5}, Lcom/android/tools/r8/internal/Pe0;->a(ILcom/android/tools/r8/internal/Oe0;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_5

    .line 5
    iget v3, p0, Lcom/android/tools/r8/internal/mS;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    if-lt v2, p2, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {p3, v2, p4}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result v3

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, p1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/GT;

    .line 12
    iget v4, v4, Lcom/android/tools/r8/internal/GT;->b:I

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    if-le v3, v0, :cond_8

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_7

    return v2

    :cond_7
    move v1, v2

    move v0, v3

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Oe0;)I
    .locals 11

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p3

    move-object/from16 v5, p5

    .line 979
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Pe0;ZLcom/android/tools/r8/internal/Oe0;)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    return v3

    .line 980
    :cond_0
    new-instance v10, Lcom/android/tools/r8/internal/Re0;

    move-object v0, p4

    invoke-direct {v10, p4}, Lcom/android/tools/r8/internal/Re0;-><init>(Lcom/android/tools/r8/internal/Qe0;)V

    .line 981
    new-instance v1, Lcom/android/tools/r8/internal/xk1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/xk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    new-instance v2, Lcom/android/tools/r8/internal/yk1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/yk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v10

    move-object/from16 v8, p5

    .line 982
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/aI;ILcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Re0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v3

    .line 983
    new-instance v1, Lcom/android/tools/r8/internal/zk1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ak1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Ak1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 984
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/aI;ILcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Re0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v3

    .line 985
    new-instance v1, Lcom/android/tools/r8/internal/Bk1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Bk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ck1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Ck1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 986
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/aI;ILcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Re0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/CH;)I
    .locals 10

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 763
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    return p1

    .line 764
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/lI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    .line 765
    iget-object v2, v1, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    .line 766
    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/lI;-><init>(Ljava/util/Comparator;)V

    .line 767
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 768
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 769
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/TH;)Z

    if-eqz p2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/TH;)Z

    .line 771
    :cond_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 772
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 773
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/FT;

    .line 774
    iget v7, v7, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_2

    .line 775
    iget-object v8, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v8

    .line 776
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v8

    .line 777
    iget-object v9, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_5

    .line 778
    iget-object v8, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 779
    :cond_4
    iget v8, p0, Lcom/android/tools/r8/internal/mS;->c:I

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_5

    goto :goto_0

    .line 780
    :cond_5
    invoke-virtual {p0, v7, v1, p1}, Lcom/android/tools/r8/internal/mS;->a(IILcom/android/tools/r8/internal/FT;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_6
    move v7, v5

    :goto_1
    if-ne v7, v5, :cond_9

    .line 781
    :cond_7
    iget-object p2, p1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 782
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 783
    iget-object p2, p1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 784
    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/GT;

    .line 785
    iget p2, p2, Lcom/android/tools/r8/internal/GT;->c:I

    const/16 v2, 0xf

    if-ne p2, v2, :cond_8

    move p2, v6

    goto :goto_2

    :cond_8
    move p2, v3

    .line 786
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/mS;->a(IZ)I

    move-result v7

    .line 787
    invoke-virtual {p0, v7, v1, p1}, Lcom/android/tools/r8/internal/mS;->a(IILcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 788
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/2addr v1, v6

    .line 789
    :goto_3
    iget p2, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v1, p2, :cond_a

    .line 790
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 791
    :cond_a
    sget-boolean p2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p2, :cond_d

    .line 792
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    .line 793
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p1

    .line 794
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result p2

    if-nez p2, :cond_b

    .line 795
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p2

    if-ne v7, p2, :cond_c

    :cond_b
    if-eqz p1, :cond_d

    add-int/lit8 p1, v7, 0x1

    .line 796
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result p2

    if-nez p2, :cond_d

    .line 797
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p2

    if-ne p1, p2, :cond_c

    goto :goto_4

    .line 798
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_4
    return v7
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;I)I
    .locals 1

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    sget-boolean p2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 276
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 277
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 278
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result p1

    return p1

    .line 280
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    return p1
.end method

.method public final synthetic a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v0

    .line 1221
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1222
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/aI;ILcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Re0;Lcom/android/tools/r8/internal/Oe0;)I
    .locals 6

    .line 972
    invoke-interface {p1, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 973
    :goto_0
    invoke-interface {p2, p3, p4}, Lcom/android/tools/r8/internal/aI;->a(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 974
    iget-object p1, p7, Lcom/android/tools/r8/internal/Re0;->b:Ljava/util/BitSet;

    .line 975
    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move-object v3, p7

    move v4, p6

    move-object v5, p8

    .line 976
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Pe0;ZLcom/android/tools/r8/internal/Oe0;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p3, p1, :cond_1

    .line 977
    sget-boolean p2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-eqz p2, :cond_0

    return v0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    iget-object p3, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 978
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unexpected attempt to take blocked register "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    move p3, p1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public final a()Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 281
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_1

    iget v2, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 282
    :cond_1
    :goto_0
    iput-object v1, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 283
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 284
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Prepare"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    const v2, 0xffff

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    if-eqz p2, :cond_c

    .line 285
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/lI;->clear()V

    const/4 v6, -0x1

    .line 286
    iput v6, v0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 287
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 288
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 289
    iput v5, v6, Lcom/android/tools/r8/internal/CH;->c:I

    .line 290
    iput v4, v0, Lcom/android/tools/r8/internal/mS;->p:I

    .line 291
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 292
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->clear()V

    .line 293
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_9

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/FT;

    .line 295
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v9, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    iget-object v11, v9, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v5

    :cond_2
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/tools/r8/internal/FT;

    .line 298
    iget-object v15, v14, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v14, v14, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/GT;

    .line 300
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/GT;)V

    goto :goto_2

    .line 301
    :cond_3
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 302
    iget-object v11, v9, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v5

    :goto_3
    if-ge v12, v11, :cond_4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/IT;

    .line 304
    invoke-virtual {v9, v13}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/IT;)V

    goto :goto_3

    .line 305
    :cond_4
    iget-object v10, v9, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 306
    iput v2, v9, Lcom/android/tools/r8/internal/FT;->s:I

    .line 307
    iget-object v10, v9, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/GT;

    .line 308
    iget v11, v11, Lcom/android/tools/r8/internal/GT;->c:I

    .line 309
    iget v12, v9, Lcom/android/tools/r8/internal/FT;->s:I

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v9, Lcom/android/tools/r8/internal/FT;->s:I

    goto :goto_4

    .line 310
    :cond_5
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 311
    invoke-virtual {v9, v5}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 312
    :cond_6
    iput v4, v9, Lcom/android/tools/r8/internal/FT;->k:I

    .line 313
    iput v4, v9, Lcom/android/tools/r8/internal/FT;->l:I

    .line 314
    iput-boolean v5, v9, Lcom/android/tools/r8/internal/FT;->r:Z

    .line 315
    sget-boolean v10, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v10, :cond_8

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 316
    :cond_8
    :goto_5
    iput-object v3, v9, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    .line 317
    iput-boolean v5, v9, Lcom/android/tools/r8/internal/FT;->o:Z

    goto/16 :goto_1

    .line 318
    :cond_9
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v6, v6, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 319
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 320
    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 321
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 322
    invoke-static {v8}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 323
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_6

    .line 324
    :cond_c
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    .line 325
    iget v6, v0, Lcom/android/tools/r8/internal/mS;->c:I

    sub-int/2addr v6, v7

    .line 326
    iput v6, v0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v6

    .line 328
    iget-object v8, v6, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v6, v6, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v6

    move v8, v5

    .line 329
    :goto_7
    iget-object v9, v6, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 330
    iget-object v9, v6, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 331
    check-cast v9, Lcom/android/tools/r8/internal/FT;

    .line 332
    invoke-virtual {v0, v8, v9}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 333
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_7

    .line 334
    :cond_d
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 335
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    iget-object v8, v0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v8, "Prelude"

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v6

    .line 338
    iget-object v8, v6, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v6, v6, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v6

    .line 339
    :goto_8
    iget-object v8, v6, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 340
    iget-object v8, v6, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 341
    check-cast v8, Lcom/android/tools/r8/internal/FT;

    .line 342
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_f

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 343
    :cond_f
    :goto_9
    iput-boolean v7, v8, Lcom/android/tools/r8/internal/FT;->r:Z

    .line 344
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    iget v10, v8, Lcom/android/tools/r8/internal/FT;->s:I

    .line 346
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v9

    if-nez v9, :cond_10

    .line 347
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 348
    :cond_10
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 349
    iget v9, v8, Lcom/android/tools/r8/internal/FT;->k:I

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v10, v7

    .line 350
    iget v9, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-ge v10, v9, :cond_11

    .line 351
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 352
    :cond_11
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v9, v8, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 354
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v9

    if-le v9, v7, :cond_15

    .line 355
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->a()Lcom/android/tools/r8/internal/GT;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 356
    iget-object v10, v8, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 357
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v5

    :cond_12
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/GT;

    .line 358
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/GT;->a()Z

    move-result v12

    if-eqz v12, :cond_12

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    if-ne v11, v7, :cond_14

    .line 359
    iget v9, v9, Lcom/android/tools/r8/internal/GT;->b:I

    .line 360
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v8, v9, v10}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v9

    goto :goto_b

    .line 361
    :cond_14
    iget-object v9, v8, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 362
    iget-object v9, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 363
    iget v9, v9, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/2addr v9, v7

    .line 364
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 365
    invoke-virtual {v8, v9, v10}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v9

    .line 366
    :goto_b
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_15
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    goto/16 :goto_8

    .line 368
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->o()Z

    move-result v6

    .line 369
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/mS;->a(Z)V

    .line 370
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 371
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v8, "Process all unhandled"

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 372
    :cond_17
    :goto_c
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-nez v6, :cond_2c

    .line 373
    sget-boolean v6, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v6, :cond_18

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;)V

    .line 374
    :cond_18
    iget-object v13, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v13}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/FT;

    .line 375
    iget-boolean v14, v13, Lcom/android/tools/r8/internal/FT;->r:Z

    if-eqz v14, :cond_1a

    if-nez v6, :cond_17

    .line 376
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_c

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 377
    :cond_1a
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/mS;->n(Lcom/android/tools/r8/internal/FT;)V

    .line 378
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/mS;->o(Lcom/android/tools/r8/internal/FT;)V

    .line 379
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v14, "Linked"

    invoke-virtual {v6, v14}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 380
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/FT;)V

    .line 381
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 382
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_c

    .line 383
    :cond_1b
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v14, "Advance state"

    invoke-virtual {v6, v14}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 384
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v6

    .line 385
    iget-object v14, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 386
    :cond_1c
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 387
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/FT;

    .line 388
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v11

    if-lt v6, v11, :cond_1e

    .line 389
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 390
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    .line 391
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v11

    if-ne v6, v11, :cond_1c

    .line 392
    iget-object v11, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 393
    iget v3, v15, Lcom/android/tools/r8/internal/FT;->k:I

    .line 394
    invoke-virtual {v11, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 395
    iget-object v3, v15, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 397
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 398
    iget v11, v15, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr v11, v7

    .line 399
    invoke-virtual {v3, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :cond_1d
    :goto_e
    const/4 v3, 0x0

    goto :goto_d

    .line 400
    :cond_1e
    invoke-virtual {v15, v6}, Lcom/android/tools/r8/internal/FT;->b(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 401
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 402
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_20

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 403
    :cond_20
    :goto_f
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_e

    .line 405
    :cond_21
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    :cond_22
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/FT;

    .line 408
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v14

    if-lt v6, v14, :cond_23

    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 410
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v14

    if-ne v6, v14, :cond_22

    .line 411
    iget-object v14, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 412
    iget v15, v11, Lcom/android/tools/r8/internal/FT;->k:I

    .line 413
    invoke-virtual {v14, v15}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 414
    iget-object v14, v11, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v14

    .line 415
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 416
    iget-object v14, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 417
    iget v11, v11, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr v11, v7

    .line 418
    invoke-virtual {v14, v11}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_10

    .line 419
    :cond_23
    invoke-virtual {v11, v6}, Lcom/android/tools/r8/internal/FT;->b(I)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 421
    sget-boolean v14, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v14, :cond_25

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v14

    if-eqz v14, :cond_24

    goto :goto_11

    :cond_24
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 422
    :cond_25
    :goto_11
    iget-object v14, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v14, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_10

    .line 424
    :cond_26
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 425
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v6, "Alloc single"

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 426
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/mS;->c(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, v0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 427
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_29

    if-eq v6, v7, :cond_28

    if-eq v6, v10, :cond_28

    if-eq v6, v9, :cond_28

    if-ne v6, v8, :cond_27

    move v6, v2

    goto :goto_12

    .line 428
    :cond_27
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_28
    const/16 v6, 0xff

    goto :goto_12

    :cond_29
    const/16 v6, 0xf

    :goto_12
    if-le v3, v6, :cond_2a

    goto :goto_13

    .line 429
    :cond_2a
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 430
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    .line 431
    iput v5, v3, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 432
    :cond_2b
    :goto_13
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 433
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move v3, v5

    goto :goto_14

    .line 434
    :cond_2c
    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 435
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_2d

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;)V

    :cond_2d
    move v3, v7

    .line 436
    :goto_14
    iget-object v6, v0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-eqz v3, :cond_52

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->l()Lcom/android/tools/r8/internal/MD;

    move-result-object v6

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->m()[I

    move-result-object v11

    iput-object v11, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    .line 439
    iget-object v11, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v11

    if-eqz v11, :cond_2e

    goto/16 :goto_19

    .line 440
    :cond_2e
    new-instance v11, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    .line 441
    iput v4, v11, Lcom/android/tools/r8/internal/x1;->b:I

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v13

    .line 443
    iget-object v14, v13, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    iget-object v13, v13, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v14, v13}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v13

    .line 444
    :goto_15
    iget-object v14, v13, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_34

    .line 445
    iget-object v14, v13, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 446
    check-cast v14, Lcom/android/tools/r8/internal/FT;

    .line 447
    iget v15, v14, Lcom/android/tools/r8/internal/FT;->k:I

    .line 448
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v16

    add-int v16, v16, v15

    add-int/lit8 v15, v16, -0x1

    .line 449
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result v15

    .line 450
    sget-boolean v16, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v16, :cond_30

    iget-object v5, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    iget v12, v14, Lcom/android/tools/r8/internal/FT;->s:I

    .line 452
    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 453
    iget-object v5, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 454
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 455
    iget v5, v14, Lcom/android/tools/r8/internal/FT;->k:I

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v12

    add-int/2addr v12, v5

    sub-int/2addr v12, v7

    .line 456
    iget v5, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-ge v12, v5, :cond_2f

    goto :goto_16

    .line 457
    :cond_2f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 458
    :cond_30
    :goto_16
    iget-object v5, v14, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 459
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v12, :cond_33

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, v17

    check-cast v8, Lcom/android/tools/r8/internal/FT;

    .line 460
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v17

    if-nez v17, :cond_32

    .line 461
    iget v9, v8, Lcom/android/tools/r8/internal/FT;->s:I

    if-gt v15, v9, :cond_32

    .line 462
    iget v9, v8, Lcom/android/tools/r8/internal/FT;->k:I

    iget v10, v14, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v9, v10, :cond_32

    .line 463
    invoke-virtual {v11, v9, v8}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 464
    iput v4, v8, Lcom/android/tools/r8/internal/FT;->k:I

    .line 465
    iput v4, v8, Lcom/android/tools/r8/internal/FT;->l:I

    .line 466
    iget v9, v14, Lcom/android/tools/r8/internal/FT;->k:I

    .line 467
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 468
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_32

    .line 469
    iget-boolean v8, v8, Lcom/android/tools/r8/internal/FT;->m:Z

    if-nez v8, :cond_31

    goto :goto_18

    .line 470
    :cond_31
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_32
    :goto_18
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto :goto_17

    :cond_33
    const v2, 0xffff

    const/4 v5, 0x0

    goto/16 :goto_15

    .line 471
    :cond_34
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/qd0;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 472
    new-instance v2, Lcom/android/tools/r8/internal/cw0;

    invoke-direct {v2, v0, v11}, Lcom/android/tools/r8/internal/cw0;-><init>(Lcom/android/tools/r8/internal/mS;Lcom/android/tools/r8/internal/qd0;)V

    goto :goto_1a

    :cond_35
    :goto_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_54

    .line 473
    iget-object v5, v6, Lcom/android/tools/r8/internal/MD;->a:Lcom/android/tools/r8/internal/mS;

    .line 474
    iget-object v5, v5, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 475
    iget-object v5, v5, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 476
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    .line 477
    :cond_37
    :goto_1b
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 478
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 479
    invoke-static {v9}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 480
    invoke-interface {v8}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_1b

    .line 481
    :cond_38
    iget-object v5, v6, Lcom/android/tools/r8/internal/MD;->a:Lcom/android/tools/r8/internal/mS;

    .line 482
    iget v8, v5, Lcom/android/tools/r8/internal/mS;->p:I

    if-eq v8, v4, :cond_39

    sub-int/2addr v8, v7

    .line 483
    iput v8, v5, Lcom/android/tools/r8/internal/mS;->i:I

    .line 484
    iput v4, v5, Lcom/android/tools/r8/internal/mS;->p:I

    .line 485
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->l()Lcom/android/tools/r8/internal/MD;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v19, v6

    move-object v6, v5

    move-object/from16 v5, v19

    .line 486
    :goto_1c
    iget v9, v6, Lcom/android/tools/r8/internal/MD;->b:I

    .line 487
    iget v5, v5, Lcom/android/tools/r8/internal/MD;->b:I

    if-le v9, v5, :cond_44

    .line 488
    sget-boolean v5, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v5, :cond_3b

    const/4 v5, 0x5

    if-ge v8, v5, :cond_3a

    goto :goto_1d

    :cond_3a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 489
    :cond_3b
    :goto_1d
    iget-object v5, v2, Lcom/android/tools/r8/internal/cw0;->a:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v5

    .line 490
    iget-object v9, v5, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    iget-object v5, v5, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v9, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v5

    const/4 v9, 0x0

    .line 491
    :cond_3c
    iget-object v10, v5, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 492
    iget-object v10, v5, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 493
    check-cast v10, Lcom/android/tools/r8/internal/FT;

    .line 494
    iget-object v10, v10, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 495
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v11, :cond_3c

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/FT;

    .line 496
    iget-object v14, v2, Lcom/android/tools/r8/internal/cw0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v4, :cond_3d

    goto :goto_1f

    .line 497
    :cond_3d
    iget-object v15, v2, Lcom/android/tools/r8/internal/cw0;->a:Lcom/android/tools/r8/internal/mS;

    .line 498
    iget v4, v13, Lcom/android/tools/r8/internal/FT;->k:I

    .line 499
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v18

    add-int v18, v18, v4

    add-int/lit8 v4, v18, -0x1

    .line 500
    invoke-virtual {v15, v4}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result v4

    .line 501
    iget v15, v13, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v4, v15, :cond_3e

    :goto_1f
    const/4 v4, 0x0

    goto :goto_20

    :cond_3e
    const/high16 v4, -0x80000000

    .line 502
    iput v4, v13, Lcom/android/tools/r8/internal/FT;->k:I

    .line 503
    iput v4, v13, Lcom/android/tools/r8/internal/FT;->l:I

    .line 504
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 505
    iget-object v4, v2, Lcom/android/tools/r8/internal/cw0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4, v13}, Lcom/android/tools/r8/internal/qd0;->c(Ljava/lang/Object;)I

    move v4, v7

    :goto_20
    or-int/2addr v9, v4

    const/high16 v4, -0x80000000

    goto :goto_1e

    :cond_3f
    if-eqz v9, :cond_44

    .line 506
    iget-object v4, v6, Lcom/android/tools/r8/internal/MD;->a:Lcom/android/tools/r8/internal/mS;

    .line 507
    iget-object v4, v4, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 508
    iget-object v4, v4, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 509
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 510
    :cond_41
    :goto_21
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 511
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 512
    invoke-static {v9}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 513
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_21

    .line 514
    :cond_42
    iget-object v4, v6, Lcom/android/tools/r8/internal/MD;->a:Lcom/android/tools/r8/internal/mS;

    .line 515
    iget v5, v4, Lcom/android/tools/r8/internal/mS;->p:I

    const/high16 v9, -0x80000000

    if-eq v5, v9, :cond_43

    add-int/lit8 v5, v5, -0x1

    .line 516
    iput v5, v4, Lcom/android/tools/r8/internal/mS;->i:I

    .line 517
    iput v9, v4, Lcom/android/tools/r8/internal/mS;->p:I

    .line 518
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->l()Lcom/android/tools/r8/internal/MD;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    move-object v6, v4

    move v4, v9

    goto/16 :goto_1c

    .line 519
    :cond_44
    iget-object v2, v2, Lcom/android/tools/r8/internal/cw0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qd0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 520
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_54

    if-nez v2, :cond_54

    .line 521
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->m()[I

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_45

    goto/16 :goto_29

    :cond_45
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 522
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->m()[I

    move-result-object v2

    .line 523
    sget-boolean v4, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v4, :cond_51

    if-nez v4, :cond_48

    .line 524
    iget-object v5, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    if-eqz v5, :cond_47

    goto :goto_22

    :cond_47
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_48
    :goto_22
    if-nez v4, :cond_4a

    if-eqz v2, :cond_49

    goto :goto_23

    .line 525
    :cond_49
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4a
    :goto_23
    if-nez v4, :cond_4c

    .line 526
    iget-object v4, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_4b

    goto :goto_24

    :cond_4b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4c
    :goto_24
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 527
    :goto_25
    iget-object v8, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    array-length v9, v8

    if-ge v4, v9, :cond_51

    .line 528
    aget v8, v8, v4

    if-eq v5, v8, :cond_4d

    move v5, v7

    goto :goto_26

    :cond_4d
    const/4 v5, 0x0

    .line 529
    :goto_26
    aget v9, v2, v4

    if-eq v6, v9, :cond_4e

    move v6, v7

    goto :goto_27

    :cond_4e
    const/4 v6, 0x0

    .line 530
    :goto_27
    sget-boolean v10, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v10, :cond_50

    if-eqz v5, :cond_50

    if-eqz v6, :cond_4f

    goto :goto_28

    :cond_4f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_50
    :goto_28
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    move v6, v9

    goto :goto_25

    .line 531
    :cond_51
    iput-object v2, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    goto :goto_29

    .line 532
    :cond_52
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_54

    .line 533
    sget-object v2, Lcom/android/tools/r8/internal/kS;->f:Lcom/android/tools/r8/internal/kS;

    if-eq v1, v2, :cond_53

    goto :goto_29

    .line 534
    :cond_53
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 535
    :cond_54
    :goto_29
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_62

    if-eq v2, v7, :cond_5b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_59

    const/4 v3, 0x3

    if-eq v2, v3, :cond_57

    const/4 v3, 0x4

    if-eq v2, v3, :cond_55

    goto/16 :goto_2c

    .line 536
    :cond_55
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_64

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    const v3, 0xffff

    if-gt v2, v3, :cond_56

    goto/16 :goto_2c

    .line 538
    :cond_56
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 539
    :cond_57
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_64

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    const/16 v3, 0xff

    if-gt v2, v3, :cond_58

    goto/16 :goto_2c

    .line 541
    :cond_58
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_59
    const/16 v3, 0xff

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    if-gt v2, v3, :cond_5a

    .line 543
    iget v2, v0, Lcom/android/tools/r8/internal/mS;->d:I

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->h()I

    move-result v3

    if-le v2, v3, :cond_64

    :cond_5a
    const/4 v1, 0x0

    .line 545
    iput v1, v0, Lcom/android/tools/r8/internal/mS;->d:I

    const/4 v1, 0x0

    .line 546
    iput-object v1, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    .line 547
    sget-object v1, Lcom/android/tools/r8/internal/kS;->e:Lcom/android/tools/r8/internal/kS;

    .line 548
    invoke-virtual {v0, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;

    move-result-object v1

    goto/16 :goto_2c

    .line 549
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    const/16 v3, 0xff

    if-gt v2, v3, :cond_61

    .line 550
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_5d

    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    sget-object v4, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    if-eq v3, v4, :cond_5d

    sget-object v4, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    if-eq v3, v4, :cond_5d

    sget-object v4, Lcom/android/tools/r8/internal/kS;->e:Lcom/android/tools/r8/internal/kS;

    if-ne v3, v4, :cond_5c

    goto :goto_2a

    .line 554
    :cond_5c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5d
    :goto_2a
    if-nez v2, :cond_5f

    .line 555
    iget v2, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-nez v2, :cond_5e

    goto :goto_2b

    :cond_5e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 556
    :cond_5f
    :goto_2b
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 557
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 558
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v2

    if-nez v2, :cond_60

    goto :goto_2c

    .line 559
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->h()I

    move-result v2

    iput v2, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-lez v2, :cond_64

    const/4 v2, 0x0

    .line 560
    iput-object v2, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    .line 561
    sget-object v1, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    .line 562
    invoke-virtual {v0, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;

    move-result-object v1

    goto :goto_2c

    :cond_61
    const/4 v2, 0x0

    .line 563
    iput-object v2, v0, Lcom/android/tools/r8/internal/mS;->q:[I

    .line 564
    sget-object v1, Lcom/android/tools/r8/internal/kS;->f:Lcom/android/tools/r8/internal/kS;

    .line 565
    invoke-virtual {v0, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;

    move-result-object v1

    goto :goto_2c

    :cond_62
    if-eqz v3, :cond_63

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    const/16 v3, 0xf

    if-gt v2, v3, :cond_63

    .line 567
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 568
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2c

    .line 569
    :cond_63
    sget-object v1, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    .line 570
    invoke-virtual {v0, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;

    move-result-object v1

    .line 571
    :cond_64
    :goto_2c
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_66

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v3

    sub-int/2addr v3, v7

    const/16 v4, 0xf

    if-gt v3, v4, :cond_65

    goto :goto_2d

    .line 573
    :cond_65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_66
    :goto_2d
    if-nez v2, :cond_69

    .line 574
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    sget-object v3, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    if-eq v1, v3, :cond_67

    sget-object v3, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    if-eq v1, v3, :cond_67

    sget-object v3, Lcom/android/tools/r8/internal/kS;->e:Lcom/android/tools/r8/internal/kS;

    if-ne v1, v3, :cond_69

    .line 576
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v3

    sub-int/2addr v3, v7

    const/16 v4, 0xff

    if-gt v3, v4, :cond_68

    goto :goto_2e

    .line 577
    :cond_68
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_69
    :goto_2e
    if-nez v2, :cond_6b

    .line 578
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    sget-object v2, Lcom/android/tools/r8/internal/kS;->f:Lcom/android/tools/r8/internal/kS;

    if-ne v1, v2, :cond_6b

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    sub-int/2addr v2, v7

    const v3, 0xffff

    if-gt v2, v3, :cond_6a

    goto :goto_2f

    .line 581
    :cond_6a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 582
    :cond_6b
    :goto_2f
    new-instance v2, Lcom/android/tools/r8/internal/fY;

    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/fY;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fY;->a()V

    return-object v1
.end method

.method public final a(I)V
    .locals 2

    .line 1198
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->i:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    goto :goto_0

    .line 1200
    :cond_0
    iput p1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/FT;)V
    .locals 5

    .line 943
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 944
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 945
    iget-object p1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 946
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 947
    iget-object v3, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 948
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v4

    if-nez v4, :cond_2

    .line 949
    iget-object v4, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v3, p2, v4}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    .line 950
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 951
    iget-object v3, v1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 952
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 953
    iget-object v4, v1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 954
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 955
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    .line 956
    iget v4, v4, Lcom/android/tools/r8/internal/zE;->g:I

    .line 957
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v3

    .line 958
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v4

    if-nez v4, :cond_3

    .line 959
    iget-object v4, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v3, p2, v4}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 960
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 961
    iget-object v0, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v0, p2, :cond_5

    .line 962
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    .line 963
    iget-object v0, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 964
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 965
    iget-object v1, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 966
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 967
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 968
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    .line 969
    iget v3, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 970
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v1

    .line 971
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p2, v3}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;)V
    .locals 6

    .line 638
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Extract list"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 639
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    .line 640
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 641
    new-instance v1, Lcom/android/tools/r8/internal/ok1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ok1;-><init>(Lcom/android/tools/r8/internal/NJ;)V

    .line 642
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 644
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Prelude"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 645
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Copy free registers"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 646
    new-instance v1, Lcom/android/tools/r8/internal/lI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    .line 647
    iget-object v3, v2, Lcom/android/tools/r8/internal/lI;->g:Lcom/android/tools/r8/internal/gI;

    .line 648
    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/lI;-><init>(Ljava/util/Comparator;)V

    .line 649
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 650
    iget v2, p0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 651
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 652
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Overlaps active"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 653
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 654
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/nk1;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/nk1;-><init>(Lcom/android/tools/r8/internal/FT;)V

    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 655
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/mS;->e(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 659
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Remove intervals from unhandled"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 660
    new-instance v3, Lcom/android/tools/r8/internal/pk1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pk1;-><init>()V

    invoke-interface {v0, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 661
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 662
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 663
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Allocate"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 664
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/List;Lcom/android/tools/r8/internal/NJ;)V

    .line 665
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 666
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Postlude"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 667
    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 668
    iget p1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v2, p1, :cond_3

    .line 669
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    goto :goto_1

    .line 670
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 671
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Qe0;)V
    .locals 9

    .line 1087
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    const/4 v2, 0x2

    .line 1088
    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 1090
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1091
    :cond_1
    iget v2, v1, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v2, p2, :cond_0

    .line 1092
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1093
    new-instance v8, Lcom/android/tools/r8/internal/wk1;

    move-object v2, v8

    move v3, p2

    move-object v4, v1

    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/wk1;-><init>(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/Pe0;Lcom/android/tools/r8/internal/Pe0;)V

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 987
    sget-boolean v4, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 988
    :cond_1
    :goto_0
    new-instance v4, Lcom/android/tools/r8/internal/CH;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 989
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    if-eqz v3, :cond_3

    add-int/lit8 v6, v2, 0x1

    .line 990
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 991
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 992
    iget-object v6, v1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-eq v1, v6, :cond_4

    .line 993
    new-instance v7, Lcom/android/tools/r8/internal/ik1;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/internal/ik1;-><init>(Lcom/android/tools/r8/internal/TH;)V

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    .line 994
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 995
    iget-object v7, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 996
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 997
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/FT;

    .line 998
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/mS;->m(Lcom/android/tools/r8/internal/FT;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 999
    :cond_7
    :goto_3
    invoke-virtual {v8, v2, v3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1000
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 1001
    invoke-virtual {v0, v8, v4}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/CH;)I

    move-result v10

    .line 1002
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v8, v11, v12}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v11

    .line 1004
    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 1005
    invoke-virtual {v11, v5}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 1006
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    if-nez v9, :cond_9

    .line 1007
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_4
    if-nez v9, :cond_b

    .line 1008
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1009
    :cond_b
    :goto_5
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v12, v8, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 1011
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1012
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v12

    .line 1013
    iget-object v13, v8, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 1014
    iget-object v13, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 1015
    iget v13, v13, Lcom/android/tools/r8/internal/zE;->g:I

    if-ne v12, v13, :cond_c

    .line 1016
    iget-object v12, v8, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 1017
    invoke-virtual {v12}, Ljava/util/TreeSet;->size()I

    move-result v12

    if-ne v12, v5, :cond_c

    .line 1018
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 1019
    :cond_c
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1020
    iget-object v12, v8, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 1021
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_17

    if-nez v9, :cond_e

    .line 1022
    iget-boolean v8, v11, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v8, :cond_d

    goto :goto_6

    .line 1023
    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_6
    if-nez v9, :cond_10

    .line 1024
    iget-object v8, v11, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 1025
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1026
    :cond_10
    :goto_7
    iget-object v8, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 1027
    iget v8, v8, Lcom/android/tools/r8/internal/GT;->b:I

    .line 1028
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8, v9}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v8

    .line 1029
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1030
    invoke-virtual {v11, v13}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 1031
    :cond_11
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v9, v5

    :goto_8
    if-eqz v9, :cond_5

    .line 1032
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v9

    .line 1033
    iget-object v11, v8, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 1034
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/GT;

    .line 1035
    iget v14, v12, Lcom/android/tools/r8/internal/GT;->b:I

    sub-int v15, v14, v9

    const/16 v13, 0x16

    if-le v15, v13, :cond_14

    add-int/lit8 v9, v9, 0x2

    .line 1036
    iget-object v11, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v8, v9, v11}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v8

    .line 1037
    iget v9, v12, Lcom/android/tools/r8/internal/GT;->b:I

    .line 1038
    rem-int/lit8 v11, v9, 0x2

    if-ne v11, v5, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v9, v9, -0x1

    .line 1039
    :goto_a
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v11

    if-le v9, v11, :cond_13

    .line 1040
    invoke-virtual {v0, v10, v8}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 1041
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 1042
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    iget v9, v12, Lcom/android/tools/r8/internal/GT;->b:I

    .line 1044
    iget-object v11, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v8, v9, v11}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v8

    .line 1045
    :cond_13
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v9, v5

    :goto_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_14
    move v9, v14

    const/4 v13, 0x0

    goto :goto_9

    :cond_15
    const/4 v9, 0x0

    goto :goto_b

    .line 1046
    :cond_16
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    .line 1047
    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    goto/16 :goto_2

    .line 1048
    :cond_17
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v8

    if-eqz v8, :cond_20

    if-nez v9, :cond_19

    .line 1049
    iget-boolean v8, v11, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v8, :cond_18

    goto :goto_c

    .line 1050
    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_19
    :goto_c
    if-nez v9, :cond_1b

    .line 1051
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1052
    :cond_1b
    :goto_d
    iget-object v8, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 1053
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 1054
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1055
    iget-object v10, v11, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 1056
    iget v12, v10, Lcom/android/tools/r8/internal/FT;->k:I

    .line 1057
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v10

    add-int/2addr v10, v12

    sub-int/2addr v10, v5

    .line 1058
    iget v12, v0, Lcom/android/tools/r8/internal/mS;->d:I

    if-ge v10, v12, :cond_1c

    goto :goto_f

    .line 1059
    :cond_1c
    iget v8, v8, Lcom/android/tools/r8/internal/GT;->b:I

    .line 1060
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8, v10}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v8

    if-nez v9, :cond_1e

    if-eq v8, v11, :cond_1d

    goto :goto_e

    .line 1061
    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1062
    :cond_1e
    :goto_e
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1063
    :cond_1f
    :goto_f
    iget-object v8, v11, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 1064
    iget v8, v8, Lcom/android/tools/r8/internal/FT;->k:I

    .line 1065
    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->e(I)V

    const/4 v8, 0x0

    .line 1066
    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    goto/16 :goto_2

    :cond_20
    if-nez v9, :cond_22

    .line 1067
    iget-boolean v8, v11, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v8, :cond_21

    goto :goto_10

    .line 1068
    :cond_21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_22
    :goto_10
    if-nez v9, :cond_24

    .line 1069
    iget-object v8, v11, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 1070
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_11

    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1071
    :cond_24
    :goto_11
    iget-object v8, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1072
    iget v10, v11, Lcom/android/tools/r8/internal/FT;->k:I

    .line 1073
    iget v8, v8, Lcom/android/tools/r8/internal/GT;->b:I

    .line 1074
    iget-object v12, v0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v11, v8, v12}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v8

    if-eq v8, v11, :cond_25

    .line 1075
    iget-object v9, v0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_25
    if-nez v9, :cond_27

    .line 1076
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_12

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1077
    :cond_27
    :goto_12
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 1078
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    .line 1079
    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    goto/16 :goto_2

    .line 1080
    :cond_28
    iget-object v1, v0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1081
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_2b

    .line 1082
    iget-object v1, v0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v1

    if-ne v2, v1, :cond_2a

    :cond_29
    if-eqz v3, :cond_2b

    add-int/lit8 v1, v2, 0x1

    .line 1084
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v2

    if-ne v1, v2, :cond_2a

    goto :goto_13

    .line 1086
    :cond_2a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2b
    :goto_13
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;ILjava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kS;)V
    .locals 5

    .line 615
    new-instance v0, Lcom/android/tools/r8/internal/lI;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lI;-><init>()V

    const/4 v1, 0x0

    .line 616
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v1, v2, :cond_0

    .line 617
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FT;

    .line 619
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mS;->m(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 620
    :cond_2
    :goto_2
    new-instance v3, Lcom/android/tools/r8/internal/Zj1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Zj1;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    goto :goto_1

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FT;

    .line 622
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 624
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 625
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v3, :cond_5

    goto :goto_4

    .line 626
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 627
    :cond_6
    :goto_4
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 628
    iget v4, v3, Lcom/android/tools/r8/internal/FT;->k:I

    .line 629
    iget v2, v2, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v4, v2, :cond_4

    .line 630
    new-instance v2, Lcom/android/tools/r8/internal/kk1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/kk1;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    goto :goto_3

    .line 631
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 632
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    .line 633
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    .line 634
    :cond_8
    sget-boolean p1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_5
    if-nez p1, :cond_c

    .line 635
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/c0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_6
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/NJ;)V
    .locals 8

    .line 672
    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 673
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Prelude"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 674
    new-instance v1, Lcom/android/tools/r8/internal/lk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lk1;-><init>()V

    .line 675
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/util/List;Ljava/util/function/BiPredicate;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 676
    new-instance v4, Lcom/android/tools/r8/internal/mk1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/mk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 677
    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 678
    :goto_0
    iget-object v5, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-eqz v4, :cond_1

    .line 679
    iget-object p2, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 680
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    goto/16 :goto_d

    .line 681
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v5, "Not consecutive pinned args"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 682
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/FT;

    .line 683
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 684
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 685
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 686
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    if-lez p2, :cond_6

    add-int v4, v5, p2

    sub-int/2addr v4, v3

    const/16 v6, 0xf

    if-le v4, v6, :cond_6

    .line 687
    iget v4, p0, Lcom/android/tools/r8/internal/mS;->c:I

    .line 688
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 689
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int v6, v4, p2

    sub-int/2addr v6, v3

    .line 690
    iget v3, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-le v6, v3, :cond_5

    .line 691
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/mS;->a(I)V

    :cond_5
    move v3, v2

    :goto_3
    if-ge v3, p2, :cond_6

    .line 692
    iget-object v6, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int v7, v4, v3

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 693
    :cond_6
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Overlaps inactive"

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 694
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 695
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 696
    sget-boolean v4, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/tools/r8/internal/nk1;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/nk1;-><init>(Lcom/android/tools/r8/internal/FT;)V

    .line 697
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 698
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    goto :goto_4

    .line 699
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 700
    :cond_9
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 701
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mS;->e(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_4

    .line 702
    :cond_a
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 703
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Register range is free"

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    if-eqz v1, :cond_f

    .line 704
    iget-object p2, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 705
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    move v1, v2

    :goto_5
    if-ge v1, v5, :cond_e

    .line 706
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_c

    add-int v3, p2, v1

    .line 707
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v4

    if-eq v3, v4, :cond_b

    goto :goto_6

    .line 708
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 709
    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 710
    :cond_e
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 711
    iget-object p2, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 712
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    goto/16 :goto_c

    .line 713
    :cond_f
    :goto_7
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 714
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Exclude pinned args"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 715
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    .line 716
    iget-object v1, p2, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p2, p2, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, p2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p2

    .line 717
    :cond_10
    :goto_8
    iget-object v1, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 718
    iget-object v1, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 719
    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 721
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_12

    .line 722
    iget-object v3, v1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v1, v3, :cond_11

    goto :goto_9

    .line 723
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 724
    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 725
    iget-object v4, v4, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v6, v1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v4, v6, :cond_13

    goto :goto_a

    .line 726
    :cond_14
    iget-object v3, v1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 727
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v2

    :cond_15
    if-ge v6, v4, :cond_10

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/FT;

    .line 728
    invoke-virtual {v7, p1}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 729
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mS;->e(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_8

    .line 730
    :cond_16
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 731
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Exclude move exc"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 732
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 733
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 734
    iget-object p2, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 735
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/FT;->q:Z

    if-eqz p2, :cond_18

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->l(Lcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_b

    .line 737
    :cond_17
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    .line 738
    :cond_18
    :goto_b
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 739
    invoke-virtual {p0, v5, v2}, Lcom/android/tools/r8/internal/mS;->a(IZ)I

    move-result p2

    .line 740
    :goto_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 741
    :goto_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Assign regs"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 743
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 744
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_1d

    if-nez v1, :cond_1a

    .line 745
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_f

    :cond_19
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 746
    :cond_1a
    :goto_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    .line 747
    iget-object v2, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 748
    :cond_1b
    :goto_10
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 749
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 750
    check-cast v2, Lcom/android/tools/r8/internal/FT;

    .line 751
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_1b

    .line 752
    iget-object v3, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-eq v3, v2, :cond_1b

    .line 753
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 754
    iget v3, v0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 755
    iget-object v4, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    .line 756
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 757
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_10

    .line 758
    :cond_1c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 759
    :cond_1d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_e

    .line 760
    :cond_1e
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    new-instance v0, Lcom/android/tools/r8/internal/tk1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tk1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 592
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 593
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q0()Lcom/android/tools/r8/internal/bY;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 596
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 597
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 598
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 600
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 601
    iget v3, v3, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v3, v3, 0x2

    .line 602
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v3

    .line 603
    iget-object v4, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v3

    .line 605
    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    if-ge v3, v0, :cond_2

    .line 606
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 607
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v2

    goto :goto_1

    .line 608
    :cond_2
    iput-boolean v1, v2, Lcom/android/tools/r8/internal/FT;->r:Z

    .line 609
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/FT;->e(I)V

    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 612
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p1

    .line 613
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 614
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->a(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final a(IILcom/android/tools/r8/internal/FT;)Z
    .locals 5

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    return v0

    .line 799
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 800
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    .line 801
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 802
    :cond_1
    :goto_0
    iget-object v2, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 803
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 804
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 805
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->c:Lcom/android/tools/r8/internal/FT;

    .line 806
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 807
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 808
    iget-object p3, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    .line 809
    iget p3, p2, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne p1, p3, :cond_4

    .line 810
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    .line 811
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 812
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    :cond_4
    return v1

    .line 813
    :cond_5
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->c:Lcom/android/tools/r8/internal/FT;

    if-eqz p2, :cond_6

    .line 814
    iget-object v2, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 815
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 816
    :cond_6
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FT;

    .line 817
    iget-object v3, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 818
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    .line 819
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 820
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 821
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    .line 822
    iget p2, v2, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne p1, p2, :cond_9

    .line 823
    iget-object p2, v2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    .line 824
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 825
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    :cond_9
    return v1

    .line 826
    :cond_a
    iget-object p2, p3, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 827
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/FT;->q:Z

    if-eqz p2, :cond_c

    .line 828
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 829
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p2

    if-eq p1, p2, :cond_b

    .line 830
    iget-object p2, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    .line 831
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p2

    if-eqz p2, :cond_c

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v2

    if-ne p2, v2, :cond_c

    .line 832
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mS;->l(Lcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 833
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    return v1

    :cond_c
    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;)Z
    .locals 11

    .line 834
    new-instance v6, Lcom/android/tools/r8/internal/FH;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/FH;-><init>()V

    .line 835
    new-instance v7, Lcom/android/tools/r8/internal/kA;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/kA;-><init>()V

    .line 836
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 837
    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    move v2, v8

    :cond_0
    :goto_0
    const/4 v9, 0x1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 839
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    iget v3, v3, Lcom/android/tools/r8/internal/FT;->k:I

    .line 841
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 842
    invoke-virtual {v7, v3, v9}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 844
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_4

    .line 845
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 846
    new-instance v1, Lcom/android/tools/r8/internal/jk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/jk1;-><init>()V

    .line 847
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    .line 848
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    .line 849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 850
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 851
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 852
    iget-object v1, v1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 853
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v8

    :cond_3
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 854
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 855
    iget v4, v4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 856
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 857
    invoke-virtual {v7, v4, v9}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    goto :goto_1

    .line 858
    :cond_4
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v8, [Lcom/android/tools/r8/internal/MY;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/MY;

    .line 859
    sget-object v1, Lcom/android/tools/r8/internal/NY;->b:Lcom/android/tools/r8/internal/NY;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 860
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/EC;->e:I

    .line 861
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 862
    sget-object v0, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    goto :goto_2

    .line 863
    :cond_5
    invoke-static {v0}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object v0

    .line 864
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MY;

    .line 865
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 866
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;ILcom/android/tools/r8/internal/FH;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v9

    .line 867
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 868
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->c()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 869
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;ILcom/android/tools/r8/internal/FH;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v9

    .line 870
    :cond_8
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->q()V

    .line 871
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 872
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 873
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 874
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 875
    :cond_9
    check-cast v1, Lcom/android/tools/r8/internal/FT;

    goto :goto_3

    .line 876
    :cond_a
    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 877
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v9

    .line 878
    iget-object v2, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 879
    iget-object v2, v2, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 880
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    iget-object v1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 881
    iget-object v1, v1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 882
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    :cond_b
    :goto_3
    if-eqz v1, :cond_d

    .line 883
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 884
    iget v0, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 885
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v2

    .line 886
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Qe0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    add-int/2addr v0, v9

    .line 887
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Qe0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 888
    :goto_4
    iget v0, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 889
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/mS;->b(IILcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v9

    .line 890
    :cond_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 891
    new-instance v1, Lcom/android/tools/r8/internal/jk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/jk1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 892
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->L()Lcom/android/tools/r8/internal/ej;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 894
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 895
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 897
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v0

    .line 898
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_f

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 899
    :cond_f
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 900
    iget v4, v0, Lcom/android/tools/r8/internal/FT;->k:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 901
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;ILcom/android/tools/r8/internal/FH;)Z

    move-result p1

    if-eqz p1, :cond_16

    return v9

    .line 902
    :cond_10
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 903
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    .line 904
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/F0;->clear()V

    move v1, v8

    .line 905
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 906
    iget-object v2, v0, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 907
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 908
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_11

    .line 909
    iget-object v3, v0, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 910
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    .line 911
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 912
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    .line 913
    iget v3, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 914
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v2

    .line 915
    :cond_11
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 916
    iget v2, v2, Lcom/android/tools/r8/internal/FT;->k:I

    .line 917
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 918
    invoke-virtual {v7, v2, v9}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 919
    :cond_13
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v8, [Lcom/android/tools/r8/internal/MY;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/MY;

    .line 920
    sget-object v1, Lcom/android/tools/r8/internal/NY;->b:Lcom/android/tools/r8/internal/NY;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 921
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/EC;->e:I

    .line 922
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 923
    sget-object v0, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    goto :goto_7

    .line 924
    :cond_14
    invoke-static {v0}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object v0

    .line 925
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v7

    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MY;

    .line 926
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 927
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;ILcom/android/tools/r8/internal/FH;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v9

    :cond_16
    return v8
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;ILcom/android/tools/r8/internal/FH;)Z
    .locals 1

    .line 928
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 929
    sget-boolean p5, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez p5, :cond_1

    const/high16 p5, -0x80000000

    if-eq p4, p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 930
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result p5

    add-int/2addr p5, p4

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    if-le p5, p2, :cond_2

    goto :goto_1

    .line 931
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result p2

    .line 932
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Qe0;->b(I)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    add-int/lit8 p2, p4, 0x1

    .line 933
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Qe0;->b(I)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 934
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result p2

    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result p2

    .line 935
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result p3

    if-ge p2, p3, :cond_5

    goto :goto_1

    .line 936
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->j(Lcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 937
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/mS;->d(ILcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 938
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->i(Lcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 939
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/mS;->c(ILcom/android/tools/r8/internal/FT;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    .line 940
    :cond_7
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 942
    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    iget-object p2, p2, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    .line 30
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 1103
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/internal/xw0;I)I
    .locals 2

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    instance-of v0, p1, Lcom/android/tools/r8/internal/ix;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result p1

    return p1

    .line 195
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    if-eqz p1, :cond_2

    .line 196
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p1

    .line 198
    :cond_1
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result p1

    return p1

    .line 200
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/If;

    iget-object p2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 201
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attempt to get register for a value without a register in method `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "`."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 202
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 203
    iget-object v0, v0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 204
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    const/4 v1, 0x0

    .line 205
    invoke-direct {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    throw p1
.end method

.method public final b(ILcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/Qe0;
    .locals 10

    .line 213
    new-instance v0, Lcom/android/tools/r8/internal/Qe0;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Qe0;-><init>(I)V

    .line 214
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 216
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-nez v1, :cond_4

    .line 217
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/tools/r8/internal/mS;->c:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 220
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 222
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    .line 228
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 229
    new-instance v3, Lcom/android/tools/r8/internal/rk1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/rk1;-><init>(Lcom/android/tools/r8/internal/Pe0;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    .line 230
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    .line 231
    iget-object v3, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 232
    :cond_6
    :goto_2
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 233
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 234
    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 235
    sget-boolean v4, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 236
    iget-object v3, v3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 237
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v3, :cond_7

    goto :goto_2

    .line 238
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 239
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/tools/r8/internal/mS;->d:I

    if-lez v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 241
    :cond_a
    :goto_3
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->d:I

    .line 242
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object v3

    .line 243
    iget-object v4, v3, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v3, v3, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v3

    move v4, v2

    .line 244
    :goto_4
    iget-object v5, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 245
    iget-object v5, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 246
    check-cast v5, Lcom/android/tools/r8/internal/FT;

    .line 247
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v6

    sub-int/2addr v1, v6

    if-gez v1, :cond_b

    goto :goto_6

    .line 248
    :cond_b
    invoke-virtual {v5, p2}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v2

    :goto_5
    if-ge v5, v6, :cond_c

    add-int v7, v4, v5

    .line 249
    iget-object v8, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    add-int/2addr v4, v6

    goto :goto_4

    :cond_d
    move v4, v2

    .line 250
    :cond_e
    :goto_6
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v1

    if-eqz v1, :cond_f

    if-gt v4, p1, :cond_f

    .line 251
    iget-object v1, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 252
    :cond_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 253
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v1

    if-nez v1, :cond_10

    .line 254
    iget v1, p2, Lcom/android/tools/r8/internal/FT;->s:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_10

    .line 255
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v1

    if-nez v1, :cond_10

    .line 256
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v1

    .line 257
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_7

    .line 258
    :cond_10
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 259
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/FT;->q:Z

    if-eqz v1, :cond_11

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->l(Lcom/android/tools/r8/internal/FT;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 261
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v1

    if-gt v1, p1, :cond_11

    .line 262
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 263
    :cond_11
    :goto_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 264
    iget v4, v3, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v4, p1, :cond_12

    move v5, v2

    .line 265
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v6

    if-ge v5, v6, :cond_12

    add-int v6, v4, v5

    if-gt v6, p1, :cond_13

    .line 266
    iget-object v7, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 267
    :cond_14
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 268
    iget v4, v3, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v4, p1, :cond_15

    .line 269
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_15

    .line 270
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v5

    move v6, v2

    .line 271
    :goto_9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v7

    if-ge v6, v7, :cond_15

    add-int v7, v4, v6

    if-gt v7, p1, :cond_18

    .line 272
    iget-object v8, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_18

    .line 273
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v8

    .line 274
    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_16

    goto :goto_a

    :cond_16
    add-int/lit8 v8, v8, 0x1

    :goto_a
    if-ne v5, v8, :cond_17

    .line 275
    iget-object v8, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    .line 276
    :cond_17
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Qe0;->a(I)I

    move-result v8

    if-ge v5, v8, :cond_18

    .line 277
    invoke-virtual {v0, v7, v5, v3}, Lcom/android/tools/r8/internal/Qe0;->a(IILcom/android/tools/r8/internal/FT;)V

    :cond_18
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_19
    return-object v0
.end method

.method public final b()V
    .locals 15

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-static {v1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-static {v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/Xc0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Xc0;-><init>()V

    .line 22
    :goto_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 24
    iget v7, v1, Lcom/android/tools/r8/internal/Xc0;->e:I

    .line 25
    invoke-virtual {v1, v7, v6}, Lcom/android/tools/r8/internal/Xc0;->b(ILjava/lang/Object;)I

    goto :goto_2

    .line 26
    :cond_4
    :goto_3
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v6

    if-nez v6, :cond_5

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_5
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v6

    .line 29
    iget v7, p0, Lcom/android/tools/r8/internal/mS;->c:I

    .line 30
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 32
    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 33
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v8

    add-int/2addr v7, v8

    :cond_6
    sub-int/2addr v7, v4

    const/16 v8, 0xff

    if-le v7, v8, :cond_7

    goto/16 :goto_7

    .line 34
    :cond_7
    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v4, :cond_d

    move v8, v2

    move v7, v3

    .line 36
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_c

    .line 37
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 38
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v10

    if-nez v10, :cond_8

    .line 39
    iget-object v9, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 40
    :cond_8
    sget-boolean v10, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v10, :cond_a

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_a
    :goto_5
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/Xc0;->b(Ljava/lang/Object;)I

    move-result v9

    if-ltz v8, :cond_b

    add-int/lit8 v8, v8, 0x1

    if-eq v9, v8, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_4

    .line 42
    :cond_c
    :goto_6
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 45
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    goto :goto_6

    .line 46
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Setup"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :cond_f
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 49
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 50
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->f()V

    goto :goto_8

    .line 51
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v3

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 53
    new-instance v9, Lcom/android/tools/r8/internal/FT;

    invoke-direct {v9, v7}, Lcom/android/tools/r8/internal/FT;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 54
    new-instance v7, Lcom/android/tools/r8/internal/IT;

    invoke-direct {v7, v3, v6}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/IT;)V

    .line 55
    iget-object v7, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v8

    goto :goto_9

    .line 56
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 57
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    move v6, v4

    .line 58
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 59
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 60
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    iget-object v9, v7, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 61
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/FT;->b(Lcom/android/tools/r8/internal/FT;)V

    add-int/lit8 v6, v6, 0x1

    move-object v1, v7

    goto :goto_a

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 63
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 64
    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 65
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 67
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_14

    .line 68
    invoke-static {v7}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/NJ;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 69
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 70
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v6

    .line 71
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    move v9, v3

    .line 72
    :goto_c
    iget-object v10, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_16

    .line 74
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 75
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_d

    .line 76
    :cond_15
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    .line 77
    iget-object v12, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v12, v11, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 78
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/xw0;->a(Z)V

    .line 79
    new-instance v12, Lcom/android/tools/r8/internal/aY;

    invoke-direct {v12, v11, v10}, Lcom/android/tools/r8/internal/aY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 80
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 81
    iget-object v10, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 83
    iget-object v13, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v13, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v13, v10, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 86
    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 87
    iput-object v5, v10, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 88
    iget-object v10, v11, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 89
    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    iput-object v5, v11, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 91
    invoke-interface {v1, v12}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 92
    :cond_16
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_b

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 96
    iget v7, v0, Lcom/android/tools/r8/internal/fB;->h:I

    .line 97
    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 98
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 99
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    sget-boolean v10, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v10, :cond_19

    if-eq v7, v2, :cond_18

    goto :goto_10

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_19
    :goto_10
    iput v7, v9, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v7, v7, 0x2

    goto :goto_f

    .line 102
    :cond_1a
    iput v7, v0, Lcom/android/tools/r8/internal/fB;->h:I

    goto :goto_e

    .line 103
    :cond_1b
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->e()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->g()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 107
    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 108
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 109
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 110
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    .line 111
    invoke-virtual {v6, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/eB;

    .line 112
    iget-object v7, v6, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 113
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v6, v6, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 114
    iget-object v6, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v6

    if-gt v6, v8, :cond_1c

    .line 115
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 116
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_1b

    .line 117
    :cond_1e
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v3

    :cond_1f
    :goto_12
    if-ge v6, v4, :cond_32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 119
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_21

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_13

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_21
    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v3

    :cond_22
    :goto_14
    if-ge v10, v9, :cond_2b

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    if-eq v11, v7, :cond_22

    .line 121
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    goto :goto_14

    .line 122
    :cond_23
    sget-boolean v12, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v12, :cond_25

    iget-object v13, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v13, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/eB;

    .line 123
    iget-object v14, v13, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 124
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_24

    iget-object v13, v13, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_24

    goto :goto_15

    .line 125
    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    :goto_15
    if-nez v12, :cond_27

    .line 126
    iget-object v12, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/eB;

    .line 127
    iget-object v13, v12, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 128
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_26

    iget-object v12, v12, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_16

    .line 129
    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_27
    :goto_16
    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 131
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    .line 132
    iget-object v13, v11, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 133
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v13

    if-ne v12, v13, :cond_22

    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    if-le v12, v8, :cond_28

    goto :goto_14

    .line 134
    :cond_28
    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    if-ne v12, v8, :cond_29

    .line 135
    iget-object v12, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    .line 136
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    instance-of v12, v12, Lcom/android/tools/r8/internal/bY;

    if-eqz v12, :cond_22

    .line 138
    iget-object v12, v11, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    .line 139
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    instance-of v12, v12, Lcom/android/tools/r8/internal/bY;

    if-nez v12, :cond_29

    goto/16 :goto_14

    .line 141
    :cond_29
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 142
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 143
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    if-ne v12, v13, :cond_2a

    goto :goto_17

    .line 144
    :cond_2a
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v12

    if-eqz v12, :cond_22

    goto :goto_17

    :cond_2b
    move-object v11, v5

    :goto_17
    if-nez v11, :cond_2c

    goto/16 :goto_12

    .line 145
    :cond_2c
    sget-boolean v9, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v9, :cond_2e

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_18

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_2e
    :goto_18
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 148
    invoke-virtual {v10, v7, v11}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 149
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2f

    .line 150
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 151
    :cond_30
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 152
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 153
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/f60;

    .line 155
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    sget-object v13, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v12, v11, v5, v13}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V

    goto :goto_1a

    .line 157
    :cond_32
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    .line 158
    :goto_1b
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 159
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Allocate"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 160
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_33

    .line 161
    sget-object v0, Lcom/android/tools/r8/internal/kS;->b:Lcom/android/tools/r8/internal/kS;

    goto :goto_1c

    .line 162
    :cond_33
    sget-object v0, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    .line 163
    :goto_1c
    invoke-virtual {p0, v0, v3}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/kS;Z)Lcom/android/tools/r8/internal/kS;

    .line 164
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 165
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_34

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 166
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/fB;->b(Z)V

    :cond_34
    if-nez v0, :cond_36

    .line 167
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->q:[I

    if-eqz v0, :cond_35

    goto :goto_1d

    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_36
    :goto_1d
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 169
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_37

    .line 170
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-static {v1, v0, p0, v2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/hC;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Je0;Ljava/util/IdentityHashMap;)V

    goto :goto_1f

    .line 171
    :cond_37
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 174
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v0

    .line 175
    :cond_38
    :goto_1e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 176
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    instance-of v1, v1, Lcom/android/tools/r8/internal/cj;

    if-eqz v1, :cond_38

    .line 179
    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_1e

    .line 180
    :cond_39
    :goto_1f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->f()V

    .line 181
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    .line 182
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    .line 183
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    .line 184
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    .line 185
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    .line 186
    iput-object v5, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/FT;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 3
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/FT;->o:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Extract splits"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/ak1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ak1;-><init>()V

    .line 7
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Process splits"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;)V

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, v0, Lcom/android/tools/r8/internal/FT;->o:Z

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/FT;IZ)V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 324
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/FT;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v3

    if-le v2, v3, :cond_1

    const/high16 v2, -0x80000000

    .line 327
    iput v2, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 328
    iput v2, v1, Lcom/android/tools/r8/internal/FT;->l:I

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 330
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(I)Z
    .locals 1

    .line 333
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(IILcom/android/tools/r8/internal/FT;)Z
    .locals 9

    .line 278
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le v0, p1, :cond_0

    return v2

    .line 279
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mS;->i(Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 280
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mS;->j(Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 281
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mS;->k(Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 282
    :cond_1
    iget-object p1, p3, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/FT;->q:Z

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result p1

    if-ne p2, p1, :cond_2

    return v2

    .line 284
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 285
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->i()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 286
    iget-object v0, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 287
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v3

    invoke-virtual {v0, p2, v3}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 292
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    .line 293
    new-instance v0, Lcom/android/tools/r8/internal/ck1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/ck1;-><init>(Lcom/android/tools/r8/internal/FT;)V

    .line 294
    invoke-static {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/List;Lcom/android/tools/r8/internal/FT;ILjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    .line 297
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-static {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/List;Lcom/android/tools/r8/internal/FT;ILjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object p1

    .line 298
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 299
    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 300
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v4

    .line 301
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 302
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v5

    .line 303
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-ne v4, v5, :cond_b

    return v2

    .line 304
    :cond_b
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v5

    .line 305
    iget-object v3, v3, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 306
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/GT;

    .line 307
    iget-object v7, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    iget v8, v6, Lcom/android/tools/r8/internal/GT;->c:I

    .line 310
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 311
    iget v6, v6, Lcom/android/tools/r8/internal/GT;->b:I

    if-ge v4, v6, :cond_c

    if-ge v6, v5, :cond_c

    return v2

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->n:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    return v2

    .line 313
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 314
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v2

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    .line 316
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 318
    :cond_f
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 319
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 320
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_10
    :goto_4
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 190
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    return p1
.end method

.method public final c(I)I
    .locals 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->d(I)I

    move-result p1

    .line 169
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->q:[I

    if-eqz v0, :cond_2

    .line 170
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 171
    aget v0, v0, p1

    sub-int/2addr p1, v0

    return p1

    .line 172
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 173
    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    sub-int/2addr p1, v0

    :cond_2
    return p1
.end method

.method public final c()Lcom/android/tools/r8/graph/y;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    return-object v0
.end method

.method public final c(ILcom/android/tools/r8/internal/FT;)Z
    .locals 2

    .line 181
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->i(Lcom/android/tools/r8/internal/FT;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 182
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 183
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 184
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 185
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p2

    .line 186
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    if-nez v0, :cond_3

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/FT;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget v0, v7, Lcom/android/tools/r8/internal/FT;->s:I

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    const v2, 0xffff

    if-nez v1, :cond_1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v4

    if-gt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v4, v3, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v8

    .line 5
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v0, v2, :cond_6

    .line 6
    iget-object v4, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v5, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/android/tools/r8/internal/kS;->e:Lcom/android/tools/r8/internal/kS;

    if-ne v4, v5, :cond_7

    :cond_5
    const/16 v4, 0xff

    if-ne v0, v4, :cond_7

    .line 9
    :cond_6
    iget-object v0, v7, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 10
    iget v0, v0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 11
    invoke-virtual {v6, v0, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 12
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 13
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v9

    .line 14
    :cond_7
    iget-object v4, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v4

    if-nez v4, :cond_9

    if-ge v0, v2, :cond_9

    .line 15
    iget v2, v6, Lcom/android/tools/r8/internal/mS;->c:I

    add-int/2addr v0, v2

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v9

    goto :goto_3

    :cond_8
    move v2, v8

    .line 18
    :goto_3
    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    add-int/2addr v2, v0

    move v10, v2

    goto :goto_4

    :cond_9
    move v10, v0

    .line 19
    :goto_4
    invoke-virtual {v6, v10, v7}, Lcom/android/tools/r8/internal/mS;->b(ILcom/android/tools/r8/internal/FT;)Lcom/android/tools/r8/internal/Qe0;

    move-result-object v11

    if-nez v1, :cond_f

    .line 20
    iget v0, v6, Lcom/android/tools/r8/internal/mS;->i:I

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v8

    :goto_5
    if-gt v1, v0, :cond_f

    .line 21
    iget-object v2, v11, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 22
    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_b

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/Qe0;->a(I)I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v4

    if-ne v1, v4, :cond_c

    goto :goto_7

    :cond_c
    if-nez v2, :cond_e

    .line 24
    iget-object v2, v6, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 25
    :cond_f
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Try hint"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 26
    invoke-virtual {v6, v7, v10, v11}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 27
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return v9

    .line 28
    :cond_10
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->r:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 29
    sget-object v5, Lcom/android/tools/r8/internal/Oe0;->e:Lcom/android/tools/r8/internal/Oe0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-object v4, v11

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_11

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result v1

    goto :goto_8

    :cond_11
    move v1, v8

    :goto_8
    if-nez v1, :cond_35

    .line 32
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    sget-object v1, Lcom/android/tools/r8/internal/kS;->b:Lcom/android/tools/r8/internal/kS;

    if-ne v0, v1, :cond_12

    return v8

    .line 33
    :cond_12
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->h()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_14
    :goto_9
    iget-object v1, v7, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 35
    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/GT;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GT;->a()Z

    move-result v1

    if-nez v1, :cond_18

    .line 36
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget v2, v7, Lcom/android/tools/r8/internal/FT;->s:I

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 39
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 40
    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;

    move-result-object v0

    .line 41
    iget v0, v0, Lcom/android/tools/r8/internal/GT;->b:I

    .line 42
    invoke-virtual {v6, v7, v2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/CH;)I

    move-result v1

    .line 43
    iget-object v2, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v7, v0, v2}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v0

    .line 44
    invoke-virtual {v6, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 45
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 46
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_a
    move v0, v9

    goto/16 :goto_18

    :cond_15
    if-nez v0, :cond_17

    .line 48
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_17
    :goto_b
    invoke-virtual {v6, v7, v2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/CH;)I

    move-result v0

    .line 50
    invoke-virtual {v6, v0, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 51
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 52
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 53
    :cond_18
    new-instance v11, Lcom/android/tools/r8/internal/Qe0;

    add-int/lit8 v0, v10, 0x1

    invoke-direct {v11, v0}, Lcom/android/tools/r8/internal/Qe0;-><init>(I)V

    .line 54
    new-instance v13, Lcom/android/tools/r8/internal/Qe0;

    invoke-direct {v13, v0}, Lcom/android/tools/r8/internal/Qe0;-><init>(I)V

    .line 55
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 56
    iget v3, v1, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v3, v10, :cond_19

    move v4, v8

    .line 57
    :goto_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v5

    if-ge v4, v5, :cond_19

    add-int v5, v3, v4

    if-gt v5, v10, :cond_1d

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v14

    .line 59
    iget-object v15, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 60
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 61
    iget-object v14, v1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/GT;

    .line 62
    iget v14, v14, Lcom/android/tools/r8/internal/GT;->b:I

    goto :goto_e

    .line 63
    :cond_1a
    iget-object v2, v1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lcom/android/tools/r8/internal/GT;

    .line 64
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget v9, v8, Lcom/android/tools/r8/internal/GT;->c:I

    .line 67
    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 68
    iget v8, v8, Lcom/android/tools/r8/internal/GT;->b:I

    if-lt v8, v14, :cond_1b

    move v14, v8

    goto :goto_e

    :cond_1b
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_d

    :cond_1c
    const v14, 0x7fffffff

    .line 69
    :goto_e
    invoke-virtual {v11, v5, v14, v1}, Lcom/android/tools/r8/internal/Qe0;->a(IILcom/android/tools/r8/internal/FT;)V

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_c

    .line 70
    :cond_1e
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FT;

    .line 71
    iget v2, v1, Lcom/android/tools/r8/internal/FT;->k:I

    if-gt v2, v10, :cond_1f

    .line 72
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v3

    if-eq v3, v12, :cond_1f

    const/4 v3, 0x0

    .line 73
    :goto_f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v4

    if-ge v3, v4, :cond_1f

    add-int v4, v2, v3

    if-gt v4, v10, :cond_23

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v5

    iget-object v8, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 75
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 76
    iget-object v5, v1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/GT;

    .line 77
    iget v5, v5, Lcom/android/tools/r8/internal/GT;->b:I

    goto :goto_10

    .line 78
    :cond_20
    iget-object v9, v1, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/GT;

    .line 79
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget v15, v14, Lcom/android/tools/r8/internal/GT;->c:I

    .line 82
    invoke-virtual {v8, v15}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 83
    iget v14, v14, Lcom/android/tools/r8/internal/GT;->b:I

    if-lt v14, v5, :cond_21

    move v5, v14

    goto :goto_10

    :cond_22
    const v5, 0x7fffffff

    .line 84
    :goto_10
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/Qe0;->a(I)I

    move-result v8

    if-ge v5, v8, :cond_23

    .line 85
    invoke-virtual {v11, v4, v5, v1}, Lcom/android/tools/r8/internal/Qe0;->a(IILcom/android/tools/r8/internal/FT;)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_24
    const/4 v8, 0x0

    .line 86
    :goto_11
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 87
    iget-object v0, v11, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 88
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 89
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v0

    if-nez v0, :cond_26

    .line 90
    iget v0, v7, Lcom/android/tools/r8/internal/FT;->s:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_26

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v0

    if-nez v0, :cond_26

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v0

    .line 93
    iget-object v1, v11, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_12

    .line 94
    :cond_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->l(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v0

    .line 96
    iget-object v1, v11, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 97
    :cond_27
    :goto_12
    invoke-virtual {v6, v7, v10, v11, v13}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;ILcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Qe0;)V

    .line 98
    iget-object v0, v7, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 99
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v8

    .line 101
    sget-object v5, Lcom/android/tools/r8/internal/Oe0;->c:Lcom/android/tools/r8/internal/Oe0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v8

    move-object v4, v11

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v9

    .line 103
    sget-object v5, Lcom/android/tools/r8/internal/Oe0;->d:Lcom/android/tools/r8/internal/Oe0;

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v0

    if-eq v0, v12, :cond_29

    if-ne v9, v12, :cond_28

    goto :goto_13

    .line 105
    :cond_28
    invoke-virtual {v11, v9, v8}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    if-ge v1, v2, :cond_29

    :goto_13
    move v9, v0

    :cond_29
    if-ne v9, v12, :cond_2a

    .line 107
    sget-object v5, Lcom/android/tools/r8/internal/Oe0;->b:Lcom/android/tools/r8/internal/Oe0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v8

    move-object v4, v11

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZLcom/android/tools/r8/internal/Qe0;Lcom/android/tools/r8/internal/Oe0;)I

    move-result v9

    .line 109
    :cond_2a
    invoke-virtual {v11, v9, v8}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result v0

    .line 110
    invoke-virtual {v13, v9, v8}, Lcom/android/tools/r8/internal/Pe0;->a(IZ)I

    move-result v1

    .line 111
    iget-object v2, v7, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/GT;

    .line 112
    iget v2, v2, Lcom/android/tools/r8/internal/GT;->b:I

    if-ge v0, v2, :cond_2e

    .line 113
    iget-object v0, v7, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GT;

    .line 114
    iget v0, v0, Lcom/android/tools/r8/internal/GT;->b:I

    .line 115
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v7, v0, v1}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v0

    .line 116
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_2c

    if-eq v0, v7, :cond_2b

    goto :goto_14

    :cond_2b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_2c
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 118
    iget-object v1, v7, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 119
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    goto :goto_15

    .line 120
    :cond_2d
    iget v1, v6, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/lit8 v2, v1, 0x1

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v3

    add-int/2addr v3, v1

    .line 122
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/mS;->a(I)V

    move v1, v2

    .line 123
    :goto_15
    invoke-virtual {v6, v1, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 124
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 125
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/FT;->a(Z)V

    .line 127
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto/16 :goto_18

    :cond_2e
    const/4 v2, 0x1

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    add-int/2addr v0, v9

    sub-int/2addr v0, v2

    .line 129
    iget v2, v6, Lcom/android/tools/r8/internal/mS;->i:I

    if-le v0, v2, :cond_2f

    .line 130
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/mS;->a(I)V

    .line 131
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    if-le v1, v0, :cond_32

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    .line 133
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_31

    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 134
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    invoke-virtual {v6, v7, v9, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZ)V

    .line 135
    :cond_31
    invoke-virtual {v6, v9, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 136
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 137
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    invoke-virtual {v6, v7, v9, v0}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/FT;IZ)V

    :goto_16
    const/4 v0, 0x1

    goto/16 :goto_18

    .line 139
    :cond_32
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v7, v1, v0}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v0

    .line 140
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    .line 142
    iget-object v1, v6, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_34

    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 143
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    invoke-virtual {v6, v7, v9, v0}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;IZ)V

    .line 144
    :cond_34
    invoke-virtual {v6, v9, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 145
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 146
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->n()Z

    move-result v0

    invoke-virtual {v6, v7, v9, v0}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/FT;IZ)V

    goto :goto_16

    .line 148
    :cond_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v3

    if-lt v1, v3, :cond_37

    .line 150
    iget v1, v6, Lcom/android/tools/r8/internal/mS;->i:I

    if-le v2, v1, :cond_36

    .line 151
    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/mS;->a(I)V

    .line 152
    :cond_36
    invoke-virtual {v6, v0, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 153
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 154
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 155
    :cond_37
    iget-object v3, v6, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    sget-object v4, Lcom/android/tools/r8/internal/kS;->b:Lcom/android/tools/r8/internal/kS;

    if-ne v3, v4, :cond_38

    const/4 v4, 0x0

    return v4

    .line 156
    :cond_38
    iget v4, v7, Lcom/android/tools/r8/internal/FT;->s:I

    .line 157
    invoke-virtual {v7, v1, v3}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v1

    .line 158
    sget-boolean v3, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v3, :cond_3a

    if-eq v1, v7, :cond_39

    goto :goto_17

    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_3a
    :goto_17
    iget-object v3, v6, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 160
    iget v1, v7, Lcom/android/tools/r8/internal/FT;->s:I

    if-eq v1, v4, :cond_3b

    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->c(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    return v0

    .line 162
    :cond_3b
    iget v1, v6, Lcom/android/tools/r8/internal/mS;->i:I

    if-le v2, v1, :cond_3c

    .line 163
    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/mS;->a(I)V

    .line 164
    :cond_3c
    invoke-virtual {v6, v0, v7}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;)V

    .line 165
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    .line 166
    iget-object v0, v6, Lcom/android/tools/r8/internal/mS;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :goto_18
    return v0
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 175
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/NJ;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Lcom/android/tools/r8/internal/qk1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/qk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 180
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final d()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->q:[I

    if-eqz v1, :cond_1

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 4
    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    :goto_0
    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final d(I)I
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->i:I

    iget v2, p0, Lcom/android/tools/r8/internal/mS;->c:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    return v0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 13
    iget p1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    iget v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    :goto_2
    sub-int/2addr p1, v0

    return p1

    .line 14
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    sub-int/2addr p1, v0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 17
    :goto_3
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    goto :goto_2
.end method

.method public final d(ILcom/android/tools/r8/internal/FT;)Z
    .locals 5

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->j(Lcom/android/tools/r8/internal/FT;)Z

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
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 23
    iget-object v3, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 24
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v1

    .line 27
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p2

    .line 30
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    if-nez v0, :cond_3

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_2

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    if-eq p1, v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, p2, 0x1

    if-eq p1, v1, :cond_6

    if-ne v0, p2, :cond_5

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/internal/FT;)Z
    .locals 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 36
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 37
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 38
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v0, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final e()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/internal/FT;)V
    .locals 3

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/XN0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/XN0;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v1

    if-nez v1, :cond_4

    .line 32
    iget-object v1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_3
    :goto_1
    iget v0, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 35
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v0, p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/XN0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/XN0;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/FT;->a(Ljava/util/function/IntConsumer;)V

    :cond_4
    return-void
.end method

.method public final e(ILcom/android/tools/r8/internal/FT;)Z
    .locals 6

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/mS;->k(Lcom/android/tools/r8/internal/FT;)Z

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
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v1, v1, Lcom/android/tools/r8/internal/se;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 6
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->E()Lcom/android/tools/r8/internal/se;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 10
    iget-object v4, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 11
    iget-object v4, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->E()Lcom/android/tools/r8/internal/se;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v1

    .line 14
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 15
    iget-object v4, v4, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p2

    .line 17
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v4, -0x80000000

    if-nez v0, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eq p2, v4, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-eq p1, v1, :cond_8

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    if-eq p1, p2, :cond_8

    add-int/2addr p2, v2

    if-ne p1, p2, :cond_7

    goto :goto_3

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v2

    :cond_9
    if-nez v0, :cond_b

    .line 20
    iget-object v0, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d2()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_b
    :goto_4
    iget-object v0, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->z0()Lcom/android/tools/r8/internal/w10;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object p2

    .line 28
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne p1, p2, :cond_c

    return v2

    :cond_c
    return v3
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/RN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/RN0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/internal/FT;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->m(Lcom/android/tools/r8/internal/FT;)Z

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
    iget v1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/tools/r8/internal/mS;->i:I

    if-gt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    .line 9
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 11
    iget v1, v0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 12
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v1, p1, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->f(Lcom/android/tools/r8/internal/FT;)V

    :cond_5
    return-void
.end method

.method public final g()V
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;)V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    new-instance v1, Lcom/android/tools/r8/internal/dk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dk1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/eB;

    iget-object v2, v2, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 18
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 19
    sget-boolean v5, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v5, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    :goto_2
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/FT;->q:Z

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v3, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object v3, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 33
    iget-object v3, v0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 34
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 35
    new-instance v3, Lcom/android/tools/r8/internal/IT;

    iget-object v5, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 36
    iget v5, v5, Lcom/android/tools/r8/internal/fB;->h:I

    .line 37
    invoke-direct {v3, v1, v5}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/IT;)V

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/eB;

    .line 39
    iget-object v3, v3, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lcom/android/tools/r8/internal/mS;->f:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_8

    .line 40
    sget-boolean v1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_7
    :goto_4
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/FT;->q:Z

    :cond_8
    return-void
.end method

.method public final g(Lcom/android/tools/r8/internal/FT;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 14
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/xw0;->j:Z

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final h()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/mS;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v1

    add-int v5, v2, v1

    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0xf

    if-gt v6, v7, :cond_0

    add-int/2addr v3, v1

    move-object v1, v4

    move v2, v5

    goto :goto_0

    :cond_0
    if-gt v2, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    return v3

    .line 9
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    return v3
.end method

.method public final i()Lcom/android/tools/r8/internal/sK;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->c()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/vk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vk1;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/android/tools/r8/internal/FT;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 9
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-eq v0, p1, :cond_3

    return v1

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final j()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->c:I

    return v0
.end method

.method public final j(Lcom/android/tools/r8/internal/FT;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->b(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-eq v0, p1, :cond_3

    return v1

    .line 10
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w()Lcom/android/tools/r8/internal/I3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    sget-object v3, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v3, :cond_6

    .line 14
    instance-of v0, p1, Lcom/android/tools/r8/internal/d2;

    if-nez v0, :cond_5

    instance-of p1, p1, Lcom/android/tools/r8/internal/Qq0;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2

    .line 15
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W1()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->n0()Lcom/android/tools/r8/internal/VT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    sget-object v3, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v3, :cond_9

    .line 17
    instance-of v0, p1, Lcom/android/tools/r8/internal/A40;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/android/tools/r8/internal/fy0;

    if-nez v0, :cond_8

    instance-of p1, p1, Lcom/android/tools/r8/internal/t2;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v2

    :cond_9
    return v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k(Lcom/android/tools/r8/internal/FT;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v2, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 10
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 11
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-eq v0, p1, :cond_3

    return v1

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v0, p1, Lcom/android/tools/r8/internal/se;

    if-eqz v0, :cond_4

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p1

    return p1

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->z0()Lcom/android/tools/r8/internal/w10;

    move-result-object p1

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    .line 21
    sget-object v2, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v2, :cond_5

    iget-object p1, p1, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public final l()Lcom/android/tools/r8/internal/MD;
    .locals 17

    move-object/from16 v0, p0

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    const/high16 v2, -0x80000000

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/mS;->p:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v3, :cond_10

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/FT;

    .line 7
    sget-boolean v8, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v8, :cond_3

    .line 8
    iget-object v8, v7, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v8, v7, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 10
    :cond_3
    :goto_2
    iget-object v8, v7, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 11
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12
    iput-boolean v6, v7, Lcom/android/tools/r8/internal/FT;->u:Z

    goto :goto_1

    .line 13
    :cond_4
    iget-object v8, v7, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    iget-object v8, v7, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0xff

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/f60;

    .line 15
    iget-object v11, v9, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 16
    iget v11, v11, Lcom/android/tools/r8/internal/FT;->k:I

    .line 17
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/mS;->d(I)I

    move-result v11

    if-lt v11, v10, :cond_6

    move v10, v4

    .line 18
    :goto_3
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 19
    iget-object v11, v9, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget-object v12, v7, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v11, v12, :cond_7

    .line 21
    iget-object v11, v9, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 22
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v11

    .line 23
    iget v11, v11, Lcom/android/tools/r8/internal/zE;->g:I

    .line 24
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v11

    .line 25
    iget-boolean v11, v11, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v11, :cond_7

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/FT;->d()I

    move-result v8

    if-ne v8, v2, :cond_e

    .line 27
    sget-boolean v8, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v8, :cond_d

    if-nez v8, :cond_a

    .line 28
    iget-boolean v8, v7, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v8, :cond_9

    goto :goto_4

    .line 29
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 30
    :cond_a
    :goto_4
    iget-object v8, v7, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :cond_b
    :goto_5
    if-ge v10, v9, :cond_d

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/FT;

    .line 31
    sget-boolean v12, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v12, :cond_b

    .line 32
    iget-boolean v11, v11, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v11, :cond_c

    goto :goto_5

    .line 33
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 34
    :cond_d
    iput-boolean v6, v7, Lcom/android/tools/r8/internal/FT;->u:Z

    goto/16 :goto_1

    .line 35
    :cond_e
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/FT;->d()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/mS;->d(I)I

    move-result v8

    if-ge v8, v10, :cond_f

    goto :goto_6

    :cond_f
    move v6, v4

    .line 36
    :goto_6
    iput-boolean v6, v7, Lcom/android/tools/r8/internal/FT;->u:Z

    goto/16 :goto_1

    .line 37
    :cond_10
    new-instance v1, Lcom/android/tools/r8/internal/vn0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v3, v0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/tools/r8/internal/vn0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/mS;)V

    .line 38
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_11
    if-ge v4, v3, :cond_18

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/FT;

    .line 39
    iget-object v7, v5, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_11

    .line 41
    new-instance v7, Ljava/util/PriorityQueue;

    invoke-direct {v7}, Ljava/util/PriorityQueue;-><init>()V

    .line 42
    iget-object v8, v5, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/FT;

    :goto_7
    move-object/from16 v16, v8

    move-object v8, v5

    move-object/from16 v5, v16

    if-eqz v5, :cond_11

    .line 45
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v9

    .line 46
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/mS;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 47
    rem-int/lit8 v10, v9, 0x2

    if-ne v10, v6, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v9, v9, -0x1

    .line 48
    :goto_8
    sget-boolean v10, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v10, :cond_14

    rem-int/lit8 v11, v9, 0x2

    if-ne v11, v6, :cond_13

    goto :goto_9

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_9
    if-nez v10, :cond_16

    .line 49
    iget-object v10, v5, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v11, v8, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v10, v11, :cond_15

    goto :goto_a

    .line 50
    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 51
    :cond_16
    :goto_a
    iget-object v10, v1, Lcom/android/tools/r8/internal/vn0;->g:Ljava/util/HashMap;

    add-int/lit8 v11, v9, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    if-nez v10, :cond_17

    .line 52
    invoke-virtual {v1, v9, v5, v8}, Lcom/android/tools/r8/internal/vn0;->a(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    .line 53
    :cond_17
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/FT;

    goto :goto_7

    .line 54
    :cond_18
    iget-object v2, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    .line 57
    iget v7, v7, Lcom/android/tools/r8/internal/zE;->g:I

    .line 58
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 59
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v9

    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 60
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 61
    iget v7, v10, Lcom/android/tools/r8/internal/zE;->g:I

    .line 62
    :cond_1c
    iget-object v9, v5, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 63
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    .line 64
    iget v9, v9, Lcom/android/tools/r8/internal/zE;->g:I

    .line 65
    iget-object v10, v0, Lcom/android/tools/r8/internal/mS;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/eB;

    iget-object v10, v10, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 66
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1d
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 67
    iget-object v11, v11, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 68
    invoke-virtual {v11, v7}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v12

    .line 69
    invoke-virtual {v11, v9}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v11

    .line 70
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/mS;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_b

    :cond_1e
    if-eq v12, v11, :cond_1d

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v13

    if-eqz v13, :cond_21

    if-nez v8, :cond_21

    add-int/lit8 v13, v7, -0x1

    .line 72
    sget-boolean v14, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v14, :cond_20

    .line 73
    iget-object v14, v11, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v15, v12, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v14, v15, :cond_1f

    goto :goto_c

    .line 74
    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 75
    :cond_20
    :goto_c
    invoke-virtual {v1, v13, v11, v12}, Lcom/android/tools/r8/internal/vn0;->b(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    goto :goto_b

    :cond_21
    add-int/lit8 v13, v9, -0x1

    .line 76
    sget-boolean v14, Lcom/android/tools/r8/internal/vn0;->i:Z

    if-nez v14, :cond_23

    .line 77
    iget-object v14, v11, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v15, v12, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v14, v15, :cond_22

    goto :goto_d

    .line 78
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 79
    :cond_23
    :goto_d
    invoke-virtual {v1, v13, v11, v12}, Lcom/android/tools/r8/internal/vn0;->a(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    goto :goto_b

    .line 80
    :cond_24
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 81
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/f60;

    .line 82
    iget-object v11, v10, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 83
    invoke-virtual {v11, v9}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v11

    .line 84
    iget-object v10, v10, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 85
    iget-object v10, v10, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 86
    invoke-virtual {v10, v7}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v10

    if-eq v10, v11, :cond_25

    .line 87
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v12

    if-nez v12, :cond_25

    .line 88
    sget-boolean v12, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v12, :cond_27

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v6, :cond_26

    goto :goto_f

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_27
    :goto_f
    add-int/lit8 v12, v7, -0x1

    .line 89
    invoke-virtual {v1, v12, v11, v10}, Lcom/android/tools/r8/internal/vn0;->c(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V

    goto :goto_e

    .line 90
    :cond_28
    iget v2, v0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/2addr v2, v6

    .line 91
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/vn0;->a(I)I

    move-result v1

    if-lez v1, :cond_29

    .line 92
    iput v2, v0, Lcom/android/tools/r8/internal/mS;->p:I

    .line 93
    iget v2, v0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/tools/r8/internal/mS;->i:I

    .line 94
    :cond_29
    new-instance v2, Lcom/android/tools/r8/internal/MD;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/MD;-><init>(Lcom/android/tools/r8/internal/mS;I)V

    return-object v2
.end method

.method public final l(Lcom/android/tools/r8/internal/FT;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    if-le v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :cond_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/FT;

    .line 4
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_3
    return v1
.end method

.method public final m(Lcom/android/tools/r8/internal/FT;)Z
    .locals 2

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p1

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final m()[I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/dI;

    const/16 v1, 0x10

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/FT;

    .line 5
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FT;->k()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v3

    .line 6
    :goto_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 7
    iget v7, v5, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr v7, v6

    .line 8
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v5, v5, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :cond_3
    if-ge v7, v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/FT;

    .line 11
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->k()Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v3

    .line 12
    :goto_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/FT;->o()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 13
    iget v10, v8, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr v10, v9

    .line 14
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 15
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->p:I

    const/high16 v2, -0x80000000

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    .line 16
    :goto_2
    iget v5, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/2addr v5, v4

    if-ge v1, v5, :cond_5

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->c:I

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->n()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v3

    .line 21
    :goto_3
    invoke-static {v5}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v5

    add-int/2addr v5, v1

    .line 22
    sget-boolean v1, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v1, :cond_9

    move v1, v3

    :goto_4
    if-ge v1, v5, :cond_9

    .line 23
    sget-boolean v6, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 24
    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/mS;->i:I

    add-int/2addr v1, v4

    .line 25
    iget v4, p0, Lcom/android/tools/r8/internal/mS;->p:I

    if-eq v4, v2, :cond_a

    sub-int v2, v1, v4

    goto :goto_6

    :cond_a
    move v2, v3

    :goto_6
    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 26
    new-array v2, v1, [I

    move v4, v3

    :goto_7
    if-ge v3, v1, :cond_c

    add-int v6, v5, v3

    .line 27
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v6

    if-nez v6, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 28
    :cond_b
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    return-object v2

    :cond_d
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n(Lcom/android/tools/r8/internal/FT;)V
    .locals 4

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/yF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/yF0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 13
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 14
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    if-ne v2, v0, :cond_2

    .line 16
    iget-object v0, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v3, Lcom/android/tools/r8/internal/kS;->f:Lcom/android/tools/r8/internal/kS;

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kS;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/mS;->d:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    return v2

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->V:Z

    xor-int/2addr v0, v2

    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method public final o(Lcom/android/tools/r8/internal/FT;)V
    .locals 4

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/uk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/uk1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w()Lcom/android/tools/r8/internal/I3;

    move-result-object v0

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 29
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    return-void

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final o()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 2
    iget-object v5, v4, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 3
    new-instance v6, Lcom/android/tools/r8/internal/sk1;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/internal/sk1;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v5

    .line 5
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/NJ;

    .line 7
    iget v6, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v7

    .line 10
    iget v8, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 11
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v8, -0x1

    :goto_1
    if-ne v7, v9, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 13
    invoke-virtual {v6, v8, v7}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v6

    .line 14
    iget-object v7, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_2
    sget-boolean v7, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_4
    :goto_3
    iput-object v3, v6, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    .line 17
    iget v7, v3, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/2addr v7, v10

    .line 18
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 19
    iget-object v7, p0, Lcom/android/tools/r8/internal/mS;->g:Lcom/android/tools/r8/internal/kS;

    .line 20
    iget v3, v3, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v3, v3, 0x2

    .line 21
    invoke-virtual {v6, v3, v7}, Lcom/android/tools/r8/internal/FT;->a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;

    move-result-object v3

    .line 22
    iget-object v6, p0, Lcom/android/tools/r8/internal/mS;->m:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    move v3, v10

    goto :goto_0

    :cond_6
    return v3
.end method

.method public final p(Lcom/android/tools/r8/internal/FT;)V
    .locals 4

    iget v0, p1, Lcom/android/tools/r8/internal/FT;->k:I

    iget-object v1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v1

    sget-boolean v2, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/lI;->h(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mS;->j()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mS;->g(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget v1, v0, Lcom/android/tools/r8/internal/FT;->k:I

    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v1, p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mS;->p(Lcom/android/tools/r8/internal/FT;)V

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Live ranges:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, " "

    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/FT;

    iget-object v7, v6, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\nLive range ascii art: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mS;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/FT;

    iget-object v7, v6, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v8

    const/16 v9, 0x14

    if-eqz v8, :cond_1

    iget v8, v6, Lcom/android/tools/r8/internal/FT;->k:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " r"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v9}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (no reg): "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v9}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :goto_2
    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    move v10, v9

    :cond_2
    if-ge v9, v8, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/IT;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/android/tools/r8/internal/IT;->d:Lcom/android/tools/r8/internal/IT;

    if-ne v11, v12, :cond_3

    const-string v6, "--- infinite ---..."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    :goto_3
    iget v12, v11, Lcom/android/tools/r8/internal/IT;->b:I

    if-ge v10, v12, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget v12, v11, Lcom/android/tools/r8/internal/IT;->c:I

    if-ge v10, v12, :cond_2

    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
