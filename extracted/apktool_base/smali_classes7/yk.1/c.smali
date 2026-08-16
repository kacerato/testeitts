.class public Lyk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyk/f$a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/math/BigInteger;

.field public final f:Ljava/math/BigInteger;

.field public final g:Z

.field public final h:Ljava/math/BigInteger;

.field public final i:Loh/g;

.field public final j:Lyk/k;

.field public final k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk/c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loh/g;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lyk/d;

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyk/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lyk/c;

.field public final s:I

.field public final t:I


# direct methods
.method public constructor <init>(Lyk/c;Lyk/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyk/c;->a:Lyk/f$a;

    iput-object v0, p0, Lyk/c;->a:Lyk/f$a;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lyk/c;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lyk/c;->b:Ljava/util/List;

    iget-boolean v1, p1, Lyk/c;->c:Z

    iput-boolean v1, p0, Lyk/c;->c:Z

    iget-object v1, p1, Lyk/c;->d:Ljava/lang/String;

    iput-object v1, p0, Lyk/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lyk/c;->e:Ljava/math/BigInteger;

    iput-object v1, p0, Lyk/c;->e:Ljava/math/BigInteger;

    iget-object v1, p1, Lyk/c;->f:Ljava/math/BigInteger;

    iput-object v1, p0, Lyk/c;->f:Ljava/math/BigInteger;

    iget-boolean v1, p1, Lyk/c;->g:Z

    iput-boolean v1, p0, Lyk/c;->g:Z

    iget-object v1, p1, Lyk/c;->h:Ljava/math/BigInteger;

    iput-object v1, p0, Lyk/c;->h:Ljava/math/BigInteger;

    iget-object v1, p1, Lyk/c;->i:Loh/g;

    iput-object v1, p0, Lyk/c;->i:Loh/g;

    iget-object v1, p1, Lyk/c;->j:Lyk/k;

    iput-object v1, p0, Lyk/c;->j:Lyk/k;

    iget-object v1, p1, Lyk/c;->m:Ljava/util/List;

    iput-object v1, p0, Lyk/c;->m:Ljava/util/List;

    iget-object v1, p1, Lyk/c;->n:Lyk/d;

    iput-object v1, p0, Lyk/c;->n:Lyk/d;

    iget-boolean v1, p1, Lyk/c;->o:Z

    iput-boolean v1, p0, Lyk/c;->o:Z

    iget-object v1, p1, Lyk/c;->p:Ljava/lang/String;

    iput-object v1, p0, Lyk/c;->p:Ljava/lang/String;

    iget-object v1, p1, Lyk/c;->q:Ljava/util/Map;

    iput-object v1, p0, Lyk/c;->q:Ljava/util/Map;

    iput-object p2, p0, Lyk/c;->r:Lyk/c;

    iget p2, p1, Lyk/c;->t:I

    iput p2, p0, Lyk/c;->t:I

    iget p2, p1, Lyk/c;->s:I

    iput p2, p0, Lyk/c;->s:I

    iget-boolean p1, p1, Lyk/c;->k:Z

    iput-boolean p1, p0, Lyk/c;->k:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyk/c;

    iput-object p0, p2, Lyk/c;->r:Lyk/c;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lyk/f$a;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Loh/g;Lyk/k;Ljava/util/List;Lyk/d;ZLjava/lang/String;Ljava/util/Map;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyk/f$a;",
            "Ljava/util/List<",
            "Lyk/c;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Z",
            "Ljava/math/BigInteger;",
            "Loh/g;",
            "Lyk/k;",
            "Ljava/util/List<",
            "Loh/g;",
            ">;",
            "Lyk/d;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyk/d;",
            ">;IIZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lyk/c;->a:Lyk/f$a;

    move-object v2, p2

    iput-object v2, v0, Lyk/c;->b:Ljava/util/List;

    move v3, p3

    iput-boolean v3, v0, Lyk/c;->c:Z

    move-object v3, p4

    iput-object v3, v0, Lyk/c;->d:Ljava/lang/String;

    move-object v3, p5

    iput-object v3, v0, Lyk/c;->e:Ljava/math/BigInteger;

    move-object v3, p6

    iput-object v3, v0, Lyk/c;->f:Ljava/math/BigInteger;

    move v3, p7

    iput-boolean v3, v0, Lyk/c;->g:Z

    move-object v3, p8

    iput-object v3, v0, Lyk/c;->h:Ljava/math/BigInteger;

    move-object v3, p9

    iput-object v3, v0, Lyk/c;->i:Loh/g;

    move-object v3, p10

    iput-object v3, v0, Lyk/c;->j:Lyk/k;

    if-eqz p11, :cond_0

    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v0, Lyk/c;->m:Ljava/util/List;

    move-object/from16 v3, p12

    iput-object v3, v0, Lyk/c;->n:Lyk/d;

    move/from16 v3, p13

    iput-boolean v3, v0, Lyk/c;->o:Z

    move-object/from16 v3, p14

    iput-object v3, v0, Lyk/c;->p:Ljava/lang/String;

    move/from16 v3, p16

    iput v3, v0, Lyk/c;->t:I

    move/from16 v3, p17

    iput v3, v0, Lyk/c;->s:I

    move/from16 v3, p18

    iput-boolean v3, v0, Lyk/c;->k:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lyk/c;->q:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyk/c;

    iput-object v0, v2, Lyk/c;->r:Lyk/c;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static c(Lyk/c;Lyk/c;)Lyk/c;
    .locals 1

    iget-object v0, p0, Lyk/c;->n:Lyk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyk/d;->build()Lyk/c;

    move-result-object p0

    invoke-virtual {p0}, Lyk/c;->p()Lyk/c;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Lyk/c;

    invoke-direct {v0, p0, p1}, Lyk/c;-><init>(Lyk/c;Lyk/c;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lyk/c;->o:Z

    return v0
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    invoke-virtual {p0}, Lyk/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lyk/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lyk/c;->n()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lyk/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyk/c;

    invoke-virtual {v2}, Lyk/c;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lyk/c;->g()Loh/g;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyk/c;->l:Ljava/util/List;

    :cond_3
    invoke-virtual {p0}, Lyk/c;->n()Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "MIN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "MAX"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Lyk/d;
    .locals 3

    iget-object v0, p0, Lyk/c;->q:Ljava/util/Map;

    iget-object v1, p0, Lyk/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyk/c;->q:Ljava/util/Map;

    iget-object v1, p0, Lyk/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyk/d;

    return-object v0

    :cond_0
    iget-object v0, p0, Lyk/c;->r:Lyk/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lyk/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyk/c;->H(Ljava/lang/String;)Lyk/d;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyk/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H(Ljava/lang/String;)Lyk/d;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyk/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyk/c;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyk/c;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyk/d;

    return-object p1

    :cond_0
    iget-object v0, p0, Lyk/c;->r:Lyk/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lyk/c;->H(Ljava/lang/String;)Lyk/d;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/c;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyk/c;->l()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/c;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, " (E)"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lyk/f$a;
    .locals 1

    iget-object v0, p0, Lyk/c;->a:Lyk/f$a;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lyk/c;->t:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_c

    :cond_1
    check-cast p1, Lyk/c;

    iget-boolean v2, p0, Lyk/c;->c:Z

    iget-boolean v3, p1, Lyk/c;->c:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lyk/c;->g:Z

    iget-boolean v3, p1, Lyk/c;->g:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lyk/c;->k:Z

    iget-boolean v3, p1, Lyk/c;->k:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lyk/c;->o:Z

    iget-boolean v3, p1, Lyk/c;->o:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lyk/c;->s:I

    iget v3, p1, Lyk/c;->s:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lyk/c;->t:I

    iget v3, p1, Lyk/c;->t:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lyk/c;->a:Lyk/f$a;

    iget-object v3, p1, Lyk/c;->a:Lyk/f$a;

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lyk/c;->b:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lyk/c;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lyk/c;->b:Ljava/util/List;

    if-eqz v2, :cond_a

    :goto_0
    return v1

    :cond_a
    iget-object v2, p0, Lyk/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lyk/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Lyk/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    :cond_c
    iget-object v2, p0, Lyk/c;->e:Ljava/math/BigInteger;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lyk/c;->e:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_d
    iget-object v2, p1, Lyk/c;->e:Ljava/math/BigInteger;

    if-eqz v2, :cond_e

    :goto_2
    return v1

    :cond_e
    iget-object v2, p0, Lyk/c;->f:Ljava/math/BigInteger;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lyk/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_3

    :cond_f
    iget-object v2, p1, Lyk/c;->f:Ljava/math/BigInteger;

    if-eqz v2, :cond_10

    :goto_3
    return v1

    :cond_10
    iget-object v2, p0, Lyk/c;->h:Ljava/math/BigInteger;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lyk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_4

    :cond_11
    iget-object v2, p1, Lyk/c;->h:Ljava/math/BigInteger;

    if-eqz v2, :cond_12

    :goto_4
    return v1

    :cond_12
    iget-object v2, p0, Lyk/c;->i:Loh/g;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lyk/c;->i:Loh/g;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_13
    iget-object v2, p1, Lyk/c;->i:Loh/g;

    if-eqz v2, :cond_14

    :goto_5
    return v1

    :cond_14
    iget-object v2, p0, Lyk/c;->j:Lyk/k;

    if-eqz v2, :cond_15

    iget-object v3, p1, Lyk/c;->j:Lyk/k;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_6

    :cond_15
    iget-object v2, p1, Lyk/c;->j:Lyk/k;

    if-eqz v2, :cond_16

    :goto_6
    return v1

    :cond_16
    iget-object v2, p0, Lyk/c;->l:Ljava/util/List;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lyk/c;->l:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_7

    :cond_17
    iget-object v2, p1, Lyk/c;->l:Ljava/util/List;

    if-eqz v2, :cond_18

    :goto_7
    return v1

    :cond_18
    iget-object v2, p0, Lyk/c;->m:Ljava/util/List;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lyk/c;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_8

    :cond_19
    iget-object v2, p1, Lyk/c;->m:Ljava/util/List;

    if-eqz v2, :cond_1a

    :goto_8
    return v1

    :cond_1a
    iget-object v2, p0, Lyk/c;->n:Lyk/d;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lyk/c;->n:Lyk/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    :cond_1b
    iget-object v2, p1, Lyk/c;->n:Lyk/d;

    if-eqz v2, :cond_1c

    :goto_9
    return v1

    :cond_1c
    iget-object v2, p0, Lyk/c;->p:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Lyk/c;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_a

    :cond_1d
    iget-object v2, p1, Lyk/c;->p:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_a
    return v1

    :cond_1e
    iget-object v2, p0, Lyk/c;->q:Ljava/util/Map;

    iget-object p1, p1, Lyk/c;->q:Ljava/util/Map;

    if-eqz v2, :cond_20

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_b

    :cond_1f
    move v0, v1

    goto :goto_b

    :cond_20
    if-eqz p1, :cond_1f

    :goto_b
    return v0

    :cond_21
    :goto_c
    return v1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lyk/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lyk/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Loh/g;
    .locals 1

    iget-object v0, p0, Lyk/c;->i:Loh/g;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyk/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lyk/c;->a:Lyk/f$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lyk/c;->a:Lyk/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lyk/c;->c:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->e:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->f:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lyk/c;->g:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->h:Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->i:Loh/g;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->j:Lyk/k;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lyk/c;->k:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->l:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->m:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->n:Lyk/d;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lyk/c;->o:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->p:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyk/c;->q:Ljava/util/Map;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyk/c;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyk/c;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lyk/d;
    .locals 1

    iget-object v0, p0, Lyk/c;->n:Lyk/d;

    return-object v0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyk/c;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public k()Lyk/c;
    .locals 2

    invoke-virtual {p0}, Lyk/c;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyk/c;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyk/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyk/c;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lyk/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lyk/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lyk/c;->s:I

    return v0
.end method

.method public p()Lyk/c;
    .locals 1

    iget-object v0, p0, Lyk/c;->r:Lyk/c;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyk/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyk/c;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loh/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lyk/c;->m:Ljava/util/List;

    return-object v0
.end method

.method public t()Lyk/k;
    .locals 1

    iget-object v0, p0, Lyk/c;->j:Lyk/k;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyk/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyk/c;->a:Lyk/f$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lyk/c;->k:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lyk/c;->g:Z

    return v0
.end method

.method public w()I
    .locals 7

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v3, Lyk/f;->a:[Ljava/math/BigInteger;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v2

    :goto_1
    sget-object v4, Lyk/f;->b:[[Ljava/math/BigInteger;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v5

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_2

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v5

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_2

    neg-int v0, v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    return v1
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lyk/c;->c:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lyk/c;->g:Z

    return v0
.end method

.method public z()Z
    .locals 2

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyk/c;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
