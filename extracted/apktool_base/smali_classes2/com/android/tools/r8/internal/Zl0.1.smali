.class public final Lcom/android/tools/r8/internal/Zl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/cm0;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:I

.field public final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zl0;->f:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->y:Lcom/android/tools/r8/internal/cm0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zl0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Zl0;->e:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/OptionalLong;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 157
    new-instance v0, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/NB;)Lcom/android/tools/r8/internal/Xl0;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 126
    :goto_0
    sget-object v3, Lcom/android/tools/r8/internal/Yl0;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v3, p4

    if-eq p4, v1, :cond_5

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    .line 127
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    :cond_1
    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 129
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/cm0;->a(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;

    move-result-object p1

    return-object p1

    .line 131
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 132
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    .line 133
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/cm0;->a(IZ)Lcom/android/tools/r8/internal/av;

    move-result-object p1

    return-object p1

    .line 134
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 135
    invoke-static {p3}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/OptionalLong;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 137
    iget-object p3, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    .line 138
    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    .line 139
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    new-instance p2, Lcom/android/tools/r8/internal/f10;

    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/f10;-><init>(IJ)V

    return-object p2

    .line 141
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    :cond_5
    if-eqz v2, :cond_7

    .line 142
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 143
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/cm0;->a(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;

    move-result-object p1

    return-object p1

    .line 145
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 146
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    .line 147
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/cm0;->a(IZ)Lcom/android/tools/r8/internal/av;

    move-result-object p1

    return-object p1

    .line 148
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 149
    invoke-static {p3}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/OptionalLong;

    move-result-object p2

    .line 150
    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 151
    iget-object p3, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    .line 152
    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    .line 153
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    new-instance p2, Lcom/android/tools/r8/internal/bv;

    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/bv;-><init>(IJ)V

    return-object p2

    .line 155
    :cond_8
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Xl0;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zl0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/cm0;->a(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/EB;II)Lcom/android/tools/r8/internal/dm0;
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 123
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 125
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zl0;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_b

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x3

    if-le p2, p1, :cond_0

    goto/16 :goto_4

    .line 23
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    .line 24
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v0

    if-nez v0, :cond_9

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/Zl0;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    instance-of v2, v1, Lcom/android/tools/r8/internal/l2;

    if-eqz v2, :cond_6

    if-nez v0, :cond_8

    .line 30
    instance-of v0, p4, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_8

    .line 31
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_6
    instance-of v0, v1, Lcom/android/tools/r8/internal/nZ;

    if-eqz v0, :cond_7

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 33
    :cond_7
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p1

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p4

    goto :goto_0

    .line 35
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Zl0;->e:I

    if-le p3, v0, :cond_a

    .line 36
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    .line 37
    :cond_a
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->l0()Lcom/android/tools/r8/internal/sL;

    move-result-object p4

    .line 38
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/sL;II)Lcom/android/tools/r8/internal/dm0;

    move-result-object p2

    .line 39
    new-instance p3, Lcom/android/tools/r8/internal/dm0;

    iget-object p4, p2, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p1

    iget p2, p2, Lcom/android/tools/r8/internal/dm0;->b:I

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object p3

    .line 40
    :cond_b
    :goto_4
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/sL;II)Lcom/android/tools/r8/internal/dm0;
    .locals 5

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x38

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 p2, 0x41

    if-eq v0, p2, :cond_0

    goto/16 :goto_9

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    .line 44
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    .line 45
    new-instance p2, Lcom/android/tools/r8/internal/dm0;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object p2

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O0()Lcom/android/tools/r8/internal/lq0;

    move-result-object p1

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    :cond_3
    add-int/2addr p2, v3

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 53
    iget-object v4, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    .line 55
    invoke-virtual {p0, v2, p2, p3, v4}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;

    move-result-object v2

    .line 56
    iget-object v4, v2, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    instance-of v4, v4, Lcom/android/tools/r8/internal/l2;

    if-nez v4, :cond_4

    .line 59
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    .line 60
    :cond_4
    iget v2, v2, Lcom/android/tools/r8/internal/dm0;->b:I

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zl0;->a:Lcom/android/tools/r8/internal/cm0;

    .line 64
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 65
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/cm0;->a(I)Lcom/android/tools/r8/internal/th;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance p2, Lcom/android/tools/r8/internal/dm0;

    invoke-direct {p2, p1, v1}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object p2

    .line 68
    :cond_6
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    .line 69
    new-instance p2, Lcom/android/tools/r8/internal/dm0;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object p2

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 71
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 74
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    if-nez v1, :cond_a

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v0, :cond_9

    move-object v0, v2

    goto :goto_2

    :cond_9
    move-object v0, v1

    :cond_a
    :goto_2
    if-eqz v0, :cond_18

    .line 77
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v1, :cond_b

    goto/16 :goto_9

    .line 78
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    .line 79
    :cond_c
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 82
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/tools/r8/internal/Zl0;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    .line 86
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    add-int/2addr p2, v3

    .line 87
    iget-object v3, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 88
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Zl0;->a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/NB;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/s41;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/s41;-><init>(Lcom/android/tools/r8/internal/Zl0;Lcom/android/tools/r8/internal/EB;II)V

    .line 89
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Xl0;->a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/dm0;

    move-result-object v3

    .line 90
    iget-object v4, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 91
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v4

    .line 92
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/tools/r8/internal/Zl0;->a(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/NB;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/t41;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/t41;-><init>(Lcom/android/tools/r8/internal/Zl0;Lcom/android/tools/r8/internal/EB;II)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Xl0;->a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/dm0;

    move-result-object p1

    .line 94
    iget-object p2, v3, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    iget-object p3, p1, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    instance-of v0, p2, Lcom/android/tools/r8/internal/l2;

    if-nez v0, :cond_17

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    instance-of v0, p3, Lcom/android/tools/r8/internal/l2;

    if-eqz v0, :cond_d

    goto/16 :goto_7

    .line 98
    :cond_d
    instance-of v0, p2, Lcom/android/tools/r8/internal/nZ;

    if-eqz v0, :cond_e

    :goto_4
    move-object p2, p3

    goto :goto_8

    .line 99
    :cond_e
    instance-of v0, p3, Lcom/android/tools/r8/internal/nZ;

    if-eqz v0, :cond_f

    goto :goto_8

    .line 100
    :cond_f
    instance-of v0, p2, Lcom/android/tools/r8/internal/bm0;

    if-eqz v0, :cond_10

    .line 101
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Xl0;->b()Lcom/android/tools/r8/internal/bm0;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/bm0;->b(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p2

    goto :goto_8

    .line 102
    :cond_10
    instance-of v0, p3, Lcom/android/tools/r8/internal/bm0;

    if-eqz v0, :cond_11

    .line 103
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Xl0;->b()Lcom/android/tools/r8/internal/bm0;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/bm0;->b(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p2

    goto :goto_8

    .line 104
    :cond_11
    sget-boolean v0, Lcom/android/tools/r8/internal/Xl0;->a:Z

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Xl0;->d()Z

    move-result v1

    if-nez v1, :cond_13

    .line 105
    instance-of v1, p2, Lcom/android/tools/r8/internal/am0;

    if-eqz v1, :cond_12

    goto :goto_5

    .line 106
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_5
    if-nez v0, :cond_15

    .line 107
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Xl0;->d()Z

    move-result v0

    if-nez v0, :cond_15

    .line 108
    instance-of v0, p3, Lcom/android/tools/r8/internal/am0;

    if-eqz v0, :cond_14

    goto :goto_6

    .line 109
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 110
    :cond_15
    :goto_6
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x3

    if-gt p3, v0, :cond_16

    .line 112
    new-instance p3, Lcom/android/tools/r8/internal/bm0;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/bm0;-><init>(Ljava/util/List;)V

    goto :goto_4

    .line 113
    :cond_16
    sget-object p2, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    goto :goto_8

    .line 114
    :cond_17
    :goto_7
    sget-object p2, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    .line 115
    :goto_8
    iget p3, v3, Lcom/android/tools/r8/internal/dm0;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/dm0;->b:I

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 116
    new-instance p3, Lcom/android/tools/r8/internal/dm0;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object p3

    .line 117
    :cond_18
    :goto_9
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    .line 118
    :cond_19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 119
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 120
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/EB;II)Lcom/android/tools/r8/internal/dm0;
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/W5;IILcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/dm0;

    move-result-object p1

    return-object p1
.end method
