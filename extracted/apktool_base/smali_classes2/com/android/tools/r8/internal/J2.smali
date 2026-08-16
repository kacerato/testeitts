.class public Lcom/android/tools/r8/internal/J2;
.super Lcom/android/tools/r8/internal/Q2;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/J2;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/android/tools/r8/internal/J2;

    if-ne p1, v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_4

    .line 82
    instance-of v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    check-cast p2, [Ljava/lang/String;

    .line 84
    aget-object v0, p2, v1

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/J2;

    if-eqz v0, :cond_1

    .line 86
    check-cast p2, Lcom/android/tools/r8/internal/J2;

    .line 87
    iget-object v0, p2, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    return-void

    .line 88
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 90
    check-cast p2, Ljava/util/List;

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 92
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Q2;->a()V

    return-void

    .line 94
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/J2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Q2;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 80
    invoke-static {p1, v2, v3}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    instance-of p2, p1, [B

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [B

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-byte v3, p1, v0

    .line 11
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 12
    :goto_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_5
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [Z

    if-nez p1, :cond_6

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    .line 16
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    array-length v2, p1

    :goto_3
    if-ge v0, v2, :cond_7

    aget-boolean v3, p1, v0

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object p1, v1

    .line 19
    :goto_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :cond_8
    instance-of p2, p1, [S

    if-eqz p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [S

    if-nez p1, :cond_9

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    .line 23
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    array-length v2, p1

    :goto_5
    if-ge v0, v2, :cond_a

    aget-short v3, p1, v0

    .line 25
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move-object p1, v1

    .line 26
    :goto_6
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 27
    :cond_b
    instance-of p2, p1, [C

    if-eqz p2, :cond_e

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [C

    if-nez p1, :cond_c

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 30
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    array-length v2, p1

    :goto_7
    if-ge v0, v2, :cond_d

    aget-char v3, p1, v0

    .line 32
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move-object p1, v1

    .line 33
    :goto_8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 34
    :cond_e
    instance-of p2, p1, [I

    if-eqz p2, :cond_f

    .line 35
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [I

    invoke-static {p1}, Lcom/android/tools/r8/internal/uw0;->a([I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 36
    :cond_f
    instance-of p2, p1, [J

    if-eqz p2, :cond_12

    .line 37
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [J

    if-nez p1, :cond_10

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    .line 39
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    array-length v2, p1

    :goto_9
    if-ge v0, v2, :cond_11

    aget-wide v3, p1, v0

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    move-object p1, v1

    .line 42
    :goto_a
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 43
    :cond_12
    instance-of p2, p1, [F

    if-eqz p2, :cond_15

    .line 44
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [F

    if-nez p1, :cond_13

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_c

    .line 46
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    array-length v2, p1

    :goto_b
    if-ge v0, v2, :cond_14

    aget v3, p1, v0

    .line 48
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    move-object p1, v1

    .line 49
    :goto_c
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 50
    :cond_15
    instance-of p2, p1, [D

    if-eqz p2, :cond_18

    .line 51
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    check-cast p1, [D

    if-nez p1, :cond_16

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e

    .line 53
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    array-length v2, p1

    :goto_d
    if-ge v0, v2, :cond_17

    aget-wide v3, p1, v0

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    move-object p1, v1

    .line 56
    :goto_e
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 57
    :cond_18
    iget-object p2, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/J2;->c:Ljava/util/ArrayList;

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
