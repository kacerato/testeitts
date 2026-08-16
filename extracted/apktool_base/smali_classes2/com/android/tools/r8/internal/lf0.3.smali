.class public final Lcom/android/tools/r8/internal/lf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/mf0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Lcom/android/tools/r8/shaking/o3;

.field public final e:Lcom/android/tools/r8/naming/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lf0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lf0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lf0;->d:Lcom/android/tools/r8/shaking/o3;

    new-instance v0, Lcom/android/tools/r8/naming/l0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/l0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lf0;->e:Lcom/android/tools/r8/naming/l0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p3, v1}, Lcom/android/tools/r8/graph/M2;->b(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    if-eqz p2, :cond_4

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/tools/r8/internal/lf0;->b:Lcom/android/tools/r8/graph/u1;

    .line 49
    sget-boolean v0, Lcom/android/tools/r8/graph/M2;->j:Z

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p3

    .line 53
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    goto :goto_1

    .line 55
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/lf0;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/lf0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->c1:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/AssertionError;

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected name for inner class: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (outer class: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :cond_4
    :goto_1
    const/4 p1, 0x1

    move v0, p1

    move-object p2, p3

    .line 58
    :goto_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aA;

    .line 59
    iget-object v1, v1, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    .line 60
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    .line 62
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 63
    iget-object v1, v1, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 64
    iget-object v1, v1, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    .line 65
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    return-object p2

    .line 66
    :cond_7
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, p2, v1}, Lcom/android/tools/r8/graph/M2;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    add-int/2addr v0, p1

    goto :goto_2
.end method

.method public final a(Lcom/android/tools/r8/graph/K5;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lf0;->d:Lcom/android/tools/r8/shaking/o3;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->d:Lcom/android/tools/r8/shaking/o3;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->j()Lcom/android/tools/r8/internal/nJ$m;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    const-string v3, "/"

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lf0;->b(Lcom/android/tools/r8/graph/K5;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    return-object p1

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, v2, :cond_3

    return-object v0

    .line 13
    :cond_3
    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->c:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, v2, :cond_6

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lf0;->b(Lcom/android/tools/r8/graph/K5;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    const-string v0, ""

    goto :goto_3

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    return-object p1

    .line 19
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/lf0;->f:Z

    if-nez p1, :cond_8

    .line 20
    sget-object p1, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, p1, :cond_7

    goto :goto_2

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/lf0;->e:Lcom/android/tools/r8/naming/l0;

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/Yi1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Yi1;-><init>(Ljava/util/Set;)V

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/naming/l0;->a(Ljava/util/function/Predicate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/K5;)Z
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/lf0;->d:Lcom/android/tools/r8/shaking/o3;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->d:Lcom/android/tools/r8/shaking/o3;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->j()Lcom/android/tools/r8/internal/nJ$m;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, v2, :cond_0

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 35
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/nJ$m;->c:Lcom/android/tools/r8/internal/nJ$m;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lf0;->b(Lcom/android/tools/r8/graph/K5;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 39
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/lf0;->f:Z

    if-nez p1, :cond_5

    .line 40
    sget-object p1, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, p1, :cond_4

    goto :goto_1

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/K5;)Z
    .locals 5

    iget-object p1, p1, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/lf0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/h1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/lf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/F1;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/lf0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
