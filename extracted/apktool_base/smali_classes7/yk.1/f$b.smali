.class public Lyk/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lyk/f$a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lyk/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field public i:Loh/g;

.field public j:Lyk/f$b;

.field public k:Ljava/lang/Boolean;

.field public l:Lyk/k;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Loh/g;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lyk/d;

.field public o:Z

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyk/d;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public final r:Lyk/f$d;


# direct methods
.method public constructor <init>(Lyk/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyk/f$b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyk/f$b;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyk/f$b;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyk/f$b;->p:Ljava/util/Map;

    new-instance v0, Lyk/f$b$a;

    invoke-direct {v0, p0}, Lyk/f$b$a;-><init>(Lyk/f$b;)V

    iput-object v0, p0, Lyk/f$b;->r:Lyk/f$d;

    iput-object p1, p0, Lyk/f$b;->a:Lyk/f$a;

    return-void
.end method

.method public static synthetic a(Lyk/f$b;)Lyk/f$d;
    .locals 0

    iget-object p0, p0, Lyk/f$b;->r:Lyk/f$d;

    return-object p0
.end method

.method public static synthetic b(Lyk/f$b;Lyk/f$d;)Lyk/f$b;
    .locals 0

    invoke-virtual {p0, p1}, Lyk/f$b;->h(Lyk/f$d;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lyk/f$b;
    .locals 2

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    iput-object v1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public varargs B([Loh/g;)Lyk/f$b;
    .locals 2

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iget-object v1, v0, Lyk/f$b;->m:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public C(ZLjava/lang/Object;)Lyk/f$b;
    .locals 1

    instance-of v0, p2, Lyk/f$b;

    if-eqz v0, :cond_0

    check-cast p2, Lyk/f$b;

    invoke-virtual {p2, p1}, Lyk/f$b;->m(Z)Lyk/f$b;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Lyk/f$a;

    if-eqz v0, :cond_1

    new-instance v0, Lyk/f$b;

    check-cast p2, Lyk/f$a;

    invoke-direct {v0, p2}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p1}, Lyk/f$b;->m(Z)Lyk/f$b;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lyk/f;->f(Ljava/lang/String;)Lyk/f$b;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to wrap item in builder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lyk/f$b;Lyk/f$c;)V
    .locals 3

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->EXTENSION:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    iget p2, p2, Lyk/f$c;->b:I

    iput p2, v0, Lyk/f$b;->q:I

    iget-object p1, p1, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lyk/f$f;

    if-eqz v2, :cond_1

    iget v2, p2, Lyk/f$c;->b:I

    check-cast v1, Lyk/f$f;

    invoke-virtual {p0, p1, v2, v1}, Lyk/f$b;->d(Lyk/f$b;ILyk/f$f;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v1

    iget v2, p2, Lyk/f$c;->b:I

    iput v2, v1, Lyk/f$b;->q:I

    iget-object v2, p1, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d(Lyk/f$b;ILyk/f$f;)V
    .locals 2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lyk/f$c;

    if-eqz v1, :cond_0

    check-cast v0, Lyk/f$c;

    invoke-virtual {p0, p1, v0}, Lyk/f$b;->c(Lyk/f$b;Lyk/f$c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v0

    iput p2, v0, Lyk/f$b;->q:I

    iget-object v1, p1, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(I)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput p1, v0, Lyk/f$b;->q:I

    return-object v0
.end method

.method public f()Lyk/c;
    .locals 22

    move-object/from16 v0, p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lyk/f$b;->a:Lyk/f$a;

    sget-object v2, Lyk/f$a;->ENUM:Lyk/f$a;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, v4

    move v5, v2

    :goto_0
    iget-object v6, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyk/f$b;

    iget-object v7, v6, Lyk/f$b;->h:Ljava/math/BigInteger;

    if-nez v7, :cond_0

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, v6, Lyk/f$b;->h:Ljava/math/BigInteger;

    add-int/lit8 v5, v5, 0x1

    :cond_0
    iget-object v7, v6, Lyk/f$b;->h:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lyk/f$b;->h:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate enum value at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v4

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyk/f$b;

    if-nez v8, :cond_3

    iget v6, v2, Lyk/f$b;->q:I

    if-lez v6, :cond_3

    move v8, v5

    :cond_3
    iget-boolean v6, v2, Lyk/f$b;->c:Z

    if-nez v6, :cond_4

    add-int/lit8 v18, v18, 0x1

    :cond_4
    if-nez v19, :cond_5

    iget-object v6, v2, Lyk/f$b;->i:Loh/g;

    if-eqz v6, :cond_5

    move/from16 v19, v5

    :cond_5
    invoke-virtual {v2}, Lyk/f$b;->f()Lyk/c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v20, Lyk/c;

    iget-object v2, v0, Lyk/f$b;->a:Lyk/f$a;

    iget-object v10, v0, Lyk/f$b;->i:Loh/g;

    if-nez v10, :cond_7

    iget-boolean v1, v0, Lyk/f$b;->c:Z

    if-eqz v1, :cond_7

    move v4, v5

    :cond_7
    iget-object v5, v0, Lyk/f$b;->e:Ljava/lang/String;

    iget-object v6, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    iget-object v7, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    iget-object v9, v0, Lyk/f$b;->h:Ljava/math/BigInteger;

    iget-object v11, v0, Lyk/f$b;->l:Lyk/k;

    iget-object v1, v0, Lyk/f$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v13, 0x0

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lyk/f$b;->m:Ljava/util/ArrayList;

    move-object v13, v1

    :goto_2
    iget-object v14, v0, Lyk/f$b;->n:Lyk/d;

    iget-boolean v15, v0, Lyk/f$b;->o:Z

    iget-object v1, v0, Lyk/f$b;->d:Ljava/lang/String;

    iget-object v12, v0, Lyk/f$b;->p:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x0

    goto :goto_3

    :cond_9
    iget-object v12, v0, Lyk/f$b;->p:Ljava/util/Map;

    move-object/from16 v16, v12

    :goto_3
    iget v12, v0, Lyk/f$b;->q:I

    move/from16 v17, v12

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v21

    invoke-direct/range {v1 .. v19}, Lyk/c;-><init>(Lyk/f$a;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Loh/g;Lyk/k;Ljava/util/List;Lyk/d;ZLjava/lang/String;Ljava/util/Map;IIZ)V

    return-object v20
.end method

.method public g()Lyk/f$b;
    .locals 1

    iget-object v0, p0, Lyk/f$b;->r:Lyk/f$d;

    invoke-virtual {p0, v0}, Lyk/f$b;->h(Lyk/f$d;)Lyk/f$b;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lyk/f$d;)Lyk/f$b;
    .locals 6

    new-instance v0, Lyk/f$b;

    iget-object v1, p0, Lyk/f$b;->a:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    iget-object v1, p0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyk/f$b;

    iget-object v4, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v2, v3}, Lyk/f$d;->a(ILyk/f$b;)Lyk/f$b;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lyk/f$b;->c:Z

    iput-boolean p1, v0, Lyk/f$b;->c:Z

    iget-object p1, p0, Lyk/f$b;->e:Ljava/lang/String;

    iput-object p1, v0, Lyk/f$b;->e:Ljava/lang/String;

    iget-object p1, p0, Lyk/f$b;->f:Ljava/math/BigInteger;

    iput-object p1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    iget-object p1, p0, Lyk/f$b;->g:Ljava/math/BigInteger;

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    iget-object p1, p0, Lyk/f$b;->i:Loh/g;

    iput-object p1, v0, Lyk/f$b;->i:Loh/g;

    iget-object p1, p0, Lyk/f$b;->h:Ljava/math/BigInteger;

    iput-object p1, v0, Lyk/f$b;->h:Ljava/math/BigInteger;

    iget-object p1, p0, Lyk/f$b;->k:Ljava/lang/Boolean;

    iput-object p1, v0, Lyk/f$b;->k:Ljava/lang/Boolean;

    iget-object p1, p0, Lyk/f$b;->l:Lyk/k;

    iput-object p1, v0, Lyk/f$b;->l:Lyk/k;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lyk/f$b;->m:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lyk/f$b;->m:Ljava/util/ArrayList;

    iget-object p1, p0, Lyk/f$b;->n:Lyk/d;

    iput-object p1, v0, Lyk/f$b;->n:Lyk/d;

    iget-boolean p1, p0, Lyk/f$b;->o:Z

    iput-boolean p1, v0, Lyk/f$b;->o:Z

    iget-object p1, p0, Lyk/f$b;->d:Ljava/lang/String;

    iput-object p1, v0, Lyk/f$b;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    iget-object v1, p0, Lyk/f$b;->p:Ljava/util/Map;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lyk/f$b;->p:Ljava/util/Map;

    iget p1, p0, Lyk/f$b;->q:I

    iput p1, v0, Lyk/f$b;->q:I

    return-object v0
.end method

.method public i(Lyk/k;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->l:Lyk/k;

    return-object v0
.end method

.method public j(Loh/g;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->i:Loh/g;

    return-object v0
.end method

.method public k(Lyk/d;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->n:Lyk/d;

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, p0, Lyk/f$b;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public m(Z)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-boolean p1, v0, Lyk/f$b;->c:Z

    return-object v0
.end method

.method public n(J)Lyk/f$b;
    .locals 2

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public o(Z)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public varargs p([Ljava/lang/Object;)Lyk/f$b;
    .locals 8

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_4

    aget-object v3, p1, v2

    instance-of v4, v3, Lyk/f$c;

    if-eqz v4, :cond_0

    check-cast v3, Lyk/f$c;

    invoke-virtual {p0, v0, v3}, Lyk/f$b;->c(Lyk/f$b;Lyk/f$c;)V

    goto :goto_2

    :cond_0
    instance-of v4, v3, Lyk/f$f;

    if-eqz v4, :cond_1

    iget v4, v0, Lyk/f$b;->q:I

    check-cast v3, Lyk/f$f;

    invoke-virtual {p0, v0, v4, v3}, Lyk/f$b;->d(Lyk/f$b;ILyk/f$f;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v6

    if-ge v4, v7, :cond_3

    iget-object v7, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {p0, v5, v6}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v3}, Lyk/f$b;->C(ZLjava/lang/Object;)Lyk/f$b;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public q(Ljava/lang/String;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lyk/f$b;
    .locals 2

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lyk/f$b;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public varargs s([Ljava/lang/String;)Lyk/f$b;
    .locals 5

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lyk/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyk/f$b;

    invoke-virtual {v3}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v4

    iget-object v3, v3, Lyk/f$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lyk/f$b;->o(Z)Lyk/f$b;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lyk/f$b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public t(Z)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-boolean p1, v0, Lyk/f$b;->o:Z

    return-object v0
.end method

.method public u(JJLoh/g;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    iput-object p5, v0, Lyk/f$b;->i:Loh/g;

    return-object v0
.end method

.method public v(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    iput-object p2, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public w(J)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public x(J)Lyk/f$b;
    .locals 1

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lyk/f$b;->f:Ljava/math/BigInteger;

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, v0, Lyk/f$b;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public y(ILyk/f$b;)Lyk/f$b;
    .locals 1

    new-instance v0, Lyk/f$b$b;

    invoke-direct {v0, p0, p1, p2}, Lyk/f$b$b;-><init>(Lyk/f$b;ILyk/f$b;)V

    invoke-virtual {p0, v0}, Lyk/f$b;->h(Lyk/f$d;)Lyk/f$b;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/String;)Lyk/f$b;
    .locals 2

    invoke-virtual {p0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v0

    iput-object p1, v0, Lyk/f$b;->d:Ljava/lang/String;

    iget-object v1, v0, Lyk/f$b;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object p1, v0, Lyk/f$b;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
