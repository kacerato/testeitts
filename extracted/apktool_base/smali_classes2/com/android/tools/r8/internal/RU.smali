.class public final Lcom/android/tools/r8/internal/RU;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xt0;

.field public final b:Lcom/android/tools/r8/internal/xt0;

.field public final c:Lcom/android/tools/r8/internal/z30;

.field public final synthetic d:Lcom/android/tools/r8/internal/SU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/SU;Lcom/android/tools/r8/internal/Oz;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/z30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/RU;->d:Lcom/android/tools/r8/internal/SU;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    new-instance p1, Lcom/android/tools/r8/internal/xt0;

    invoke-direct {p1, p2, p4, p3}, Lcom/android/tools/r8/internal/xt0;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RU;->a:Lcom/android/tools/r8/internal/xt0;

    new-instance p1, Lcom/android/tools/r8/internal/xt0;

    invoke-direct {p1, p2, p6, p5}, Lcom/android/tools/r8/internal/xt0;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RU;->b:Lcom/android/tools/r8/internal/xt0;

    iput-object p7, p0, Lcom/android/tools/r8/internal/RU;->c:Lcom/android/tools/r8/internal/z30;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 6

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/RU;->c:Lcom/android/tools/r8/internal/z30;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/z30;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x1

    const-string v4, "duplicate key: "

    if-ne v0, v3, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/RU;->a:Lcom/android/tools/r8/internal/xt0;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/RU;->b:Lcom/android/tools/r8/internal/xt0;

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/mL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    return-object v2

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 26
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    sget-object v0, Lcom/android/tools/r8/internal/kL;->a:Lcom/android/tools/r8/internal/kL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v0, p1, Lcom/android/tools/r8/internal/pL;

    if-eqz v0, :cond_4

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/pL;

    const/4 v3, 0x5

    .line 30
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/pL;->c(I)V

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;

    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    .line 34
    new-instance v5, Lcom/android/tools/r8/internal/jL;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_5

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_5
    const/16 v3, 0xd

    if-ne v0, v3, :cond_6

    .line 37
    iput v1, p1, Lcom/android/tools/r8/internal/lL;->h:I

    goto :goto_2

    :cond_6
    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    const/16 v0, 0x8

    .line 38
    iput v0, p1, Lcom/android/tools/r8/internal/lL;->h:I

    goto :goto_2

    :cond_7
    const/16 v3, 0xe

    if-ne v0, v3, :cond_9

    const/16 v0, 0xa

    .line 39
    iput v0, p1, Lcom/android/tools/r8/internal/lL;->h:I

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/RU;->a:Lcom/android/tools/r8/internal/xt0;

    .line 41
    iget-object v0, v0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/android/tools/r8/internal/RU;->b:Lcom/android/tools/r8/internal/xt0;

    .line 44
    iget-object v3, v3, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 45
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 47
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/mL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->h()V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RU;->d:Lcom/android/tools/r8/internal/SU;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->e()V

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/RU;->b:Lcom/android/tools/r8/internal/xt0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/xt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->g()V

    return-void
.end method
