.class public final Lcom/android/tools/r8/internal/EM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EM;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Boolean;
    .locals 1

    .line 81
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/vP;)Z
    .locals 3

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 75
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 77
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {p1}, Lcom/android/tools/r8/graph/L2;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/EM;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fP;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fP;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v0, v1

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fP;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object p0

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_7

    .line 23
    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    if-eqz v3, :cond_9

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 25
    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    if-eqz p1, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v2

    :goto_4
    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_5
    move p0, v2

    goto :goto_7

    :cond_b
    :goto_6
    move p0, v1

    :goto_7
    if-eqz p0, :cond_c

    return v1

    :cond_c
    return v2
.end method

.method public static a(Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/internal/IO;)Z
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 43
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    invoke-static {v0}, Lcom/android/tools/r8/internal/a2;->a(Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lcom/android/tools/r8/internal/a2;->c:Lcom/android/tools/r8/internal/a2;

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    sget-object v0, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    goto :goto_1

    .line 50
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/EM;->b:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 51
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/a2;->e:Lcom/android/tools/r8/internal/a2;

    .line 52
    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 53
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    .line 54
    iget-object v3, p1, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    .line 55
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    .line 57
    iget-object v3, p1, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    .line 58
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p0

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/internal/IO;->d:Lcom/android/tools/r8/internal/LX;

    .line 61
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EM;->a(ZLcom/android/tools/r8/internal/LX;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public static a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/x40;)Z
    .locals 5

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/x40;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/mP;

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->m0()[Lcom/android/tools/r8/graph/r0;

    move-result-object p0

    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static a(ZLcom/android/tools/r8/internal/LX;)Z
    .locals 1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    instance-of v0, p1, Lcom/android/tools/r8/internal/IX;

    if-nez v0, :cond_1

    .line 64
    instance-of p1, p1, Lcom/android/tools/r8/internal/JX;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 37
    check-cast p1, Lcom/android/tools/r8/internal/CO;

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 39
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 41
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/JM;)Ljava/lang/Boolean;
    .locals 4

    .line 82
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    sget-object v0, Lcom/android/tools/r8/internal/JM;->c:Lcom/android/tools/r8/internal/JM;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/JM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 85
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 86
    aget-byte v2, v2, v0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 87
    :goto_1
    iget v2, p3, Lcom/android/tools/r8/internal/JM;->b:I

    if-ge v0, v2, :cond_4

    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/EM;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 89
    iget-object p3, p3, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    .line 90
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/graph/j;)Z

    move-result v1

    .line 91
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/YM;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p3, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p3, p3, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/j;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 6
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/kP;)Ljava/lang/Boolean;
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    sget-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/M2;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 97
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    .line 98
    aget-byte p1, p1, v1

    int-to-char p1, p1

    .line 99
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result p2

    if-ne p1, p2, :cond_4

    :goto_1
    const/4 v1, 0x1

    .line 100
    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/DO;Lcom/android/tools/r8/graph/j;)Z
    .locals 3

    .line 27
    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/CO;

    .line 28
    iget-object v1, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 30
    :cond_0
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/CO;->b:Z

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 33
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 34
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/CD0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/CD0;-><init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/DO;)V

    .line 35
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/graph/j;)Z
    .locals 4

    .line 80
    new-instance v0, Lcom/android/tools/r8/internal/DD0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DD0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/ED0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/ED0;-><init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/M2;)V

    new-instance v2, Lcom/android/tools/r8/internal/FD0;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/tools/r8/internal/FD0;-><init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;)V

    new-instance v3, Lcom/android/tools/r8/internal/GD0;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/tools/r8/internal/GD0;-><init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/DP;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
