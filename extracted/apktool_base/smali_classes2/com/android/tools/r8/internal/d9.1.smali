.class public Lcom/android/tools/r8/internal/d9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/jy;I)Lcom/android/tools/r8/internal/b9;
    .locals 3

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/b9;

    .line 39
    invoke-static {p0}, Lcom/android/tools/r8/internal/TU;->a(Lcom/android/tools/r8/internal/jG;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p1}, Lcom/android/tools/r8/internal/TU;->a(Lcom/android/tools/r8/internal/jG;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not assign \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. The local at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' not being assignable to \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/b9;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jG;)Lcom/android/tools/r8/internal/a9;
    .locals 5

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result v0

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result v1

    .line 30
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-gt v1, v0, :cond_6

    .line 31
    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    goto :goto_3

    :cond_2
    sget v2, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    .line 32
    :goto_3
    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/jy;

    goto :goto_4

    :cond_3
    sget v3, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v3, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    .line 33
    :goto_4
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 34
    sget v3, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v3, Lcom/android/tools/r8/internal/qt0;->c:Lcom/android/tools/r8/internal/qt0;

    .line 35
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/jy;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 36
    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/jy;I)Lcom/android/tools/r8/internal/b9;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 37
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/c9;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/c9;-><init>()V

    return-object p1
.end method

.method public final a(Ljava/util/Deque;Ljava/util/Deque;)Lcom/android/tools/r8/internal/a9;
    .locals 6

    .line 41
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/b9;

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and destination stack "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not the same size"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/b9;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_0
    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/S60;

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/S60;

    .line 48
    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/jy;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/b9;

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not assign \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. The stack value at index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (from top) with \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' not being assignable to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/b9;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/c9;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/c9;-><init>()V

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/jy;)Z
    .locals 5

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/O5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v3, v0, Lcom/android/tools/r8/internal/e40;

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/O5;

    .line 8
    instance-of v4, v3, Lcom/android/tools/r8/internal/e40;

    if-eqz v4, :cond_2

    return v2

    .line 9
    :cond_2
    instance-of v3, v3, Lcom/android/tools/r8/internal/ev0;

    if-eqz v3, :cond_5

    instance-of v0, v0, Lcom/android/tools/r8/internal/ev0;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 11
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1

    .line 12
    :cond_5
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->l()Lcom/android/tools/r8/internal/Jm0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jm0;->I()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->l()Lcom/android/tools/r8/internal/Jm0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jm0;->I()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2

    .line 16
    :cond_7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 17
    :cond_8
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->h()Lcom/android/tools/r8/internal/ED;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 20
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->h()Lcom/android/tools/r8/internal/ED;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    .line 22
    :cond_9
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->h()Lcom/android/tools/r8/internal/ED;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_1
    return v1

    .line 23
    :cond_c
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->u()Lcom/android/tools/r8/internal/Fx0;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->u()Lcom/android/tools/r8/internal/Fx0;

    move-result-object p2

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/d9;->c:Z

    if-nez v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/O5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v0, v0, Lcom/android/tools/r8/internal/qt0;

    if-nez v0, :cond_d

    goto :goto_2

    .line 26
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_e
    :goto_2
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/Fx0;->a(Lcom/android/tools/r8/internal/Fx0;)Lcom/android/tools/r8/internal/Fx0;

    move-result-object p1

    if-ne p1, p2, :cond_f

    return v1

    :cond_f
    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/d9;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p2, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    :cond_5
    const/4 v1, 0x1

    if-ne p1, p2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_6

    :cond_7
    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_1
    if-nez v0, :cond_b

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v2, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    return v3

    :cond_f
    if-nez v0, :cond_11

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object p1, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->f6:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v0, :cond_13

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    if-ne p2, p1, :cond_12

    goto :goto_4

    :cond_12
    return v3

    :cond_13
    :goto_4
    return v1

    :cond_14
    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_5

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    :cond_17
    :goto_6
    return v3
.end method
