.class public Lcom/android/tools/r8/internal/FT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/FT;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic v:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/xw0;

.field public c:Lcom/android/tools/r8/internal/FT;

.field public d:Lcom/android/tools/r8/internal/FT;

.field public final e:Lcom/android/tools/r8/internal/FT;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lcom/android/tools/r8/internal/CH;

.field public h:Z

.field public i:Ljava/util/ArrayList;

.field public final j:Ljava/util/TreeSet;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Lcom/android/tools/r8/internal/NJ;

.field public o:Z

.field public final p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/FT;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    .line 32
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 33
    iput-object v0, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->h:Z

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    const/high16 v1, -0x80000000

    .line 37
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 38
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->l:I

    .line 39
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->m:Z

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    .line 41
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->o:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->p:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->q:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->r:Z

    const v2, 0xffff

    .line 45
    iput v2, p0, Lcom/android/tools/r8/internal/FT;->s:I

    .line 46
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->t:I

    .line 47
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->u:Z

    .line 48
    iput-object p1, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 50
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/FT;->p:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/FT;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->h:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    const/high16 v1, -0x80000000

    .line 9
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 10
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->l:I

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->m:Z

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->o:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->p:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->q:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->r:Z

    const v2, 0xffff

    .line 17
    iput v2, p0, Lcom/android/tools/r8/internal/FT;->s:I

    .line 18
    iput v1, p0, Lcom/android/tools/r8/internal/FT;->t:I

    .line 19
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->u:Z

    .line 20
    iput-object p1, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v2, v2, Lcom/android/tools/r8/internal/WX;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 25
    :cond_1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->p:Z

    .line 26
    iput-object p0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_3
    :goto_0
    iput-object p0, p1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kS;Lcom/android/tools/r8/internal/GT;)Z
    .locals 0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iget p1, p1, Lcom/android/tools/r8/internal/GT;->c:I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)Lcom/android/tools/r8/internal/FT;
    .locals 5

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v0

    if-gt v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    if-le v0, p1, :cond_2

    return-object p0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->q()V

    .line 109
    iget-object v2, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 110
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 111
    iget-object v3, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FT;

    .line 112
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v4

    if-gt v4, p1, :cond_6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v4

    if-le v4, p1, :cond_6

    return-object v3

    .line 113
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v4

    if-ne v4, p1, :cond_7

    move-object v0, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    return-object v0

    .line 114
    :cond_9
    sget-boolean p1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-eqz p1, :cond_a

    return-object v1

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Couldn\'t find split covering instruction position."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/FT;
    .locals 7

    .line 1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    .line 3
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-ne v1, v2, :cond_4

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GT;

    .line 6
    iget v0, v0, Lcom/android/tools/r8/internal/GT;->b:I

    if-ne v0, p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    .line 8
    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/GT;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget p1, p1, Lcom/android/tools/r8/internal/GT;->c:I

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/kS;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->j()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    const/high16 p1, -0x80000000

    .line 14
    iput p1, p0, Lcom/android/tools/r8/internal/FT;->k:I

    return-object p0

    .line 15
    :cond_4
    sget-boolean p2, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez p2, :cond_6

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/rE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rE0;-><init>()V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    const/4 p2, 0x1

    if-ne v0, p2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 18
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/FT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FT;-><init>(Lcom/android/tools/r8/internal/FT;)V

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v1, v1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v2, v1, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p2, :cond_8

    move v2, p2

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/FT;->h:Z

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v4

    if-ne p1, v4, :cond_9

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/IT;

    invoke-direct {p2, p1, p1}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    move v4, v3

    .line 26
    :goto_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 27
    iget-object v5, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/IT;

    .line 28
    iget v6, v5, Lcom/android/tools/r8/internal/IT;->b:I

    if-gt v6, p1, :cond_a

    iget v5, v5, Lcom/android/tools/r8/internal/IT;->c:I

    if-le v5, p1, :cond_a

    goto :goto_7

    :cond_a
    if-le v6, p1, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 29
    :cond_c
    :goto_7
    iget-object v5, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/IT;

    .line 30
    iget-object v6, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget v3, v5, Lcom/android/tools/r8/internal/IT;->b:I

    if-ge v3, p1, :cond_d

    .line 32
    new-instance v3, Lcom/android/tools/r8/internal/IT;

    iget v6, v5, Lcom/android/tools/r8/internal/IT;->b:I

    invoke-direct {v3, v6, p1}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Lcom/android/tools/r8/internal/IT;

    iget v5, v5, Lcom/android/tools/r8/internal/IT;->c:I

    invoke-direct {v3, p1, v5}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 34
    :cond_d
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    add-int/2addr v4, p2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    :goto_9
    iput-object v2, v0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 37
    iput-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 38
    :goto_a
    iget-object p2, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/GT;

    .line 39
    iget p2, p2, Lcom/android/tools/r8/internal/GT;->b:I

    if-lt p2, p1, :cond_e

    .line 40
    iget-object p2, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/GT;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/GT;)V

    goto :goto_a

    :cond_e
    const p1, 0xffff

    .line 41
    iput p1, p0, Lcom/android/tools/r8/internal/FT;->s:I

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/GT;

    .line 43
    iget p2, p2, Lcom/android/tools/r8/internal/GT;->c:I

    .line 44
    iget v1, p0, Lcom/android/tools/r8/internal/FT;->s:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/FT;->s:I

    goto :goto_b

    .line 45
    :cond_f
    sget-boolean p1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez p1, :cond_11

    iget-object p2, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_c

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_c
    if-nez p1, :cond_13

    .line 46
    iget-object p1, v0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_d

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_d
    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/internal/GT;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/tools/r8/internal/qE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/qE0;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GT;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/kS;)Lcom/android/tools/r8/internal/GT;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/tools/r8/internal/uE0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/uE0;-><init>(Lcom/android/tools/r8/internal/kS;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/GT;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FT;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p2, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    iget p1, p1, Lcom/android/tools/r8/internal/FT;->k:I

    .line 51
    iput p1, p0, Lcom/android/tools/r8/internal/FT;->l:I

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p2, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/GT;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 81
    iget p1, p1, Lcom/android/tools/r8/internal/GT;->c:I

    .line 82
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->s:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/FT;->s:I

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/IT;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    .line 69
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/tools/r8/internal/IT;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    sget-object v2, Lcom/android/tools/r8/internal/IT;->d:Lcom/android/tools/r8/internal/IT;

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    iget v2, p1, Lcom/android/tools/r8/internal/IT;->b:I

    .line 74
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    :goto_0
    iget v3, v0, Lcom/android/tools/r8/internal/IT;->c:I

    .line 76
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-le v3, v2, :cond_3

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    if-ne v3, v2, :cond_4

    .line 77
    iget p1, p1, Lcom/android/tools/r8/internal/IT;->c:I

    iput p1, v0, Lcom/android/tools/r8/internal/IT;->c:I

    goto :goto_3

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_3
    sget-boolean p1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 98
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    .line 54
    iget v1, p0, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 58
    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 59
    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/FT;->m:Z

    return-void
.end method

.method public final a(IZ)Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr v0, v1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 86
    iget p2, p0, Lcom/android/tools/r8/internal/FT;->k:I

    add-int/2addr p1, v1

    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/FT;)Z
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 63
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FT;->d(Lcom/android/tools/r8/internal/FT;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 64
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/FT;

    .line 66
    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    return v2

    :cond_2
    return v3
.end method

.method public final a(Ljava/util/List;)Z
    .locals 5

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FT;

    .line 88
    iget-object v3, v2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 89
    new-instance v4, Lcom/android/tools/r8/internal/tE0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/tE0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v4

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public b()I
    .locals 2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/tools/r8/internal/IT;

    iget v0, v0, Lcom/android/tools/r8/internal/IT;->c:I

    return v0
.end method

.method public b(Lcom/android/tools/r8/internal/FT;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/FT;->c:Lcom/android/tools/r8/internal/FT;

    .line 2
    iput-object p0, p1, Lcom/android/tools/r8/internal/FT;->d:Lcom/android/tools/r8/internal/FT;

    return-void
.end method

.method public final b(I)Z
    .locals 6

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/IT;

    .line 9
    iget v5, v4, Lcom/android/tools/r8/internal/IT;->b:I

    if-le v5, p1, :cond_2

    return v1

    .line 10
    :cond_2
    iget v4, v4, Lcom/android/tools/r8/internal/IT;->c:I

    if-ge p1, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final c()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->f()Z

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
    iget v0, p0, Lcom/android/tools/r8/internal/FT;->l:I

    return v0
.end method

.method public final c(Lcom/android/tools/r8/internal/FT;)I
    .locals 8

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/IT;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    const/4 v4, -0x1

    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/IT;

    .line 6
    :goto_0
    iget v6, v0, Lcom/android/tools/r8/internal/IT;->c:I

    iget v7, v5, Lcom/android/tools/r8/internal/IT;->b:I

    if-gt v6, v7, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/IT;

    goto :goto_0

    .line 9
    :cond_2
    iget v4, v0, Lcom/android/tools/r8/internal/IT;->b:I

    iget v5, v5, Lcom/android/tools/r8/internal/IT;->c:I

    if-ge v4, v5, :cond_0

    :cond_3
    return v4
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/FT;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->c()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p1

    sub-int/2addr v0, p1

    sget-boolean p1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    return v0
.end method

.method public final d()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget v1, v0, Lcom/android/tools/r8/internal/FT;->t:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v3, :cond_2

    .line 3
    iget-object v4, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v4, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    if-nez v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/FT;->m:Z

    if-nez v1, :cond_5

    .line 7
    iget v1, v0, Lcom/android/tools/r8/internal/FT;->k:I

    .line 8
    iput v1, v0, Lcom/android/tools/r8/internal/FT;->t:I

    .line 9
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 10
    iget-boolean v5, v4, Lcom/android/tools/r8/internal/FT;->m:Z

    if-nez v5, :cond_6

    .line 11
    iget v5, v0, Lcom/android/tools/r8/internal/FT;->t:I

    .line 12
    iget v4, v4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 13
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/tools/r8/internal/FT;->t:I

    goto :goto_2

    .line 14
    :cond_7
    iget v0, v0, Lcom/android/tools/r8/internal/FT;->t:I

    return v0
.end method

.method public final d(Lcom/android/tools/r8/internal/FT;)Z
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/IT;

    iget v0, v0, Lcom/android/tools/r8/internal/IT;->b:I

    return v0
.end method

.method public e(I)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/FT;->k:I

    return-void
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/FT;->l:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->n:Lcom/android/tools/r8/internal/NJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    sget-boolean v1, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/FT;->u:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->r:Z

    return-void
.end method

.method public final q()V
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FT;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->h:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/sE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sE0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/CH;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    iget-object v5, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    sget-boolean v0, Lcom/android/tools/r8/internal/FT;->v:Z

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FT;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_3
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/FT;->g:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v2

    if-gt v0, v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/FT;->h:Z

    :cond_8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/FT;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/IT;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
