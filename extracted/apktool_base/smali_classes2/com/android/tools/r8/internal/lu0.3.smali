.class public final Lcom/android/tools/r8/internal/lu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Z

.field public b:Z

.field public c:I

.field public final d:Lcom/android/tools/r8/graph/y;

.field public final e:Lcom/android/tools/r8/ir/optimize/r;

.field public final f:Lcom/android/tools/r8/internal/fB;

.field public final g:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/lu0;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/r;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/r;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lu0;->e:Lcom/android/tools/r8/ir/optimize/r;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/lu0;->a:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 106
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 107
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/lu0;

    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 p0, 0x5

    .line 60
    iput p0, v0, Lcom/android/tools/r8/internal/lu0;->c:I

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/nj1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/nj1;-><init>(Lcom/android/tools/r8/internal/lu0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lu0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 7
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/f60;->d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 8
    :goto_1
    sget-boolean v3, Lcom/android/tools/r8/internal/lu0;->h:Z

    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/lu0;->a:Z

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_2
    if-nez v3, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_4
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pu0;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)V
    .locals 4

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 75
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pu0;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f60;

    .line 78
    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pu0;)V
    .locals 6

    .line 79
    sget-boolean v0, Lcom/android/tools/r8/internal/lu0;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/xF0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/xF0;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/tools/r8/internal/lu0;->e:Lcom/android/tools/r8/ir/optimize/r;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v3

    .line 82
    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    .line 83
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 85
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    if-nez v0, :cond_5

    .line 86
    iget v0, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    .line 87
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "phi"

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    .line 88
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type change for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " defined by "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": was "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but expected "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (context: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    instance-of v0, p2, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_6

    return-void

    .line 91
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    goto :goto_2

    .line 93
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 94
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/pu0;)V

    goto :goto_2

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)V

    .line 96
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 98
    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    goto :goto_3

    .line 99
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f60;

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    :goto_5
    return-void
.end method

.method public final a(Ljava/lang/Iterable;I)V
    .locals 0

    .line 63
    iput p2, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    .line 64
    sget-boolean p2, Lcom/android/tools/r8/internal/lu0;->h:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/oj1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/oj1;-><init>(Lcom/android/tools/r8/internal/lu0;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lu0;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x3

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 11

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->e:Lcom/android/tools/r8/ir/optimize/r;

    .line 15
    iget-object v2, v1, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    .line 16
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 17
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/ir/optimize/r;->b:Lcom/android/tools/r8/internal/fB;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 19
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 20
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 21
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 22
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v7, v6, Lcom/android/tools/r8/internal/C4;

    if-eqz v7, :cond_2

    .line 25
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v6

    .line 26
    iget-object v7, v1, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_3

    .line 27
    :cond_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    .line 28
    invoke-static {v6, v5, v0, p1}, Lcom/android/tools/r8/ir/optimize/r;->a(Lcom/android/tools/r8/internal/C4;Lcom/android/tools/r8/internal/Y5;Ljava/util/Set;Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    .line 29
    :cond_4
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->u2()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 30
    iget-object v7, v6, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 31
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    iget-object v10, v1, Lcom/android/tools/r8/ir/optimize/r;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v9, v10}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 34
    sget-boolean v7, Lcom/android/tools/r8/ir/optimize/r;->d:Z

    if-nez v7, :cond_9

    .line 35
    iget-object v7, v6, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 36
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    .line 37
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    .line 38
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    if-ne v7, v6, :cond_5

    goto :goto_3

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_6
    iget-object v7, v6, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 41
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v7

    if-nez v7, :cond_a

    .line 42
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 43
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v7

    if-nez v7, :cond_a

    .line 46
    sget-boolean v7, Lcom/android/tools/r8/internal/C4;->m:Z

    if-nez v7, :cond_8

    iget-object v7, v6, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_8
    :goto_2
    sget-boolean v7, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v7, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    iput-object v7, v6, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    :cond_9
    :goto_3
    move v8, v3

    goto :goto_4

    .line 48
    :cond_a
    invoke-static {v6, v5, v0, p1}, Lcom/android/tools/r8/ir/optimize/r;->a(Lcom/android/tools/r8/internal/C4;Lcom/android/tools/r8/internal/Y5;Ljava/util/Set;Ljava/util/function/Consumer;)V

    :goto_4
    or-int/2addr v4, v8

    goto/16 :goto_1

    .line 49
    :cond_b
    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move v3, v4

    :goto_5
    if-eqz v3, :cond_c

    const/4 v1, 0x2

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 51
    new-instance v1, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 52
    iget-object v2, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    const/4 v2, 0x3

    .line 54
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    .line 56
    :cond_c
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/lu0;->b:Z

    if-nez p1, :cond_d

    .line 57
    iget-object p1, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_d
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    sget-boolean v0, Lcom/android/tools/r8/internal/lu0;->h:Z

    if-nez v0, :cond_3

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->e:Lcom/android/tools/r8/ir/optimize/r;

    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/nj1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/nj1;-><init>(Lcom/android/tools/r8/internal/lu0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lu0;->a()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/lu0;->c:I

    sget-boolean v0, Lcom/android/tools/r8/internal/lu0;->h:Z

    if-nez v0, :cond_3

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/lu0;->e:Lcom/android/tools/r8/ir/optimize/r;

    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/r;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->g:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lu0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/nj1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/nj1;-><init>(Lcom/android/tools/r8/internal/lu0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lu0;->a()V

    return-void
.end method
