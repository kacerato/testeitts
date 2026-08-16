.class public final Lcom/android/tools/r8/internal/hv;
.super Lcom/android/tools/r8/internal/H9;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/H9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;
    .locals 2

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->F()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 22
    const-string p0, "null"

    return-object p0

    .line 23
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result p0

    const-string v0, "initialized "

    if-eqz p0, :cond_4

    .line 24
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->p()Lcom/android/tools/r8/internal/CD;

    move-result-object p0

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {p0}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/internal/pu0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/internal/pu0;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_4
    sget-boolean p0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez p0, :cond_6

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_6
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p0, :cond_9

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 36
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_a
    sget-boolean p0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez p0, :cond_c

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 38
    :cond_c
    :goto_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->asPrimitive()Lcom/android/tools/r8/internal/z70;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/z70;->getTypeName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "primitive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_d
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 40
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 41
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uninitialized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_e
    const-string p0, "uninitialized-new"

    return-object p0

    .line 44
    :cond_f
    const-string p0, "uninitialized-this"

    return-object p0

    .line 45
    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez v0, :cond_12

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_12
    :goto_4
    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    .line 46
    const-string p0, "top"

    return-object p0

    .line 47
    :cond_13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "a single width value"

    return-object p0

    :cond_14
    const-string p0, "a double width value"

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    const-string p0, "null"

    return-object p0

    .line 16
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primitive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string p0, "object"

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw0;->d()Lcom/android/tools/r8/internal/D70;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D70;->E()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primitive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/pu0;)Ljava/lang/String;
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 51
    sget-boolean v1, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v1

    .line 53
    iget-object v1, v1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 55
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    .line 56
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_3
    invoke-static {v0}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/internal/pu0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 58
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 60
    const-string v0, "[]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wI;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 69
    const-string v1, " implements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_8
    instance-of v0, p0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_9

    .line 74
    const-string p0, "null"

    return-object p0

    .line 75
    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/hv;->d:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 76
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D70;->E()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;ILcom/android/tools/r8/internal/Kw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 4
    return-object p0
.end method

.method public final varargs a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 5
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 6
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 7
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 8
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 9
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 10
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 11
    return-object p0
.end method

.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 12
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    return-object p0
.end method

.method public final c(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    return-object p0
.end method

.method public final e()Lcom/android/tools/r8/internal/hv;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/hv;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/hv;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lcom/android/tools/r8/internal/H9;
    .locals 0

    return-object p0
.end method

.method public final g()Lcom/android/tools/r8/internal/H9;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
