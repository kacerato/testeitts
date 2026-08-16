.class public final Lcom/android/tools/r8/graph/i4;
.super Lcom/android/tools/r8/internal/Q2;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/h4;

.field public final c:Ljava/util/function/BiConsumer;

.field public d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/i4;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/i4;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/i4;->c:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/android/tools/r8/graph/R2$b;
    .locals 4

    .line 18
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    check-cast p0, [B

    .line 20
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 21
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 22
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 24
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4

    .line 25
    check-cast p0, [Z

    .line 26
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 27
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 28
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    .line 29
    sget-object v2, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    .line 30
    :goto_2
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    :cond_3
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 32
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_7

    .line 33
    check-cast p0, [C

    .line 34
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 35
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 36
    aget-char v2, p0, v1

    .line 37
    sget-object v3, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/android/tools/r8/graph/R2$e;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    .line 38
    :goto_4
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39
    :cond_6
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 40
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 41
    check-cast p0, [S

    .line 42
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 43
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_9

    .line 44
    aget-short v2, p0, v1

    .line 45
    sget-object v3, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    new-instance v3, Lcom/android/tools/r8/graph/R2$j;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/R2$j;-><init>(S)V

    .line 46
    :goto_6
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 47
    :cond_9
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 48
    :cond_a
    instance-of v0, p0, [I

    if-eqz v0, :cond_c

    .line 49
    check-cast p0, [I

    .line 50
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 51
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_b

    .line 52
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 53
    :cond_b
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 54
    :cond_c
    instance-of v0, p0, [J

    if-eqz v0, :cond_e

    .line 55
    check-cast p0, [J

    .line 56
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 57
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_d

    .line 58
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 59
    :cond_d
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 60
    :cond_e
    instance-of v0, p0, [F

    if-eqz v0, :cond_10

    .line 61
    check-cast p0, [F

    .line 62
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 63
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 64
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 65
    :cond_f
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 66
    :cond_10
    instance-of v0, p0, [D

    if-eqz v0, :cond_12

    .line 67
    check-cast p0, [D

    .line 68
    array-length v0, p0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    .line 69
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 70
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 71
    :cond_11
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p0

    .line 72
    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type of annotation value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/i4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/Cd;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/graph/Cd;-><init>(Lcom/android/tools/r8/graph/i4;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/i4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/i4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/Dd;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/graph/Dd;-><init>(Lcom/android/tools/r8/graph/i4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/i4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/i4;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/graph/i4;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/i4;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/i4;->d:Ljava/util/ArrayList;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/i4;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/i4;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    goto/16 :goto_2

    .line 74
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object p1

    goto/16 :goto_2

    .line 76
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    goto/16 :goto_2

    :cond_2
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    goto/16 :goto_2

    .line 79
    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 80
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 81
    sget-object v0, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    if-nez p1, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/tools/r8/graph/R2$e;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    :goto_1
    move-object p1, v0

    goto/16 :goto_2

    .line 82
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 83
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    .line 84
    sget-object v0, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/tools/r8/graph/R2$j;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/R2$j;-><init>(S)V

    goto :goto_1

    .line 85
    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 86
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    goto :goto_2

    .line 87
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 88
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object p1

    goto :goto_2

    .line 89
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 90
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object p1

    goto :goto_2

    .line 91
    :cond_a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_b

    .line 92
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object p1

    goto :goto_2

    .line 93
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 94
    new-instance v0, Lcom/android/tools/r8/graph/R2$k;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    goto :goto_1

    .line 95
    :cond_c
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_d

    .line 96
    new-instance v0, Lcom/android/tools/r8/graph/R2$l;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_1

    .line 97
    :cond_d
    invoke-static {p1}, Lcom/android/tools/r8/graph/i4;->a(Ljava/lang/Object;)Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    .line 98
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/i4;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/graph/T2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    .line 3
    iget-object v3, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 4
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 5
    invoke-direct {v1, p2}, Lcom/android/tools/r8/graph/T2;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/i4;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/R2$a;

    iget-object v1, p0, Lcom/android/tools/r8/graph/i4;->b:Lcom/android/tools/r8/graph/h4;

    .line 8
    invoke-static {p2, p3, p4, v1}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/graph/e1;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/i4;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/graph/i4;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/graph/R2$b;

    sget-object v0, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/tools/r8/graph/R2;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/i4;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)V

    return-void
.end method
