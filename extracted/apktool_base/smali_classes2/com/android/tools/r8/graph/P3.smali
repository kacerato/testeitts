.class public final Lcom/android/tools/r8/graph/P3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/graph/P3;->a:Lcom/android/tools/r8/graph/y;

    iput p1, p0, Lcom/android/tools/r8/graph/P3;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/graph/P3;->b:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$g;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/P3;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/android/tools/r8/graph/fa;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/fa;-><init>()V

    .line 5
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p2

    .line 7
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/graph/P3;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$i;

    .line 12
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 14
    :cond_3
    sget-object v1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    .line 15
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 16
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$g;->d:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$i;

    .line 18
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 20
    :cond_6
    sget-object v1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    .line 21
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$g;->e()Lcom/android/tools/r8/graph/H3$h;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->b()Lcom/android/tools/r8/graph/H3$i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;
    .locals 1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v0, p1, Lcom/android/tools/r8/graph/I3;

    if-eqz v0, :cond_0

    .line 38
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->d()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->i()Lcom/android/tools/r8/graph/H3$j;

    move-result-object p1

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    .line 44
    iget-object p2, p2, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    .line 45
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 47
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/tools/r8/graph/P3;->c:I

    .line 48
    invoke-static {p1}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->e:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 51
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->g()Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    .line 53
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$a;->b:Lcom/android/tools/r8/graph/H3$i;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p1

    return-object p1

    .line 55
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->h()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    .line 58
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 59
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/graph/P3;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p1

    return-object p1

    .line 60
    :cond_9
    :goto_2
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;
    .locals 3

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$e;

    .line 62
    invoke-virtual {p0, v1, p3}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-boolean p1, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/tools/r8/graph/P3;->c:I

    .line 65
    invoke-static {p1}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object v1

    .line 67
    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/graph/P3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_4

    .line 68
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 69
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 70
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 71
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_8

    .line 72
    sget-boolean p1, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/tools/r8/graph/P3;->c:I

    .line 73
    invoke-static {p1}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 74
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_7
    :goto_1
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->d:Lcom/android/tools/r8/graph/R3$a;

    return-object p1

    .line 76
    :cond_8
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;
    .locals 3

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H3$f;

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    .line 28
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$e;

    .line 31
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 33
    :cond_3
    sget-object v1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    .line 34
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 35
    :cond_4
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1
.end method
