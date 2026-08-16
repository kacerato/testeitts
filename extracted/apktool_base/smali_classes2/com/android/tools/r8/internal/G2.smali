.class public abstract Lcom/android/tools/r8/internal/G2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Yx0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance p0, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 80
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 84
    new-instance p0, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 85
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p0

    .line 87
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/jF0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/jF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 88
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/o50;
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget p0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 107
    invoke-virtual {v0, p3, p0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    .line 108
    invoke-static {p2, p0}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/G2;->b(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 110
    sget p0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-static {v2, p0}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 113
    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0

    .line 114
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 115
    invoke-virtual {p3, v3, v4}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 116
    sget v4, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v4, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 117
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v3

    .line 118
    invoke-interface {v3}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0

    .line 120
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Ljava/util/Set;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_4

    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    .line 123
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-nez v3, :cond_4

    .line 124
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 125
    invoke-static {p2, p0}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0

    .line 126
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    .line 127
    sget-boolean v3, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez v3, :cond_7

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 128
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 129
    invoke-virtual {p3, v3, v5}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 130
    sget v5, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v5, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 131
    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v3

    .line 132
    invoke-interface {v4, v3}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v2, p2

    move-object v4, v3

    goto :goto_0

    .line 133
    :cond_8
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Ljava/util/Set;
    .locals 4

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 64
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 71
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 72
    iget-object v3, v3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 73
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 75
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/kF0;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/kF0;-><init>(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p0

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/internal/jF0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/jF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/androidapi/f;)Z
    .locals 5

    .line 91
    sget-boolean v0, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    const-string v1, "Landroidx/"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Y0()Ljava/lang/String;

    move-result-object p0

    .line 94
    const-string v0, "Api"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x3

    .line 95
    const-string v2, "Impl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    if-lt v2, v0, :cond_8

    sub-int v3, v2, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 97
    sget-object v0, Lcom/android/tools/r8/internal/zq0;->a:[C

    move v0, v1

    .line 98
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_8

    .line 102
    sget-object v0, Lcom/android/tools/r8/internal/C2;->O:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    if-le p0, v0, :cond_7

    goto :goto_2

    .line 103
    :cond_7
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    if-gt p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public static a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 134
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 135
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 136
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    .line 137
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/H2;->a:Z

    if-nez v2, :cond_0

    .line 138
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->B6:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 139
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    sget p1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 140
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    .line 141
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 6
    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 7
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 9
    invoke-interface {p2, p0}, Lcom/android/tools/r8/androidapi/f;->c(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 12
    invoke-interface {p0, p2}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 5

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eq p1, p2, :cond_4

    goto :goto_2

    .line 36
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 37
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    return v3

    :cond_6
    if-nez v0, :cond_8

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 41
    :cond_8
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_9

    return v2

    .line 42
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-nez v4, :cond_a

    return v3

    .line 43
    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v4

    .line 44
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/H2;->a:Z

    if-nez v4, :cond_b

    return v2

    .line 45
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    .line 46
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    if-eqz v4, :cond_c

    return v3

    .line 47
    :cond_c
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez v0, :cond_e

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_e
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    sget-boolean v1, Lcom/android/tools/r8/graph/u2;->u:Z

    if-eqz p2, :cond_f

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p2

    goto :goto_5

    :cond_f
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_15

    if-nez v0, :cond_11

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    .line 52
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v1, :cond_10

    goto :goto_6

    .line 53
    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_11
    :goto_6
    if-nez v0, :cond_13

    .line 54
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Clients should first check if the definition is present on all apis since the min api"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 55
    :cond_13
    :goto_7
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 56
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_14

    move p0, v2

    goto :goto_8

    .line 59
    :cond_14
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    .line 60
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    .line 61
    invoke-interface {p1, p0}, Lcom/android/tools/r8/androidapi/f;->e(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    :goto_8
    if-eqz p0, :cond_15

    return v3

    :cond_15
    return v2
.end method

.method public static a(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v0, p0, Lcom/android/tools/r8/internal/Am0;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->K()Lcom/android/tools/r8/internal/Am0;

    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 20
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    sget-boolean v0, Lcom/android/tools/r8/graph/u2;->u:Z

    if-eqz p0, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p0

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p0

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 26
    invoke-interface {p2, p0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p0

    sget-boolean v0, Lcom/android/tools/r8/graph/z4;->f:Z

    if-eqz p0, :cond_5

    .line 27
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->j()Lcom/android/tools/r8/graph/z4;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_6

    return v1

    .line 28
    :cond_6
    iget-object v0, p2, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 29
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    .line 30
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    iget-object p1, p2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 32
    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->c(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p0

    return p0

    .line 33
    :cond_7
    invoke-interface {p1, p0}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p0

    return p0

    :cond_8
    return v1
.end method

.method public static b(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/tools/r8/internal/lF0;

    invoke-direct {p1, p2, p0}, Lcom/android/tools/r8/internal/lF0;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/tools/r8/internal/Ws0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/E0;

    return-object p0
.end method
