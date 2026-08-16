.class public final Lcom/android/tools/r8/internal/zu;
.super Lcom/android/tools/r8/internal/xu;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public c:Lcom/android/tools/r8/internal/Gu;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public f:Lcom/android/tools/r8/internal/pU;

.field public final g:Lcom/android/tools/r8/graph/F0;

.field public final h:Z

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xu;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->i0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zu;->g:Lcom/android/tools/r8/graph/F0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y0;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y0;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Y0;->b(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr v0, p0

    if-eqz v0, :cond_0

    return v0

    .line 880
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nU;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/nU;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nU;)Ljava/util/Set;
    .locals 0

    .line 462
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/nU;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y0;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 0

    .line 877
    new-instance p1, Lcom/android/tools/r8/internal/rF1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/rF1;-><init>(Lcom/android/tools/r8/internal/Y0;)V

    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y0;Lcom/android/tools/r8/internal/Zb0;)V
    .locals 1

    .line 878
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zb0;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Y0;->b(ILjava/lang/Object;)I

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 862
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasons):"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget p1, Lcom/android/tools/r8/internal/kA;->f:I

    .line 864
    instance-of p1, p2, Lcom/android/tools/r8/internal/LY;

    if-eqz p1, :cond_0

    .line 865
    move-object p1, p2

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 866
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/kA;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kA;-><init>(I)V

    .line 867
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 868
    new-instance p1, Lcom/android/tools/r8/internal/BF1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/BF1;-><init>(Ljava/lang/StringBuilder;)V

    .line 869
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/F0;->a(Ljava/util/function/ObjIntConsumer;)V

    .line 870
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/Y0;Ljava/lang/Object;)V
    .locals 1

    .line 881
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 882
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Y0;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 884
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/Zb0;I)V
    .locals 1

    .line 871
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 874
    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/shaking/x1;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 12
    iput-object p0, v0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)Z
    .locals 0

    .line 463
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    instance-of p0, p0, Lcom/android/tools/r8/internal/vc;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/nU;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/android/tools/r8/internal/nU;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/nU;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->K1()Lcom/android/tools/r8/internal/sK;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/CF1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CF1;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p0

    .line 16
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->m()Lcom/android/tools/r8/internal/fE;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fE;->e()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Vb0;
    .locals 2

    .line 675
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 677
    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    .line 678
    iget-object p1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comparing a reference with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 680
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 682
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 683
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 684
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 685
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 686
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-ne v0, p2, :cond_4

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-ne p1, p2, :cond_4

    .line 688
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 689
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->A:Lcom/android/tools/r8/internal/Vb0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Vb0;
    .locals 3

    .line 658
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 659
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-nez v0, :cond_2

    .line 660
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->w:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 661
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 662
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 664
    invoke-interface {v1, p2, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_3

    .line 665
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->w:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 666
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p5, :cond_5

    .line 667
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-ne p1, p4, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 668
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 669
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->B:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 670
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 671
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 672
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Gu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 673
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->z:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 674
    :cond_6
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Vb0;
    .locals 3

    .line 644
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 645
    sget-boolean v1, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 646
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 647
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->y:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 648
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 649
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 650
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 651
    new-instance p2, Lcom/android/tools/r8/internal/GF1;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/internal/GF1;-><init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/de;)V

    .line 652
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 653
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 654
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->y:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 655
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Du;->a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 656
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 657
    :cond_6
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->y:Lcom/android/tools/r8/internal/Vb0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Zb0;
    .locals 5

    .line 849
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    .line 850
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 851
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 852
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 853
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 854
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 855
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 856
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 857
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 858
    :cond_3
    :goto_1
    instance-of v0, v1, Lcom/android/tools/r8/internal/Zd0;

    if-nez v0, :cond_6

    instance-of v0, v2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-ne v3, v4, :cond_5

    .line 859
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 860
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Wb0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Wb0;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)V

    return-object v0

    .line 861
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Zb0;
    .locals 5

    .line 690
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 693
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 694
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->u:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->g0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 703
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 706
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 707
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_3

    .line 709
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->r:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 710
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v3, v0

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 711
    :goto_0
    instance-of v4, v3, Lcom/android/tools/r8/graph/H5;

    if-eqz v4, :cond_13

    .line 712
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 713
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 714
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-ne p2, v4, :cond_6

    .line 715
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 716
    :cond_5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 717
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 718
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez p2, :cond_7

    .line 719
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->n:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 720
    :cond_6
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->n:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    :cond_7
    if-eqz v2, :cond_f

    .line 721
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object p2

    .line 722
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    instance-of p3, p2, Lcom/android/tools/r8/internal/vc;

    if-eqz p3, :cond_f

    .line 724
    sget-boolean p3, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez p3, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 725
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object p2

    .line 726
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p3

    .line 727
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    .line 728
    :goto_3
    iget-object v4, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 730
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-ne v4, p5, :cond_a

    .line 731
    iget v4, p2, Lcom/android/tools/r8/internal/vc;->a:I

    if-eq v0, v4, :cond_a

    move p2, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 732
    :cond_b
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    :goto_4
    if-eqz p2, :cond_f

    .line 733
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    .line 734
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->f:Lcom/android/tools/r8/internal/pU;

    .line 735
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p3

    new-instance p5, Lcom/android/tools/r8/internal/NF1;

    invoke-direct {p5, p1}, Lcom/android/tools/r8/internal/NF1;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 736
    invoke-static {p5}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p5

    .line 737
    invoke-virtual {p2, p3, p5, p1}, Lcom/android/tools/r8/internal/pU;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Hz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/nU;

    .line 738
    sget-boolean p3, Lcom/android/tools/r8/internal/nU;->f:Z

    if-nez p3, :cond_e

    .line 739
    sget-boolean p3, Lcom/android/tools/r8/internal/oU;->e:Z

    if-nez p3, :cond_d

    .line 740
    iget-object p3, p2, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne p3, p1, :cond_c

    goto :goto_5

    .line 741
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 742
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    :cond_e
    :goto_5
    iget-object p1, p2, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    .line 744
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 746
    :cond_f
    :goto_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p2

    if-ge v1, p2, :cond_11

    .line 747
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p2

    add-int/2addr p2, v1

    .line 748
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    if-ne p2, p5, :cond_10

    .line 749
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 750
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 751
    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Gu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 752
    new-instance p1, Lcom/android/tools/r8/internal/Pb0;

    .line 753
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Pb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 754
    :cond_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 755
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p5, :cond_12

    .line 756
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 757
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->j:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 758
    :cond_12
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 759
    :cond_13
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    instance-of p2, p2, Lcom/android/tools/r8/graph/I0;

    if-eqz p2, :cond_14

    .line 761
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->s:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 762
    :cond_14
    sget-boolean p2, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez p2, :cond_16

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_7
    if-nez v2, :cond_17

    .line 763
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->r:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 764
    :cond_17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 765
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 766
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 767
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->h:Lcom/android/tools/r8/graph/A2;

    .line 768
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_e

    .line 769
    :cond_18
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object p1

    return-object p1

    .line 771
    :cond_19
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    .line 772
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_c

    .line 773
    :cond_1a
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 774
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 775
    :cond_1b
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->j:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 776
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 777
    :cond_1c
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/J1;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_29

    if-nez p2, :cond_1e

    .line 778
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p5, :cond_1d

    goto :goto_8

    .line 779
    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 780
    :cond_1e
    :goto_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 781
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 782
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/Gu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 783
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p5

    if-eqz p5, :cond_1f

    if-ne p1, p4, :cond_1f

    .line 784
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 785
    :cond_1f
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p5

    .line 786
    invoke-virtual {p4, p5}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p5

    .line 787
    invoke-virtual {p3, p5}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p5

    if-eqz p5, :cond_29

    if-nez p2, :cond_22

    .line 788
    iget-object p5, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 789
    sget-boolean v0, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez v0, :cond_21

    .line 790
    iget-object p5, p5, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 791
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_20

    goto :goto_9

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 792
    :cond_21
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_22
    :goto_9
    if-nez p2, :cond_24

    .line 793
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-ne p2, p1, :cond_23

    goto :goto_a

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 794
    :cond_24
    :goto_a
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 795
    :cond_25
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-ne p1, p4, :cond_29

    if-nez p2, :cond_28

    .line 796
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 797
    sget-boolean p2, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez p2, :cond_27

    .line 798
    iget-object p1, p1, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 799
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_b

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 800
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    :cond_28
    :goto_b
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 802
    :cond_29
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    :cond_2a
    :goto_c
    if-nez p2, :cond_2c

    .line 803
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p5, :cond_2b

    goto :goto_d

    :cond_2b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 804
    :cond_2c
    :goto_d
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 805
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 806
    :cond_2d
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object p1

    return-object p1

    .line 807
    :cond_2e
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 808
    iget-object p3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 809
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result p3

    if-nez p3, :cond_2f

    .line 810
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 811
    :cond_2f
    iget-object p3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_32

    if-nez p2, :cond_31

    .line 812
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p5, :cond_30

    goto :goto_f

    :cond_30
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 813
    :cond_31
    :goto_f
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 814
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 815
    :cond_32
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 816
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 817
    :cond_33
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object p1

    return-object p1

    .line 819
    :cond_34
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 820
    :cond_35
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 821
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_39

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    .line 822
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_36

    goto :goto_10

    .line 823
    :cond_36
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 824
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 825
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 826
    :cond_37
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object p1

    return-object p1

    .line 828
    :cond_38
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 829
    :cond_39
    :goto_10
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 830
    :cond_3a
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 831
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$d;->A:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 832
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 833
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 834
    :cond_3b
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 835
    :cond_3c
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 836
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_11

    .line 837
    :cond_3d
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->L2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 838
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->V4:Lcom/android/tools/r8/graph/T1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/T1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 839
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 840
    :cond_3e
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->V4:Lcom/android/tools/r8/graph/T1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/T1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 841
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1

    .line 842
    :cond_3f
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 843
    :cond_40
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 844
    :cond_41
    :goto_11
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    .line 845
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_12

    .line 846
    :cond_42
    new-instance p1, Lcom/android/tools/r8/internal/Yb0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yb0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 847
    :cond_43
    :goto_12
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 848
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zb0;
    .locals 9

    .line 244
    sget-object v0, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    .line 245
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 246
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    .line 247
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v3

    const/16 v4, 0x19

    if-eq v3, v4, :cond_14

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_10

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_f

    const/16 v4, 0x24

    if-eq v3, v4, :cond_e

    const/16 v4, 0x38

    if-eq v3, v4, :cond_c

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_b

    const/16 v4, 0x49

    if-eq v3, v4, :cond_a

    const/16 v4, 0x21

    if-eq v3, v4, :cond_9

    const/16 v4, 0x22

    if-eq v3, v4, :cond_9

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 248
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->D:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 249
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object v2

    goto/16 :goto_6

    .line 250
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 252
    iget-object v2, v2, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 253
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 254
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 256
    :cond_1
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->d:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 257
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object v2

    goto/16 :goto_6

    .line 259
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v2

    .line 260
    sget-boolean v3, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v3, :cond_3

    .line 261
    iget-object v4, v2, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    .line 262
    sget-object v5, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 263
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    if-nez v3, :cond_5

    .line 264
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v3, :cond_7

    .line 265
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 266
    :cond_7
    :goto_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v3

    .line 267
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 269
    :cond_8
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->x:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 270
    :pswitch_4
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 271
    :pswitch_5
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 272
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object v2

    goto/16 :goto_6

    .line 273
    :cond_a
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto/16 :goto_6

    .line 274
    :cond_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Vb0;

    move-result-object v2

    goto/16 :goto_6

    .line 275
    :cond_c
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 276
    iget-object v3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 277
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 278
    iget-object v3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    .line 279
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 280
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 281
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->v:Lcom/android/tools/r8/internal/Vb0;

    goto :goto_6

    .line 282
    :cond_d
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto :goto_6

    .line 283
    :cond_e
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Vb0;

    move-result-object v2

    goto :goto_6

    .line 284
    :cond_f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    .line 285
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Vb0;

    move-result-object v2

    goto :goto_6

    .line 286
    :cond_10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v2

    .line 287
    sget-boolean v3, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v3, :cond_12

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 288
    :cond_12
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 290
    iget-object v3, v3, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Fu;

    if-nez v3, :cond_13

    goto :goto_5

    .line 292
    :cond_13
    iget-object v3, v3, Lcom/android/tools/r8/internal/Fu;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_5
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    goto :goto_6

    .line 294
    :cond_14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Vb0;

    move-result-object v2

    .line 295
    :goto_6
    sget-object v3, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    if-eq v2, v3, :cond_0

    .line 296
    invoke-virtual {p0, v2, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object v2

    :cond_15
    move-object v0, v2

    goto/16 :goto_0

    .line 297
    :cond_16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f60;

    .line 298
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 299
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    instance-of v2, v2, Lcom/android/tools/r8/internal/Zd0;

    if-nez v2, :cond_18

    .line 301
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eq v1, p3, :cond_18

    .line 302
    sget-object p1, Lcom/android/tools/r8/internal/Zb0;->m:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    return-object p1

    :cond_19
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Jo0;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/SG;ZLcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Zu;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 567
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p10}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    sget-boolean v0, Lcom/android/tools/r8/graph/J1;->n:Z

    if-nez v0, :cond_2

    invoke-virtual {p9}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 571
    :cond_2
    :goto_0
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 572
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 573
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 574
    :cond_3
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    if-nez v0, :cond_5

    .line 575
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 576
    :cond_5
    :goto_1
    iget v0, p2, Lcom/android/tools/r8/graph/g;->c:I

    const/16 v1, 0x4000

    .line 577
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 578
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 579
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 580
    iget-object p8, p3, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    .line 581
    invoke-virtual {p8, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Q30;

    if-nez p2, :cond_9

    .line 582
    sget-boolean p2, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez p2, :cond_7

    .line 583
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    iget-object p4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p5, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    .line 584
    iget-object p6, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 585
    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p5, p6, p4, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 586
    iget-object p3, p3, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Q30;

    if-nez p2, :cond_6

    goto :goto_2

    .line 587
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 588
    :cond_7
    :goto_2
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 589
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 590
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 591
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p10}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 592
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/Ub0;

    .line 593
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/Ub0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 594
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 595
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 596
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Q30;)Ljava/util/OptionalInt;

    move-result-object p3

    .line 597
    invoke-virtual {p3}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p8

    if-nez p8, :cond_a

    .line 598
    new-instance p2, Lcom/android/tools/r8/internal/Tb0;

    iget-object p3, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    .line 599
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, p3, p4}, Lcom/android/tools/r8/internal/Tb0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    .line 600
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 601
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 602
    :cond_a
    invoke-virtual {p3}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p3

    .line 603
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p8

    check-cast p8, Lcom/android/tools/r8/graph/l1;

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p8, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    .line 604
    invoke-interface {p5, p3, p2}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_13

    .line 605
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 606
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 607
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 608
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 609
    invoke-virtual {p2, p4, p5}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p2

    .line 610
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->i()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 611
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p7, p3, p1}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 612
    :cond_b
    new-instance p2, Lcom/android/tools/r8/internal/Sb0;

    .line 613
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/Sb0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 614
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 615
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 616
    :cond_c
    iget-object p2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object p4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p9, p4}, Lcom/android/tools/r8/graph/J1;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 617
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 618
    iget-object p3, p3, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    .line 619
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Q30;

    if-nez p2, :cond_e

    .line 620
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 621
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 622
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 623
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p10}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 624
    :cond_d
    new-instance p2, Lcom/android/tools/r8/internal/Qb0;

    .line 625
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/Qb0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 626
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 627
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 628
    :cond_e
    sget-boolean p1, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez p1, :cond_10

    .line 629
    instance-of p3, p2, Lcom/android/tools/r8/internal/Zu;

    if-eqz p3, :cond_f

    goto :goto_3

    .line 630
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_3
    if-nez p1, :cond_12

    if-eqz p10, :cond_12

    .line 631
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Q30;->a()Lcom/android/tools/r8/internal/Zu;

    move-result-object p1

    invoke-virtual {p10, p1}, Lcom/android/tools/r8/internal/Zu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4

    .line 632
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 633
    :cond_12
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Q30;->a()Lcom/android/tools/r8/internal/Zu;

    move-result-object p10

    .line 634
    invoke-virtual {p9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p8, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 635
    :cond_13
    :goto_5
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p10}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)Lcom/android/tools/r8/internal/mu;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->g1()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_1

    .line 471
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Lcom/android/tools/r8/internal/mu;

    sget-object v4, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 473
    sget-object v5, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    const/4 v6, -0x1

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v4

    .line 474
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/mu;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;I)V

    return-object v0

    :cond_0
    return-object v12

    .line 475
    :cond_1
    new-instance v13, Lcom/android/tools/r8/internal/kC;

    const/4 v14, 0x4

    .line 476
    invoke-direct {v13, v14}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 477
    new-instance v15, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/GG;-><init>()V

    .line 478
    iget-object v0, v10, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 479
    iget-object v0, v0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Fu;

    .line 481
    sget-boolean v1, Lcom/android/tools/r8/internal/Fu;->e:Z

    if-nez v1, :cond_3

    .line 482
    iget-object v1, v0, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 483
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 484
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    .line 485
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    xor-int/lit8 v7, v16, 0x1

    .line 486
    new-instance v9, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/GG;-><init>()V

    .line 487
    iget-object v0, v10, Lcom/android/tools/r8/internal/zu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 488
    new-instance v0, Lcom/android/tools/r8/internal/Rb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rb0;-><init>()V

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    return-object v12

    .line 490
    :cond_4
    iget-object v0, v10, Lcom/android/tools/r8/internal/zu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jo0;

    iget-object v1, v10, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 492
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    iget-object v3, v10, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 493
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 494
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Jo0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Jo0;

    move-result-object v4

    .line 495
    iget-object v0, v10, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Gu;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v3

    .line 496
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 497
    new-instance v17, Lcom/android/tools/r8/internal/IC;

    invoke-direct/range {v17 .. v17}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 498
    new-instance v8, Lcom/android/tools/r8/internal/MF1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v13

    move-object v6, v9

    move-object v14, v8

    move-object v8, v15

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/internal/MF1;-><init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Jo0;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/SG;ZLcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/IC;)V

    .line 499
    invoke-virtual {v11, v14}, Lcom/android/tools/r8/graph/H2;->b(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v12

    .line 501
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zu;

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    .line 502
    :goto_1
    iget-object v3, v0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v3, v3

    if-ge v2, v3, :cond_11

    move-object/from16 v3, v18

    .line 503
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/GG;->a(I)Z

    move-result v4

    if-nez v4, :cond_10

    if-ltz v2, :cond_7

    .line 504
    iget-object v4, v0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v5, v4

    if-lt v2, v5, :cond_6

    goto :goto_2

    .line 505
    :cond_6
    aget-object v4, v4, v2

    goto :goto_3

    .line 506
    :cond_7
    :goto_2
    sget-object v4, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    .line 507
    :goto_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 508
    new-instance v0, Lcom/android/tools/r8/internal/Tb0;

    iget-object v1, v10, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/Tb0;-><init>(ILcom/android/tools/r8/graph/l1;)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    return-object v12

    .line 510
    :cond_8
    sget-boolean v5, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v5, :cond_a

    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Q30;)Ljava/util/OptionalInt;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_4
    if-nez v5, :cond_c

    .line 511
    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Q30;)Ljava/util/OptionalInt;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v5

    if-ne v5, v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 512
    :cond_c
    :goto_5
    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    if-nez v16, :cond_10

    if-ltz v2, :cond_e

    .line 513
    iget-object v4, v0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v4, v4

    if-lt v2, v4, :cond_d

    goto :goto_6

    .line 514
    :cond_d
    iget-object v4, v0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/Wu;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    goto :goto_7

    :cond_e
    :goto_6
    move-object v4, v12

    :goto_7
    if-nez v4, :cond_f

    .line 515
    new-instance v0, Lcom/android/tools/r8/internal/Sb0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Sb0;-><init>(I)V

    .line 516
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    return-object v12

    .line 517
    :cond_f
    invoke-virtual {v15, v2, v4}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v3

    goto/16 :goto_1

    :cond_11
    move-object/from16 v3, v18

    .line 518
    new-instance v2, Lcom/android/tools/r8/internal/kC;

    const/4 v4, 0x4

    .line 519
    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 520
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    .line 521
    iget-object v6, v10, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 522
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v6, v11, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v6

    if-nez v6, :cond_13

    .line 523
    sget-boolean v6, Lcom/android/tools/r8/internal/zu;->j:Z

    if-eqz v6, :cond_12

    .line 524
    new-instance v6, Lcom/android/tools/r8/internal/Tb0;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/Tb0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v10, v7, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 526
    sget-object v6, Lcom/android/tools/r8/internal/tu;->a:Lcom/android/tools/r8/internal/tu;

    :goto_9
    move-object/from16 v18, v3

    move-object/from16 p2, v4

    goto/16 :goto_d

    .line 527
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 528
    :cond_13
    iget-object v7, v5, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v7

    .line 529
    new-instance v8, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 530
    new-instance v9, Lcom/android/tools/r8/internal/FH;

    iget-object v14, v3, Lcom/android/tools/r8/internal/GG;->b:[I

    iget v1, v3, Lcom/android/tools/r8/internal/GG;->d:I

    invoke-direct {v9, v14, v1}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    .line 531
    new-instance v1, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v1, v9}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 532
    :goto_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 533
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v9

    .line 534
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/GG;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/Q30;

    .line 535
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v14, v12}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v12

    .line 537
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v14

    if-nez v14, :cond_14

    .line 538
    new-instance v1, Lcom/android/tools/r8/internal/Tb0;

    invoke-direct {v1, v9, v5}, Lcom/android/tools/r8/internal/Tb0;-><init>(ILcom/android/tools/r8/graph/l1;)V

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v10, v6, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 540
    sget-object v6, Lcom/android/tools/r8/internal/tu;->a:Lcom/android/tools/r8/internal/tu;

    goto :goto_9

    .line 541
    :cond_14
    instance-of v14, v12, Lcom/android/tools/r8/internal/Hm0;

    if-nez v14, :cond_15

    .line 542
    instance-of v14, v12, Lcom/android/tools/r8/internal/Im0;

    if-nez v14, :cond_15

    .line 543
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result v14

    if-nez v14, :cond_15

    .line 544
    new-instance v1, Lcom/android/tools/r8/internal/Xb0;

    invoke-direct {v1, v9, v5}, Lcom/android/tools/r8/internal/Xb0;-><init>(ILcom/android/tools/r8/graph/l1;)V

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v10, v6, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 546
    sget-object v6, Lcom/android/tools/r8/internal/tu;->a:Lcom/android/tools/r8/internal/tu;

    goto :goto_9

    :cond_15
    add-int/lit8 v14, v9, 0x1

    .line 547
    invoke-virtual {v8, v14, v12}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_18

    .line 548
    sget-boolean v14, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v14, :cond_17

    .line 549
    instance-of v14, v12, Lcom/android/tools/r8/internal/Im0;

    if-eqz v14, :cond_16

    goto :goto_b

    .line 550
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 551
    :cond_17
    :goto_b
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v12

    move-object/from16 v18, v3

    move-object/from16 p2, v4

    .line 552
    iget-wide v3, v12, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v3, v3

    if-eq v3, v9, :cond_19

    move-object/from16 v4, p2

    move-object/from16 v3, v18

    const/4 v7, 0x0

    :goto_c
    const/4 v12, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v18, v3

    move-object/from16 p2, v4

    :cond_19
    move-object/from16 v4, p2

    move-object/from16 v3, v18

    goto :goto_c

    :cond_1a
    move-object/from16 v18, v3

    move-object/from16 p2, v4

    if-eqz v7, :cond_1b

    .line 553
    new-instance v6, Lcom/android/tools/r8/internal/su;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/su;-><init>()V

    goto :goto_d

    .line 554
    :cond_1b
    new-instance v6, Lcom/android/tools/r8/internal/ru;

    .line 555
    new-instance v1, Lcom/android/tools/r8/internal/cC;

    invoke-direct {v1, v8}, Lcom/android/tools/r8/internal/cC;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 556
    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/ru;-><init>(Lcom/android/tools/r8/internal/cC;)V

    .line 557
    :goto_d
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/uu;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 558
    iget-boolean v1, v10, Lcom/android/tools/r8/internal/zu;->h:Z

    if-nez v1, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    if-eqz v2, :cond_1e

    .line 559
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/uu;->a()Lcom/android/tools/r8/internal/qu;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    :cond_1e
    move-object/from16 v4, p2

    move-object/from16 v3, v18

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_1f
    if-eqz v2, :cond_20

    .line 560
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    move-object v3, v1

    goto :goto_f

    :cond_20
    :goto_e
    const/4 v3, 0x0

    :goto_f
    if-nez v3, :cond_21

    const/4 v1, 0x0

    return-object v1

    .line 561
    :cond_21
    new-instance v1, Lcom/android/tools/r8/internal/mu;

    if-nez v16, :cond_22

    :goto_10
    move-object v4, v15

    goto :goto_11

    .line 562
    :cond_22
    sget-object v15, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    goto :goto_10

    .line 563
    :goto_11
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    .line 564
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    if-nez v0, :cond_23

    const/4 v0, -0x1

    :goto_12
    move v7, v0

    goto :goto_13

    .line 565
    :cond_23
    iget-object v0, v0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v0, v0

    goto :goto_12

    :goto_13
    move-object v2, v1

    .line 566
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/mu;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;I)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Q30;)Ljava/util/OptionalInt;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->g:Lcom/android/tools/r8/graph/F0;

    .line 52
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 57
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    .line 58
    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Gu;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    .line 218
    iget-object v0, v0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Fu;

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fu;->c:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Ko0;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/Jo0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ko0;->a()Lcom/android/tools/r8/internal/Jo0;

    move-result-object p2

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 891
    iget-object v0, v0, Lcom/android/tools/r8/internal/Gu;->c:Ljava/util/Set;

    .line 892
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Zb0;->t:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/graph/M2;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/ns0;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    .line 365
    const-string v1, "Unbox enums"

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 366
    sget-boolean v1, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/l40;->b()V

    :cond_0
    if-nez v1, :cond_2

    .line 367
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 368
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/zu;->d()Lcom/android/tools/r8/internal/nu;

    move-result-object v12

    if-nez v1, :cond_4

    .line 369
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 370
    :cond_4
    :goto_1
    invoke-virtual {v7, v12}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/nu;)V

    .line 371
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 372
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 373
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    .line 374
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nu;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 375
    :cond_6
    :goto_2
    sget-object v1, Lcom/android/tools/r8/internal/Nt;->a:Lcom/android/tools/r8/internal/Nt;

    .line 376
    iput-object v1, v8, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    .line 377
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 378
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v13

    .line 379
    iget-object v1, v0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 380
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    .line 382
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 383
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    new-instance v3, Lcom/android/tools/r8/internal/kC;

    const/4 v4, 0x4

    .line 385
    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 386
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Fu;

    .line 387
    iget-object v6, v5, Lcom/android/tools/r8/internal/Fu;->a:Lcom/android/tools/r8/graph/H2;

    .line 388
    sget-boolean v14, Lcom/android/tools/r8/internal/Fu;->e:Z

    if-nez v14, :cond_9

    iget-object v14, v5, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    if-eqz v14, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 389
    :cond_9
    :goto_4
    iget-object v5, v5, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    .line 390
    invoke-virtual {v3, v6, v5}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_3

    .line 391
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    .line 392
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 393
    iget-object v3, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 394
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 395
    sget-boolean v6, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 396
    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Fu;

    iget-object v14, v6, Lcom/android/tools/r8/internal/Fu;->b:Lcom/android/tools/r8/internal/qU;

    .line 397
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Fu;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Fu;->b:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v14, v6}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/qU;)V

    goto :goto_6

    .line 399
    :cond_d
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->c:Ljava/util/Set;

    invoke-virtual {v14, v2}, Lcom/android/tools/r8/internal/qU;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/qU;

    .line 400
    iget-object v2, v0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 401
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 402
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/QC;)V

    .line 404
    new-instance v1, Lcom/android/tools/r8/internal/Su;

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/Su;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 405
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    .line 406
    iget-object v3, v1, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, v1, Lcom/android/tools/r8/internal/Su;->d:Lcom/android/tools/r8/shaking/M0;

    .line 407
    new-instance v15, Lcom/android/tools/r8/internal/Ml0;

    invoke-direct {v15, v3, v12, v2, v6}, Lcom/android/tools/r8/internal/Ml0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/shaking/M0;)V

    .line 408
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Ml0;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 409
    new-instance v6, Lcom/android/tools/r8/internal/Nl0;

    iget-object v4, v15, Lcom/android/tools/r8/internal/Ml0;->e:Lcom/android/tools/r8/graph/H2;

    move-object/from16 v17, v13

    new-instance v13, Lcom/android/tools/r8/graph/H5;

    iget-object v15, v15, Lcom/android/tools/r8/internal/Ml0;->f:Lcom/android/tools/r8/graph/j1;

    invoke-direct {v13, v3, v15}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-direct {v6, v3, v4, v13}, Lcom/android/tools/r8/internal/Nl0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    .line 410
    new-instance v3, Lcom/android/tools/r8/internal/kC;

    const/4 v4, 0x4

    .line 411
    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 412
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 413
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v13

    .line 414
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v18, v14

    .line 415
    new-instance v14, Lcom/android/tools/r8/internal/OT;

    invoke-direct {v14, v2, v4, v13}, Lcom/android/tools/r8/internal/OT;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mu;)V

    .line 416
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/OT;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 417
    new-instance v14, Lcom/android/tools/r8/internal/PT;

    invoke-direct {v14, v2, v13, v4}, Lcom/android/tools/r8/internal/PT;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/graph/H2;)V

    .line 418
    invoke-virtual {v3, v15, v14}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object/from16 v2, v16

    move-object/from16 v14, v18

    goto :goto_7

    :cond_e
    move-object/from16 v18, v14

    .line 419
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    .line 420
    iput-object v2, v1, Lcom/android/tools/r8/internal/Su;->b:Lcom/android/tools/r8/internal/nC;

    .line 421
    iput-object v6, v1, Lcom/android/tools/r8/internal/Su;->c:Lcom/android/tools/r8/internal/Nl0;

    .line 422
    invoke-virtual {v1, v8, v10}, Lcom/android/tools/r8/internal/Su;->a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Tu;

    move-result-object v13

    .line 423
    iget-object v1, v0, Lcom/android/tools/r8/internal/zu;->f:Lcom/android/tools/r8/internal/pU;

    new-instance v2, Lcom/android/tools/r8/internal/yF1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yF1;-><init>()V

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/pU;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/pU;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/android/tools/r8/internal/zF1;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/zF1;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 427
    invoke-virtual {v1, v7, v2}, Lcom/android/tools/r8/internal/pU;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/h80;

    move-result-object v3

    .line 428
    new-instance v1, Lcom/android/tools/r8/internal/AF1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AF1;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiPredicate;)Z

    .line 429
    new-instance v14, Lcom/android/tools/r8/internal/Qu;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Qu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/Tu;)V

    .line 430
    invoke-virtual {v14, v8, v10, v11}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Pu;

    move-result-object v1

    .line 431
    iget-object v2, v1, Lcom/android/tools/r8/internal/Pu;->c:Lcom/android/tools/r8/internal/Nu;

    .line 432
    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    move-result-object v3

    .line 433
    iget-object v4, v1, Lcom/android/tools/r8/internal/Pu;->d:Lcom/android/tools/r8/graph/O5;

    .line 434
    iget-object v4, v4, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 435
    iget-object v5, v3, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/qU;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/qU;

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/qU;->c(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object v4

    .line 437
    iget-object v5, v1, Lcom/android/tools/r8/internal/Pu;->d:Lcom/android/tools/r8/graph/O5;

    .line 438
    iget-object v5, v5, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 439
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/qU;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/qU;

    move-result-object v4

    .line 440
    iget-object v5, v3, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/qU;)V

    .line 441
    iget-object v4, v1, Lcom/android/tools/r8/internal/Pu;->b:Lcom/android/tools/r8/internal/j80;

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/O60;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;)V

    .line 443
    iget-object v3, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v3

    .line 444
    sget-boolean v4, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v4, :cond_10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    instance-of v5, v3, Lcom/android/tools/r8/internal/Nu;

    if-eqz v5, :cond_f

    goto :goto_8

    .line 446
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 447
    :cond_10
    :goto_8
    iget-object v5, v3, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    if-nez v4, :cond_12

    move-object/from16 v4, v17

    if-ne v5, v4, :cond_11

    goto :goto_9

    .line 448
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 449
    :cond_12
    :goto_9
    iget-object v4, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 450
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v6

    new-instance v14, Lcom/android/tools/r8/internal/yu;

    invoke-direct {v14, v0, v3, v5, v1}, Lcom/android/tools/r8/internal/yu;-><init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Pu;)V

    .line 451
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 452
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v6, v10, v14}, Lcom/android/tools/r8/internal/k40;->a(Ljava/util/Collection;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/j40;)V

    .line 453
    new-instance v3, Lcom/android/tools/r8/internal/Ou;

    .line 454
    iget-object v1, v1, Lcom/android/tools/r8/internal/Pu;->a:Lcom/android/tools/r8/internal/eA;

    .line 455
    invoke-direct {v3, v7, v1, v12, v13}, Lcom/android/tools/r8/internal/Ou;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/Tu;)V

    .line 456
    iput-object v3, v2, Lcom/android/tools/r8/internal/mZ;->n:Lcom/android/tools/r8/ir/optimize/A;

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/fi1;

    invoke-direct {v2, v9}, Lcom/android/tools/r8/internal/fi1;-><init>(Lcom/android/tools/r8/internal/O60;)V

    .line 458
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 459
    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    .line 460
    :cond_13
    sget-object v1, Lcom/android/tools/r8/internal/Nt;->a:Lcom/android/tools/r8/internal/Nt;

    iput-object v1, v8, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    .line 461
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Fu;)V
    .locals 3

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/Fu;->a:Lcom/android/tools/r8/graph/H2;

    .line 40
    invoke-static {v0}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/android/tools/r8/internal/Zb0;->n:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lcom/android/tools/r8/internal/Zb0;->o:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Fu;->e:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 47
    invoke-static {v1}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 48
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->p:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    sget-object v1, Lcom/android/tools/r8/internal/Zb0;->q:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)V
    .locals 11

    .line 303
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->f:Lcom/android/tools/r8/internal/pU;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 305
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/pU;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/pU;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/zu;->f:Lcom/android/tools/r8/internal/pU;

    if-nez v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 307
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/Eu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/Eu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zu;)V

    .line 308
    iget-object v1, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    .line 309
    iget-object v1, v1, Lcom/android/tools/r8/internal/zu;->g:Lcom/android/tools/r8/graph/F0;

    if-eqz v1, :cond_24

    .line 310
    instance-of v1, v1, Lcom/android/tools/r8/graph/F5;

    if-eqz v1, :cond_6

    goto/16 :goto_e

    .line 311
    :cond_6
    iget-object v1, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    .line 312
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v1

    .line 313
    iget-object v2, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 314
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 315
    iget-object v4, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    .line 316
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    .line 317
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 318
    :cond_8
    sget-boolean v4, Lcom/android/tools/r8/internal/Eu;->e:Z

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    if-nez v4, :cond_c

    .line 319
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 320
    :cond_c
    :goto_5
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_d

    .line 321
    iget-object v4, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    sget-object v5, Lcom/android/tools/r8/internal/Zb0;->i:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    goto :goto_3

    .line 323
    :cond_d
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v4

    .line 324
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    .line 325
    iget-object v7, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_10

    .line 326
    iget-object v7, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v9, v6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    sget-object v10, Lcom/android/tools/r8/internal/Zb0;->f:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v7, v9, v10}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    move v7, v8

    goto :goto_6

    :cond_10
    const/4 v7, 0x1

    .line 327
    :goto_6
    iget-object v9, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, v6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 328
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v9, v9, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    if-eq v9, v10, :cond_13

    .line 329
    :cond_11
    iget-object v7, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v9, v6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    sget-object v10, Lcom/android/tools/r8/internal/Zb0;->g:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v7, v9, v10}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_7

    :cond_12
    move v7, v8

    .line 330
    :cond_13
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    .line 331
    iget-object v7, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    sget-object v9, Lcom/android/tools/r8/internal/Zb0;->h:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v7, v6, v9}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    goto :goto_7

    :cond_14
    move v8, v7

    :goto_7
    if-nez v8, :cond_e

    goto/16 :goto_3

    .line 332
    :cond_15
    iget-object v5, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    .line 333
    invoke-static {v4}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    .line 334
    sget-boolean v7, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez v7, :cond_17

    .line 335
    iget-object v7, v5, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 336
    iget-object v8, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_8

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 337
    :cond_17
    :goto_8
    iget-object v7, v5, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 338
    iget-object v8, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v9, Lcom/android/tools/r8/internal/Fu;

    invoke-direct {v9, v6, v3, v4, p1}, Lcom/android/tools/r8/internal/Fu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    .line 340
    iget-object v7, v5, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 341
    :cond_18
    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 342
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 343
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 344
    sget-boolean v2, Lcom/android/tools/r8/internal/Eu;->e:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->o2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 345
    :cond_1b
    :goto_a
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 346
    sget-boolean v3, Lcom/android/tools/r8/internal/Eu;->e:Z

    if-nez v3, :cond_1e

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    .line 347
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->K:Z

    if-eqz v3, :cond_1d

    goto :goto_c

    .line 348
    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 349
    :cond_1e
    :goto_c
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 350
    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Gu;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 351
    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->b:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 352
    iget-object v3, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Gu;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_b

    .line 353
    :cond_1f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Eu;->a()V

    .line 354
    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 355
    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    .line 356
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 357
    iget-object v1, v1, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Gu;->d(Lcom/android/tools/r8/graph/M2;)V

    .line 358
    :cond_20
    sget-boolean p1, Lcom/android/tools/r8/internal/Eu;->e:Z

    if-nez p1, :cond_23

    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    .line 359
    iget-object p1, p1, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 360
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Fu;

    .line 361
    sget-boolean v2, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez v2, :cond_21

    iget-object v1, v1, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    if-eqz v1, :cond_22

    goto :goto_d

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 362
    :cond_23
    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    goto :goto_f

    .line 363
    :cond_24
    :goto_e
    iget-object p1, v0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    .line 364
    :goto_f
    iput-object p1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/OJ;Ljava/util/Set;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/IF1;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/IF1;-><init>(Lcom/android/tools/r8/internal/zu;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/I2;->d(Ljava/util/function/Consumer;)V

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-static {v0, v1, v2, p3}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p3

    if-nez p3, :cond_0

    .line 20
    new-instance p2, Lcom/android/tools/r8/internal/JF1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/JF1;-><init>(Lcom/android/tools/r8/internal/zu;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/OJ;Ljava/util/function/Consumer;)V

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/KF1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/KF1;-><init>(Lcom/android/tools/r8/internal/zu;Ljava/util/Set;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/OJ;Ljava/util/function/Consumer;)V

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/LF1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/LF1;-><init>(Lcom/android/tools/r8/internal/zu;)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/OJ;Ljava/util/function/Consumer;)V
    .locals 1

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/FF1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/FF1;-><init>(Lcom/android/tools/r8/internal/zu;Ljava/util/function/Consumer;)V

    .line 26
    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/QC;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 468
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 469
    new-instance v1, Lcom/android/tools/r8/internal/EF1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/EF1;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 13

    .line 79
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 80
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 81
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 82
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 83
    iget-object v6, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    .line 84
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 85
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object v7

    .line 86
    sget-object v8, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    if-ne v7, v8, :cond_2

    .line 87
    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    instance-of v6, v6, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v6, :cond_4

    .line 90
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 92
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 93
    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_18

    const/16 v6, 0xc

    if-eq v5, v6, :cond_a

    const/16 v6, 0x20

    if-eq v5, v6, :cond_9

    const/16 v6, 0x26

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v4

    .line 96
    iget-object v4, v4, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 97
    iget-object v5, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 98
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 99
    sget-object v5, Lcom/android/tools/r8/internal/Zb0;->e:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v5, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v4

    .line 101
    iget-object v4, v4, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_5
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 105
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 107
    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    iget-object v8, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    :cond_6
    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->k:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v4, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 112
    :cond_7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 113
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 114
    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 115
    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v7, v5}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 116
    iget-object v4, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :cond_8
    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->r:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v4, v6}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 118
    :cond_9
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b0()Lcom/android/tools/r8/internal/OJ;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/OJ;Ljava/util/Set;Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_0

    .line 119
    :cond_a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 120
    iget-object v6, v4, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 121
    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Gu;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_0

    .line 122
    :cond_b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-nez v7, :cond_c

    .line 123
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 124
    :cond_c
    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    .line 125
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 126
    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->l:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v4, v7}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 127
    :cond_d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    sget-object v8, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 129
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    .line 130
    invoke-static {v8, v4, v9}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 131
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 132
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    instance-of v9, v8, Lcom/android/tools/r8/internal/C4;

    if-eqz v9, :cond_f

    .line 134
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v8

    if-eqz v8, :cond_e

    goto/16 :goto_4

    .line 135
    :cond_f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 136
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v9

    .line 137
    iget-object v10, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v10, v5}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v10

    if-nez v10, :cond_10

    goto/16 :goto_4

    .line 138
    :cond_10
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    iget-object v12, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/J1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 139
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 140
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 141
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_4

    .line 142
    :cond_11
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 143
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q1()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 144
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v9

    .line 145
    iget-object v9, v9, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 146
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    .line 148
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v11, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_3

    .line 149
    :cond_12
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 150
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v9

    .line 151
    iget-object v9, v9, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 152
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_3

    .line 153
    :cond_13
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    iget-object v10, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->S4:Lcom/android/tools/r8/graph/S1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/S1;->a:Lcom/android/tools/r8/graph/A2;

    .line 154
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto/16 :goto_2

    .line 155
    :cond_14
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 156
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v8

    .line 157
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 158
    iget-object v9, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 159
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    if-ne v8, v7, :cond_16

    goto/16 :goto_2

    .line 160
    :cond_15
    iget-object v9, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 161
    iget-object v10, v9, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v9, Lcom/android/tools/r8/graph/G1;->f:Lcom/android/tools/r8/graph/A2;

    .line 162
    invoke-virtual {v8, v10}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v9, v9, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    .line 163
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto/16 :goto_2

    .line 164
    :cond_16
    :goto_4
    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->l:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v4, v7}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 165
    :cond_17
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    :cond_18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v4

    .line 167
    iget-object v5, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 168
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_0

    .line 169
    :cond_19
    iget-object v5, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 170
    iget-object v6, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    if-nez v5, :cond_1a

    goto/16 :goto_0

    .line 171
    :cond_1a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 172
    iget-object v4, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 173
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v4, v7, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 174
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 175
    iget-object v4, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 176
    :cond_1b
    sget-object v4, Lcom/android/tools/r8/internal/Zb0;->d:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v4, v5}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto/16 :goto_0

    .line 177
    :cond_1c
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 178
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 179
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zb0;

    move-result-object v5

    .line 180
    sget-object v6, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    if-ne v5, v6, :cond_1e

    .line 181
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    instance-of v4, v4, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v4, :cond_1d

    .line 184
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_5

    .line 185
    :cond_1f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 187
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 188
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 189
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Fu;

    if-nez v1, :cond_20

    goto :goto_6

    .line 190
    :cond_20
    iget-object v1, v1, Lcom/android/tools/r8/internal/Fu;->b:Lcom/android/tools/r8/internal/qU;

    .line 191
    iget-object v1, v1, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    .line 192
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 8

    .line 221
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 222
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 225
    iget-object v3, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 226
    iget-object v7, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Gu;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 230
    iget-object v1, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    sget-object v2, Lcom/android/tools/r8/internal/Zb0;->C:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v1

    .line 234
    iget-object v1, v1, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 235
    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/Fu;)V
    .locals 3

    .line 27
    iget-object v0, p3, Lcom/android/tools/r8/internal/Fu;->a:Lcom/android/tools/r8/graph/H2;

    .line 28
    iget-object p3, p3, Lcom/android/tools/r8/internal/Fu;->c:Ljava/util/Set;

    .line 29
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)Lcom/android/tools/r8/internal/mu;

    move-result-object p3

    if-nez p3, :cond_0

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Gu;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    .line 34
    iget-object p1, p3, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    if-eqz p1, :cond_3

    .line 35
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Od0;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    .line 36
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 37
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/R2;)V
    .locals 1

    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    instance-of v0, p2, Lcom/android/tools/r8/graph/X2;

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/C2;

    .line 198
    iget-object v0, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 199
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 201
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/graph/M2;)V

    .line 202
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 203
    iget-object v0, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 204
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 205
    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 206
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 209
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 210
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/graph/M2;)V

    .line 211
    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_3
    instance-of v0, p2, Lcom/android/tools/r8/graph/Y2;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Y2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/I2;

    .line 214
    iget-object v0, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 215
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 216
    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z
    .locals 2

    .line 886
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/DF1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/DF1;-><init>()V

    .line 888
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 889
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/android/tools/r8/internal/zu;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 636
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 637
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    instance-of v0, p2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 639
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 640
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 641
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 642
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 643
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Gu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/nu;
    .locals 4

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/kC;

    .line 8
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    new-instance v3, Lcom/android/tools/r8/internal/HF1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/tools/r8/internal/HF1;-><init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/kC;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Gu;->a(Ljava/util/function/Consumer;)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/nu;

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 13
    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/nu;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/Zb0;->t:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Zb0;Lcom/android/tools/r8/graph/H2;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    return p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    new-instance v1, Lcom/android/tools/r8/internal/OF1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/OF1;-><init>(Lcom/android/tools/r8/internal/zu;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Gu;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final d()Lcom/android/tools/r8/internal/nu;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zu;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zu;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zu;->b()Lcom/android/tools/r8/internal/nu;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/xF1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/xF1;-><init>(Lcom/android/tools/r8/internal/Gu;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zu;->e()V

    .line 7
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v1, :cond_2

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 9

    sget-boolean v0, Lcom/android/tools/r8/internal/zu;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/zu;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zu;->c:Lcom/android/tools/r8/internal/Gu;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    sget-object v4, Lcom/android/tools/r8/internal/XB;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/XB;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unboxed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enums: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to unbox "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enums."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lcom/android/tools/r8/internal/sF1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/sF1;-><init>(Lcom/android/tools/r8/internal/zu;)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/Zb0;->c:Lcom/android/tools/r8/internal/Vb0;

    if-ne v6, v7, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Pinned: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v3, Lcom/android/tools/r8/internal/tF1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/tF1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/tools/r8/internal/u20;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/u20;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/zu;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/android/tools/r8/internal/uF1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/uF1;-><init>(Lcom/android/tools/r8/internal/Y0;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/tools/r8/internal/u20;->k:Lcom/android/tools/r8/internal/p20;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/tools/r8/internal/p20;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/p20;-><init>(Lcom/android/tools/r8/internal/u20;)V

    iput-object v4, v2, Lcom/android/tools/r8/internal/u20;->k:Lcom/android/tools/r8/internal/p20;

    :cond_6
    iget-object v4, v2, Lcom/android/tools/r8/internal/u20;->k:Lcom/android/tools/r8/internal/p20;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/android/tools/r8/internal/vF1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/vF1;-><init>(Lcom/android/tools/r8/internal/Y0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v4, Lcom/android/tools/r8/internal/wF1;

    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/internal/wF1;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/Y0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->info(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
