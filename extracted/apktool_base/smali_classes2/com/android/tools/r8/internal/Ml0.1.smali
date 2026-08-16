.class public final Lcom/android/tools/r8/internal/Ml0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nu;

.field public final d:Lcom/android/tools/r8/shaking/M0;

.field public final e:Lcom/android/tools/r8/graph/H2;

.field public f:Lcom/android/tools/r8/graph/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/shaking/M0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v2

    if-gez v2, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ml0;->c:Lcom/android/tools/r8/internal/nu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ml0;->d:Lcom/android/tools/r8/shaking/M0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ml0;->e:Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/android/tools/r8/internal/TM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/TM0;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ml0;->e:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/UM0;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/UM0;-><init>(Lcom/android/tools/r8/internal/Ml0;)V

    .line 88
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 89
    sget-boolean v1, Lcom/android/tools/r8/internal/Ml0;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    .line 90
    new-instance v2, Lcom/android/tools/r8/graph/Q;

    const/16 v3, 0x1011

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/Q;-><init>(I)V

    .line 91
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/synthesis/W;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v9, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 2
    sget-object v2, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 3
    new-instance v2, Lcom/android/tools/r8/graph/g1$a;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 4
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    .line 5
    const-string v5, "$VALUES"

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v2

    const/16 v3, 0x1019

    .line 7
    invoke-static {v3}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    .line 8
    iput-object v3, v2, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 9
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iget-object v4, v3, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 11
    iput-object v4, v2, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v3

    const/4 v11, 0x0

    if-nez v3, :cond_0

    .line 13
    iput-boolean v11, v2, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 14
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v12

    .line 15
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ml0;->d:Lcom/android/tools/r8/shaking/M0;

    .line 16
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/M0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;

    move-result-object v3

    .line 18
    sget-object v4, Lcom/android/tools/r8/graph/c;->a:Lcom/android/tools/r8/graph/c;

    .line 19
    iput-object v4, v3, Lcom/android/tools/r8/shaking/N0;->a:Lcom/android/tools/r8/graph/d;

    .line 20
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 21
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/M0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;

    move-result-object v2

    .line 22
    iput-object v4, v2, Lcom/android/tools/r8/shaking/N0;->b:Lcom/android/tools/r8/graph/d;

    .line 23
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 24
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v2, v10}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 25
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    .line 26
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    const/16 v3, 0x1008

    .line 27
    invoke-static {v3, v10}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 29
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ml0;->c:Lcom/android/tools/r8/internal/nu;

    .line 30
    iget-object v2, v2, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    move v3, v11

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/mu;

    .line 32
    iget v4, v4, Lcom/android/tools/r8/internal/mu;->e:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 33
    sget-boolean v6, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v6, :cond_3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 34
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_4
    mul-int/lit8 v2, v3, 0x4

    add-int/lit8 v2, v2, 0x4

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/z9;

    int-to-long v4, v3

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v4, v5, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/xa;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v11

    :goto_2
    if-ge v2, v3, :cond_5

    .line 38
    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v4, Lcom/android/tools/r8/internal/z9;

    int-to-long v7, v2

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v4, v7, v8, v5}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Lcom/android/tools/r8/internal/z9;

    add-int/lit8 v2, v2, 0x1

    int-to-long v7, v2

    invoke-direct {v4, v7, v8, v5}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Lcom/android/tools/r8/internal/Z8;

    sget-object v5, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    :cond_5
    new-instance v2, Lcom/android/tools/r8/internal/wb;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v14, Lcom/android/tools/r8/graph/G;

    .line 45
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, v14

    move-object v3, v9

    move-object v7, v15

    move-object v8, v15

    .line 46
    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 47
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    sget-object v13, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 48
    iput-object v13, v2, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 49
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 51
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 52
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v14

    .line 54
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 55
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v2, v10}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 56
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v3, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 57
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 58
    const-string v5, "values"

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    const/16 v3, 0x1009

    .line 60
    invoke-static {v3, v11}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 62
    new-instance v7, Lcom/android/tools/r8/graph/G;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v3, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/xa;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v5, Lcom/android/tools/r8/internal/yb;

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v5, v6, v10}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v11, Lcom/android/tools/r8/internal/vb;

    .line 63
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v11, v10}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v10, Lcom/android/tools/r8/internal/z9;

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v12, Lcom/android/tools/r8/internal/pa;

    const/4 v13, 0x1

    invoke-direct {v12, v6, v13}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v13, Lcom/android/tools/r8/internal/z9;

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v14, Lcom/android/tools/r8/internal/pa;

    const/4 v15, 0x0

    invoke-direct {v14, v3, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    iget-object v15, v0, Lcom/android/tools/r8/internal/Ml0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->V4:Lcom/android/tools/r8/graph/T1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/T1;->a:Lcom/android/tools/r8/graph/A2;

    move-object/from16 v31, v8

    const/16 v8, 0xb8

    const/4 v1, 0x0

    invoke-direct {v3, v8, v15, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    const/4 v8, 0x1

    invoke-direct {v1, v6, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/16 v6, 0xb

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v11

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v3

    move-object/from16 v25, v1

    move-object/from16 v26, v8

    .line 64
    filled-new-array/range {v16 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 66
    array-length v2, v1

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    const/4 v4, 0x5

    const/4 v5, 0x2

    move-object v2, v7

    move-object v3, v9

    move-object v1, v7

    move-object/from16 v7, v29

    move-object/from16 v9, v31

    move-object/from16 v8, v29

    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 68
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    move-object/from16 v2, v28

    .line 69
    iput-object v2, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 70
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ml0;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 72
    iput-object v2, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 73
    iput-object v2, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 75
    iput-object v1, v0, Lcom/android/tools/r8/internal/Ml0;->f:Lcom/android/tools/r8/graph/j1;

    move-object/from16 v2, v30

    .line 76
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    move-object/from16 v2, p1

    .line 77
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/W;

    .line 78
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    move-object/from16 v3, v27

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 79
    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/W;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object v1

    .line 82
    check-cast v1, Lcom/android/tools/r8/synthesis/W;

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, v1, Lcom/android/tools/r8/synthesis/m;->l:Z

    return-void
.end method
