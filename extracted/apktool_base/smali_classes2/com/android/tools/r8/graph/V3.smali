.class public Lcom/android/tools/r8/graph/V3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/b4;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/naming/r0;

.field public final b:Ljava/util/function/Predicate;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/naming/r0;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/android/tools/r8/graph/V3;->a:Lcom/android/tools/r8/naming/r0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/V3;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H3$b;)Lcom/android/tools/r8/graph/H3$b;
    .locals 1

    .line 54
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/V3;->c(Ljava/util/List;)Ljava/util/List;

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/V3;->e(Ljava/util/List;)Ljava/util/List;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 2

    if-nez p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    const/4 p2, 0x1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$f;)Lcom/android/tools/r8/graph/H3$f;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$f;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$g;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$h;)Lcom/android/tools/r8/graph/H3$h;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;
    .locals 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v0, p1, Lcom/android/tools/r8/graph/I3;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->c()Lcom/android/tools/r8/graph/I3;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/I3;->a:Lcom/android/tools/r8/graph/M2;

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->d()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 18
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p3

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H3$e;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H3$e;->j()Lcom/android/tools/r8/graph/H3$k;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    if-eq v0, v1, :cond_4

    .line 23
    sget-boolean v1, Lcom/android/tools/r8/graph/V3;->d:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/graph/H3$k;->e:Lcom/android/tools/r8/graph/H3$k;

    if-ne v0, v2, :cond_3

    const-string v0, "+"

    goto :goto_2

    :cond_3
    const-string v0, "-"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p3
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/pb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/pb;-><init>(Lcom/android/tools/r8/graph/V3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$e;Z)V
    .locals 7

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    const-string v1, ";"

    if-eqz v0, :cond_1

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->i()Lcom/android/tools/r8/graph/H3$j;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object p2, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->g()Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$a;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$a;

    return-void

    .line 36
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/graph/V3;->d:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->h()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_3

    .line 39
    :cond_5
    iget-object v2, p1, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    .line 41
    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/graph/V3;->a:Lcom/android/tools/r8/naming/r0;

    iget-object v3, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, p1, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    if-nez v3, :cond_7

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 44
    :cond_7
    iget-object v3, v3, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 45
    iget-object v4, p0, Lcom/android/tools/r8/graph/V3;->a:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 47
    iget-object v5, p0, Lcom/android/tools/r8/graph/V3;->b:Ljava/util/function/Predicate;

    iget-object v6, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v5, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v0, :cond_9

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_9
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    if-nez v4, :cond_b

    goto :goto_3

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;

    if-nez p2, :cond_c

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$i;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$e;Z)V

    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/ob;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/ob;-><init>(Lcom/android/tools/r8/graph/V3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/tools/r8/graph/qb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/qb;-><init>(Lcom/android/tools/r8/graph/V3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/rb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/rb;-><init>(Lcom/android/tools/r8/graph/V3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/V3;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
