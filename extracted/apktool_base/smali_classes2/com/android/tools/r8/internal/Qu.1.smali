.class public final Lcom/android/tools/r8/internal/Qu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eg;


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Mu;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/h80;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Lcom/android/tools/r8/internal/nu;

.field public final f:Lcom/android/tools/r8/internal/nC;

.field public final g:Lcom/android/tools/r8/internal/Tu;

.field public final h:Lcom/android/tools/r8/internal/h80;

.field public final i:Lcom/android/tools/r8/internal/j80;

.field public final j:Lcom/android/tools/r8/graph/N5;

.field public final k:Lcom/android/tools/r8/internal/M70;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/Tu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qu;->h:Lcom/android/tools/r8/internal/h80;

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qu;->i:Lcom/android/tools/r8/internal/j80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qu;->c:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Qu;->f:Lcom/android/tools/r8/internal/nC;

    sget-boolean p2, Lcom/android/tools/r8/internal/Nu;->t:Z

    new-instance p2, Lcom/android/tools/r8/internal/Mu;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/Mu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nu;)V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p4

    iget-object v0, p3, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p3, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/M2;

    iget-object v0, p2, Lcom/android/tools/r8/internal/Mu;->c:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p2, Lcom/android/tools/r8/internal/Mu;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p4, v1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Qu;->g:Lcom/android/tools/r8/internal/Tu;

    new-instance p2, Lcom/android/tools/r8/graph/N5;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/N5;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qu;->j:Lcom/android/tools/r8/graph/N5;

    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qu;->k:Lcom/android/tools/r8/internal/M70;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 159
    new-instance p1, Lcom/android/tools/r8/internal/wc;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/wc;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->A:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/L4;)V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 599
    sget-boolean p0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    .line 601
    iget p0, p1, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 p0, p0, 0x8

    iput p0, p1, Lcom/android/tools/r8/graph/g;->c:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1$a;)V
    .locals 1

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 400
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 401
    new-instance v0, Lcom/android/tools/r8/internal/aU0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aU0;-><init>()V

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g1$a;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/k3;)V
    .locals 1

    .line 403
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 404
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J;)V
    .locals 0

    .line 4
    iput-object p0, p2, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    return-void
.end method

.method public static synthetic a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 571
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/wH;Ljava/lang/Integer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 572
    invoke-virtual {p0, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 463
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 0

    .line 39
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/mu;)Z
    .locals 2

    .line 618
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 621
    iget-object v1, p1, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 623
    iget-object p1, p1, Lcom/android/tools/r8/internal/mu;->d:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/g1;

    .line 625
    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 626
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 570
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 385
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p0, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1$a;)Lcom/android/tools/r8/graph/j1$a;
    .locals 1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 21
    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    .line 22
    iput-object v0, p1, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/kU0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kU0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 602
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 604
    iget-object p2, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 605
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 606
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 608
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    goto :goto_0

    .line 612
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 614
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 615
    iget-object p1, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 616
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, p3

    .line 617
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;
    .locals 6

    .line 502
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 503
    sget-boolean p2, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;
    .locals 5

    .line 669
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 670
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 671
    array-length v1, p1

    new-array v2, v1, [Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 672
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 674
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 678
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/g1;
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 387
    iget-object p2, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 388
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 389
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 390
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 391
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 392
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 395
    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3, v0, p2}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    .line 396
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/rU0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rU0;-><init>()V

    .line 397
    invoke-virtual {p1, p3, p2, v0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 658
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 659
    iget-object v1, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 660
    iget-object v2, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_0

    return-object p1

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 662
    iget-object v3, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 663
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    .line 664
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/bU0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bU0;-><init>()V

    .line 665
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    .line 666
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    sget-boolean v1, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 668
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/graph/R2$h;->e:Lcom/android/tools/r8/graph/R2$h;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    :cond_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    .line 574
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 575
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 576
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->W0()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    const/4 v2, 0x0

    .line 577
    iput-object v2, v0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    .line 578
    new-instance v0, Lcom/android/tools/r8/internal/Qr0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 579
    iget-object v3, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 580
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 581
    iget-object v4, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->A3:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/tools/r8/internal/Qr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/B60;)V

    .line 582
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qr0;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 583
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 584
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 585
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 586
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    new-instance v2, Lcom/android/tools/r8/internal/oU0;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/oU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/graph/H5;)V

    .line 587
    invoke-virtual {v0, p3, v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 588
    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->i:Lcom/android/tools/r8/internal/j80;

    new-instance v0, Lcom/android/tools/r8/graph/H5;

    .line 589
    iget-object p2, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 590
    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 8

    .line 627
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 629
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->g:Lcom/android/tools/r8/internal/Tu;

    .line 630
    iget-object v2, v2, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 631
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nl0;->b:Lcom/android/tools/r8/graph/H2;

    .line 632
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 633
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p2

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->g:Lcom/android/tools/r8/internal/Tu;

    .line 636
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 637
    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl0;->b:Lcom/android/tools/r8/graph/H2;

    .line 638
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 639
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 640
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    if-eq p1, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 641
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 642
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Enum unboxing is changing the signature of a library override in a non unboxed class."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 643
    :cond_8
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object v7

    .line 644
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v6

    .line 645
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    .line 646
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    move-object v4, p1

    move v5, v6

    .line 647
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    new-instance v2, Lcom/android/tools/r8/internal/uU0;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/tools/r8/internal/uU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/A2;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/graph/j1;
    .locals 9

    .line 515
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 516
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 517
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 518
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 519
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 520
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_dispatch_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 521
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 523
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 524
    iget-object v4, p1, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 525
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 526
    new-instance v7, Lcom/android/tools/r8/internal/XT0;

    invoke-direct {v7, p2}, Lcom/android/tools/r8/internal/XT0;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 527
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 528
    new-instance v3, Lcom/android/tools/r8/internal/QG;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/QG;-><init>()V

    .line 529
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 530
    new-instance v5, Lcom/android/tools/r8/internal/YT0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/YT0;-><init>(Ljava/util/IdentityHashMap;)V

    invoke-virtual {p5, v5}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 531
    iget-object p5, p1, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 534
    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 535
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 538
    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    new-instance v5, Lcom/android/tools/r8/internal/ZT0;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/ZT0;-><init>(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/wH;)V

    .line 539
    invoke-interface {v0, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 540
    new-instance v0, Lcom/android/tools/r8/internal/Iu;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 541
    iget-object v5, p1, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 542
    invoke-direct {v0, v4, v5, p4, v3}, Lcom/android/tools/r8/internal/Iu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/QG;)V

    .line 543
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iu;->c()Lcom/android/tools/r8/graph/J;

    move-result-object p4

    .line 544
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    const/16 v3, 0x1009

    const/4 v4, 0x0

    .line 546
    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 547
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 549
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object p5

    .line 550
    iput-object p5, v0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 551
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    .line 552
    iget-object p5, p5, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 553
    iput-object p5, v0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 554
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    .line 555
    iget-object p5, p5, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 556
    iput-object p5, v0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 557
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p5

    .line 558
    iget-object p1, p1, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 559
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->h:Lcom/android/tools/r8/internal/h80;

    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 563
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 564
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object p4, p0, Lcom/android/tools/r8/internal/Qu;->i:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 566
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    :goto_2
    if-ge v4, p4, :cond_4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 567
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->k:Lcom/android/tools/r8/internal/M70;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_2

    .line 568
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez p1, :cond_6

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 569
    :cond_6
    :goto_3
    invoke-interface {p2, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p5
.end method

.method public final a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Pu;
    .locals 10

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)V

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/Fg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/Fg;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Eg;)V

    .line 43
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/Fg;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->h:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/internal/hU0;

    invoke-direct {v1, v9}, Lcom/android/tools/r8/internal/hU0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 47
    sget-boolean v1, Lcom/android/tools/r8/internal/Mu;->i:Z

    if-nez v1, :cond_1

    .line 48
    iget-object v1, v0, Lcom/android/tools/r8/internal/Mu;->c:Lcom/android/tools/r8/internal/n6;

    .line 49
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 50
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Nu;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Mu;->d:Lcom/android/tools/r8/internal/r6;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Mu;->c:Lcom/android/tools/r8/internal/n6;

    iget-object v7, v0, Lcom/android/tools/r8/internal/Mu;->f:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Mu;->g:Ljava/util/IdentityHashMap;

    .line 54
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/internal/Nu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Lcom/android/tools/r8/internal/q6;Lcom/android/tools/r8/internal/n6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;)V

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 58
    iget-object p3, p1, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/S40;->a()V

    .line 59
    sget-object p3, Lcom/android/tools/r8/ir/optimize/A;->a:Lcom/android/tools/r8/ir/optimize/A;

    .line 60
    iput-object p3, v1, Lcom/android/tools/r8/internal/mZ;->n:Lcom/android/tools/r8/ir/optimize/A;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/eA;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->h:Lcom/android/tools/r8/internal/h80;

    new-instance p3, Lcom/android/tools/r8/internal/sU0;

    invoke-direct {p3, v1}, Lcom/android/tools/r8/internal/sU0;-><init>(Lcom/android/tools/r8/internal/Nu;)V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 63
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->k:Lcom/android/tools/r8/internal/M70;

    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 64
    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 65
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/internal/l4;)Lcom/android/tools/r8/internal/M70;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 67
    new-instance p2, Lcom/android/tools/r8/internal/Pu;

    iget-object p3, p0, Lcom/android/tools/r8/internal/Qu;->i:Lcom/android/tools/r8/internal/j80;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->j:Lcom/android/tools/r8/graph/N5;

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v0

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/android/tools/r8/internal/Pu;-><init>(Lcom/android/tools/r8/internal/eA;Lcom/android/tools/r8/internal/j80;Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/O5;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/eA;
    .locals 6

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/b40;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/b40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Qu;->a()Ljava/util/Set;

    move-result-object v2

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/Qu;->c:Lcom/android/tools/r8/internal/h80;

    new-instance v5, Lcom/android/tools/r8/internal/xU0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/xU0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiPredicate;)Z

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->c:Lcom/android/tools/r8/internal/h80;

    new-instance v4, Lcom/android/tools/r8/internal/yU0;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/android/tools/r8/internal/yU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/b40;)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 12
    iget-object v1, v3, Lcom/android/tools/r8/internal/b40;->a:Lcom/android/tools/r8/internal/m80;

    iget-object v2, v3, Lcom/android/tools/r8/internal/b40;->b:Lcom/android/tools/r8/internal/eX;

    iget-object v3, v3, Lcom/android/tools/r8/internal/b40;->c:Lcom/android/tools/r8/internal/Ef;

    .line 13
    new-instance v4, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/zU0;

    invoke-direct {v1, p0, p1, v4}, Lcom/android/tools/r8/internal/zU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 16
    invoke-virtual {v4, v1, p1, p2}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/PT;)Ljava/util/Collection;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 370
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 371
    sget-boolean v2, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v2, :cond_1

    .line 372
    iget-object v2, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 373
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 374
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/tU0;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/tools/r8/internal/tU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;)V

    .line 375
    sget-object p2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 376
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/PT;)Ljava/util/Collection;
    .locals 10

    .line 405
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 406
    iget-object v0, p3, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 407
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    .line 408
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 409
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v0

    .line 410
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    .line 411
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 412
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v1

    add-int/2addr v1, v0

    .line 413
    invoke-direct {v6, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 414
    iget-object v0, p3, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 415
    new-instance v1, Lcom/android/tools/r8/internal/lU0;

    invoke-direct {v1, v6}, Lcom/android/tools/r8/internal/lU0;-><init>(Ljava/util/Map;)V

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    .line 417
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 418
    new-instance v1, Lcom/android/tools/r8/internal/mU0;

    invoke-direct {v1, p0, v0, p3, v6}, Lcom/android/tools/r8/internal/mU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 419
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 420
    new-instance v3, Lcom/android/tools/r8/internal/nU0;

    invoke-direct {v3, p0, v0, p3, v6}, Lcom/android/tools/r8/internal/nU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 422
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F2;

    .line 423
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 425
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v4

    .line 426
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 427
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 428
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_2

    :cond_2
    move v3, v8

    goto :goto_2

    .line 429
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-nez v1, :cond_8

    .line 430
    sget-boolean v1, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v1, :cond_5

    .line 431
    iget-object v5, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 432
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 433
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 434
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    iget-object v9, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v0, p1, v9}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 435
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_8
    move-object v5, v1

    :goto_5
    if-nez v5, :cond_b

    .line 436
    iget-object v0, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 437
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 438
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 439
    sget-boolean v2, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 440
    :cond_a
    :goto_7
    invoke-virtual {p0, p3, v6, v1, v8}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    goto :goto_6

    .line 441
    :cond_b
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 442
    iget-object v0, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 443
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 444
    invoke-interface {v5}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 445
    invoke-virtual {p0, p3, v6, v0, v2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_1

    :cond_c
    if-nez v3, :cond_d

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, v6

    move-object v3, v5

    move v5, v8

    .line 446
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/m80;Z)V

    goto/16 :goto_1

    .line 447
    :cond_d
    iget-object v0, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 448
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_f

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 449
    :cond_f
    :goto_8
    iget-object v0, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 451
    invoke-virtual {p0, p3, v6, v0, v8}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto/16 :goto_1

    :cond_10
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v6

    move-object v3, v5

    move v5, v8

    .line 453
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/m80;Z)V

    goto/16 :goto_1

    .line 454
    :cond_11
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 455
    :cond_13
    :goto_9
    iget-object v1, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 456
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez v0, :cond_15

    .line 457
    instance-of v0, v5, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_14

    goto :goto_a

    .line 458
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 459
    :cond_15
    :goto_a
    invoke-interface {v5}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 460
    invoke-virtual {p0, p3, v6, v0, v8}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_1

    :cond_16
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v6

    move-object v3, v5

    move v5, v8

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/m80;Z)V

    goto/16 :goto_1

    .line 462
    :cond_17
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 3

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->f:Lcom/android/tools/r8/internal/nC;

    new-instance v2, Lcom/android/tools/r8/internal/fU0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/fU0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 8

    .line 506
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 507
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 508
    iget-object v7, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    .line 510
    monitor-enter v7

    .line 511
    :try_start_0
    iget-object v1, v7, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/p6;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 512
    iget-object v1, v7, Lcom/android/tools/r8/internal/Mu;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 514
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/OW;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 71
    iget-object v0, v0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->g:Lcom/android/tools/r8/internal/Tu;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/PT;)Ljava/util/Collection;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->f:Lcom/android/tools/r8/internal/nC;

    .line 77
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/PT;)Ljava/util/Collection;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    .line 79
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 80
    iget-object v3, v3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 81
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/s3;->a()V

    .line 82
    sget-object v3, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/graph/g1;

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->F0()[Lcom/android/tools/r8/graph/g1;

    .line 84
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    sget-object v3, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v3, v2, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 86
    iget-object v2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O4;->a()V

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    .line 88
    iget-object v2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 89
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O4;->b()V

    .line 90
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qu;->f:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 91
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v3

    .line 92
    iget-object v4, v2, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 93
    iget-object v4, v4, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 94
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/s3;->a()V

    .line 95
    sget-object v4, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/graph/g1;

    .line 96
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->F0()[Lcom/android/tools/r8/graph/g1;

    .line 97
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    sget-object v4, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v4, v3, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 99
    iget-object v3, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O4;->a()V

    .line 100
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    .line 101
    iget-object v2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 102
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O4;->b()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 104
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/j1;

    .line 105
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/N4;->a([Lcom/android/tools/r8/graph/j1;)V

    .line 106
    iget-object p1, p2, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 107
    sget-object p2, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/cU0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/cU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/OW;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    sget-object p2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p2, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 111
    iget-object p2, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Function;)V

    .line 112
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 113
    new-instance p2, Lcom/android/tools/r8/internal/dU0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/dU0;-><init>(Lcom/android/tools/r8/internal/Qu;)V

    .line 114
    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 115
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Function;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 0

    .line 591
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Qu;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1$a;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/vU0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/vU0;-><init>()V

    .line 592
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 593
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 594
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 595
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 596
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 597
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vc;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 18
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 25
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 26
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/pU0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/pU0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 28
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    .line 30
    new-instance p1, Lcom/android/tools/r8/internal/WY;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/WY;-><init>()V

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/Au;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 32
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->o:Lcom/android/tools/r8/internal/TW;

    .line 33
    iput-object p3, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    new-instance v1, Lcom/android/tools/r8/graph/S5;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/S5;-><init>(Lcom/android/tools/r8/graph/proto/j;)V

    .line 652
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 653
    iget-object p3, p2, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 654
    sget-boolean v0, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 655
    :cond_1
    :goto_0
    iput-object p3, p1, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    .line 656
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p2

    sget-object p3, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    if-eqz p2, :cond_2

    .line 657
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    :cond_2
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 464
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Qu;->c(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/b40;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)V
    .locals 5

    .line 116
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p5

    .line 117
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object p5

    .line 118
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object p5

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 120
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    .line 121
    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 122
    iget v3, p5, Lcom/android/tools/r8/internal/vc;->a:I

    .line 123
    iget-object v4, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 124
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 125
    aput-object v4, v2, v3

    .line 126
    check-cast v2, [Lcom/android/tools/r8/graph/M2;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 129
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 130
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/android/tools/r8/internal/gU0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/gU0;-><init>()V

    .line 132
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p1

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/iU0;

    invoke-direct {v4, p0, p4, p5, v0}, Lcom/android/tools/r8/internal/iU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vc;Lcom/android/tools/r8/graph/I2;)V

    .line 134
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 135
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 136
    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    .line 138
    iget-object p5, p2, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    .line 139
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 140
    invoke-virtual {p5, v0, v1}, Lcom/android/tools/r8/internal/p6;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/A2;

    .line 141
    iget-object v0, p2, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    .line 142
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 143
    invoke-virtual {v0, p5, v1}, Lcom/android/tools/r8/internal/p6;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 144
    iget-object v0, p2, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    .line 145
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 146
    invoke-virtual {v0, p5, v1}, Lcom/android/tools/r8/internal/p6;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 147
    iget-object p2, p2, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    .line 148
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 149
    sget-boolean v0, Lcom/android/tools/r8/internal/q6;->e:Z

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p2, p5}, Lcom/android/tools/r8/internal/p6;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 152
    invoke-virtual {p2, p5}, Lcom/android/tools/r8/internal/p6;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 153
    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 154
    :cond_3
    :goto_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/q6;->d:Ljava/util/IdentityHashMap;

    .line 155
    invoke-virtual {p2, p5, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p2, p3, Lcom/android/tools/r8/internal/b40;->a:Lcom/android/tools/r8/internal/m80;

    .line 157
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/m80;Z)V
    .locals 8

    .line 465
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    .line 466
    iget-object v1, p4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 467
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 469
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 470
    new-instance p4, Lcom/android/tools/r8/internal/wU0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/wU0;-><init>()V

    invoke-static {p4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 471
    instance-of p4, p3, Lcom/android/tools/r8/graph/H5;

    const/4 v1, 0x0

    if-eqz p4, :cond_8

    if-eqz p5, :cond_4

    if-nez v0, :cond_3

    .line 472
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 473
    :cond_3
    :goto_1
    move-object p5, p3

    check-cast p5, Lcom/android/tools/r8/graph/H5;

    const/4 v0, 0x1

    .line 474
    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    goto/16 :goto_5

    .line 475
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p5

    if-nez p5, :cond_5

    .line 476
    move-object p5, p3

    check-cast p5, Lcom/android/tools/r8/graph/H5;

    .line 477
    invoke-virtual {p0, p1, p2, p5, v1}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    goto :goto_5

    :cond_5
    if-nez v0, :cond_7

    .line 478
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p5

    if-eqz p5, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    const/4 p5, 0x0

    goto :goto_5

    :cond_8
    if-nez v0, :cond_a

    .line 479
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-eqz p5, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 480
    :cond_a
    :goto_3
    iget-object p5, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p5, v0}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p5

    .line 482
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 483
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_4
    if-ge v4, v2, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    .line 484
    iget-object v6, p0, Lcom/android/tools/r8/internal/Qu;->i:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {v6, p5}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 485
    iget-object v6, p0, Lcom/android/tools/r8/internal/Qu;->k:Lcom/android/tools/r8/internal/M70;

    invoke-virtual {v6, p5, v5}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_4

    :cond_b
    move-object p5, v0

    .line 486
    :goto_5
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    .line 487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 488
    invoke-virtual {p0, p1, p2, v4, v1}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 489
    sget-boolean v7, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v7, :cond_d

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 490
    :cond_d
    :goto_7
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    if-eqz p4, :cond_f

    .line 491
    move-object v0, p3

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, v6

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/A2;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 493
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    if-eqz p4, :cond_10

    .line 494
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, p5, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_8

    .line 495
    :cond_10
    iget-object p4, p0, Lcom/android/tools/r8/internal/Qu;->a:Lcom/android/tools/r8/internal/Mu;

    .line 496
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 497
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    .line 498
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p5, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, p1, p5}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 499
    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 500
    :goto_8
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 501
    invoke-virtual {v6, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p3, p4, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_9

    :cond_11
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V
    .locals 21

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    sget-boolean v1, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 167
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v3

    .line 169
    iget-object v4, v0, Lcom/android/tools/r8/internal/Qu;->g:Lcom/android/tools/r8/internal/Tu;

    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v4

    .line 172
    iget-object v5, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;

    move-result-object v5

    .line 173
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v6

    .line 174
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 175
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_35

    .line 176
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 177
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    .line 178
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 179
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 180
    invoke-virtual {v7, v10}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 181
    invoke-virtual {v7, v10}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Optional;

    .line 182
    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 183
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 184
    invoke-interface {v8, v10, v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 185
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 186
    :cond_4
    invoke-interface {v8}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    instance-of v11, v10, Lcom/android/tools/r8/internal/jh;

    if-eqz v11, :cond_d

    .line 189
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v10

    .line 190
    iget-object v11, v0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    .line 191
    iget-object v13, v10, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 192
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    .line 193
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    sget-object v14, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 196
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v15

    .line 197
    invoke-static {v14, v13, v15}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 198
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    .line 199
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 200
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v14

    .line 201
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    iget-object v12, v0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v15, v12, :cond_7

    .line 202
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 203
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 204
    new-instance v12, Lcom/android/tools/r8/internal/ih;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ih;-><init>()V

    .line 205
    iget-object v13, v4, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    .line 206
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 207
    iput-object v13, v12, Lcom/android/tools/r8/internal/ih;->d:Lcom/android/tools/r8/graph/M2;

    .line 208
    iget-object v13, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 209
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v14

    .line 210
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v15

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v15, v14, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v13

    .line 211
    invoke-interface {v5, v13, v9}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    .line 212
    iput-object v13, v12, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 213
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v13

    .line 214
    iput-object v13, v12, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 215
    new-instance v13, Lcom/android/tools/r8/internal/jh;

    iget-object v14, v12, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v15, v12, Lcom/android/tools/r8/internal/ih;->d:Lcom/android/tools/r8/graph/M2;

    const/4 v9, 0x0

    .line 216
    invoke-direct {v13, v14, v15, v9}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    .line 217
    iget-object v9, v12, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v9, :cond_9

    .line 218
    invoke-virtual {v13, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 219
    :cond_9
    invoke-interface {v8, v13}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 221
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    new-instance v12, Lcom/android/tools/r8/internal/eU0;

    invoke-direct {v12, v11}, Lcom/android/tools/r8/internal/eU0;-><init>(Ljava/util/List;)V

    if-ne v9, v10, :cond_b

    .line 222
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 223
    :cond_b
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v11

    .line 224
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/zE;

    .line 225
    invoke-interface {v12, v13}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 226
    invoke-virtual {v9, v13}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/internal/zE;)V

    const/4 v14, 0x0

    .line 227
    invoke-virtual {v13, v9, v10, v14}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    .line 228
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v11

    if-eqz v11, :cond_30

    .line 229
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v10

    .line 230
    iget-object v11, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v13

    .line 232
    invoke-virtual {v11, v13, v12}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 233
    iget-object v12, v0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 234
    iget-object v12, v0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    .line 235
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v12

    .line 236
    sget-boolean v13, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v13, :cond_f

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 237
    :cond_f
    :goto_6
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    .line 238
    iget-object v14, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 239
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/A2;

    sget-object v9, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v14, v13, v15, v9}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object v9

    .line 241
    iget-object v14, v9, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    if-ne v14, v13, :cond_11

    .line 242
    iget-object v13, v9, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 243
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_7

    .line 244
    :cond_10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    goto/16 :goto_f

    .line 245
    :cond_11
    :goto_7
    new-instance v13, Ljava/util/ArrayList;

    .line 246
    iget-object v14, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    .line 248
    :goto_8
    iget-object v15, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_13

    .line 250
    invoke-virtual {v12, v14}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 251
    iget-object v2, v9, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 252
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 253
    invoke-virtual {v2, v14}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v2

    if-nez v2, :cond_12

    .line 255
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    goto :goto_8

    .line 256
    :cond_13
    iget-object v2, v9, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 257
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 258
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/Bv;

    .line 259
    iget-object v15, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v14, v15}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v15

    .line 260
    sget-boolean v16, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v16, :cond_15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v2

    .line 261
    instance-of v2, v15, Lcom/android/tools/r8/internal/Hm0;

    if-nez v2, :cond_16

    .line 262
    instance-of v2, v15, Lcom/android/tools/r8/internal/Im0;

    if-eqz v2, :cond_14

    goto :goto_a

    .line 263
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_15
    move-object/from16 v17, v2

    .line 264
    :cond_16
    :goto_a
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    instance-of v2, v15, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v2, :cond_1a

    if-nez v16, :cond_18

    .line 266
    iget-object v2, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 267
    :cond_18
    :goto_b
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/F1;->O()Lcom/android/tools/r8/internal/Hm0;

    move-result-object v2

    iget-object v14, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 268
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v15

    move-object/from16 v18, v4

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    sget-boolean v2, Lcom/android/tools/r8/internal/Hm0;->d:Z

    if-nez v2, :cond_19

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/ae0;->y()Z

    .line 271
    :cond_19
    sget-boolean v2, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 272
    new-instance v2, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 273
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v15

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .line 274
    invoke-interface {v5, v15, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 275
    iput-object v15, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 276
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ph;

    .line 277
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    move-object/from16 v20, v3

    goto :goto_e

    :cond_1a
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    if-nez v16, :cond_1c

    .line 278
    iget-object v2, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1c
    :goto_c
    if-nez v16, :cond_1e

    .line 279
    instance-of v2, v15, Lcom/android/tools/r8/internal/Im0;

    if-eqz v2, :cond_1d

    goto :goto_d

    .line 280
    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 281
    :cond_1e
    :goto_d
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v2

    iget-object v4, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 282
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v6

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v14

    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    sget-boolean v15, Lcom/android/tools/r8/internal/Im0;->d:Z

    if-nez v15, :cond_1f

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/D70;->x()Z

    .line 285
    :cond_1f
    sget-boolean v15, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 286
    new-instance v15, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/ph;-><init>()V

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .line 287
    invoke-interface {v5, v6, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 288
    iput-object v6, v15, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 289
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ph;

    iget-wide v14, v2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 290
    iput-wide v14, v3, Lcom/android/tools/r8/internal/ph;->d:J

    .line 291
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    .line 292
    :goto_e
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 293
    invoke-interface {v8, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-nez v16, :cond_20

    if-ne v2, v10, :cond_21

    :cond_20
    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v20

    goto/16 :goto_9

    .line 296
    :cond_21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_22
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 297
    sget-boolean v2, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 298
    new-instance v2, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 299
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/PJ;

    .line 300
    iget-object v3, v9, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 301
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 302
    iput-object v3, v2, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 303
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    .line 304
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v7, v12, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v2

    .line 305
    :goto_f
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_23

    move-object/from16 v2, p3

    goto :goto_10

    .line 306
    :cond_23
    iget-object v2, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    .line 308
    invoke-interface {v2, v4, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 309
    :goto_10
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 310
    iget-object v2, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 311
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 312
    iget-object v3, v9, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 313
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 314
    iget-boolean v4, v12, Lcom/android/tools/r8/internal/QJ;->o:Z

    .line 315
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    goto :goto_11

    .line 317
    :cond_24
    iget-object v3, v9, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 318
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 319
    :goto_11
    sget-boolean v3, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v3, :cond_26

    if-eqz v2, :cond_25

    goto :goto_12

    :cond_25
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 320
    :cond_26
    :goto_12
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 321
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 322
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 323
    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v2

    move-object/from16 v4, p2

    .line 325
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;

    move-result-object v2

    .line 326
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 327
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object v2

    .line 328
    iget v2, v2, Lcom/android/tools/r8/internal/RD;->a:I

    .line 329
    invoke-virtual {v12, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-nez v3, :cond_28

    .line 331
    new-instance v3, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_13

    :cond_27
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 332
    :cond_28
    :goto_13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    goto :goto_16

    :cond_29
    if-nez v3, :cond_2b

    .line 333
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result v6

    if-eqz v6, :cond_2a

    goto :goto_14

    :cond_2a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2b
    :goto_14
    if-nez v3, :cond_2d

    .line 334
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    instance-of v3, v3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v3, :cond_2c

    goto :goto_15

    .line 336
    :cond_2c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 337
    :cond_2d
    :goto_15
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v2

    .line 338
    iget-wide v2, v2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v2, v2

    .line 339
    :goto_16
    new-instance v3, Lcom/android/tools/r8/internal/vZ;

    .line 340
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    iget-object v9, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v11, v6, v9}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object v6

    const/4 v9, 0x0

    .line 341
    invoke-interface {v5, v6, v9}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 342
    invoke-direct {v3, v11, v2, v6}, Lcom/android/tools/r8/internal/vZ;-><init>(Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)V

    .line 343
    invoke-interface {v8, v3, v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_2e
    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v20

    goto/16 :goto_2

    :cond_2f
    move-object/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    goto/16 :goto_4

    :cond_30
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    const/4 v9, 0x0

    move-object/from16 v4, p2

    .line 344
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 345
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v2

    .line 346
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 347
    invoke-virtual {v3, v9, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 348
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_31
    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v20

    goto/16 :goto_4

    .line 349
    :cond_32
    iget-object v3, v0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 350
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v2

    if-eqz v2, :cond_31

    move-object/from16 v3, v20

    .line 351
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/mu;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 352
    invoke-interface {v8}, Lcom/android/tools/r8/internal/EE;->i()V

    :cond_33
    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    goto/16 :goto_4

    :cond_34
    move-object/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 353
    :cond_35
    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 354
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    .line 355
    :cond_36
    :goto_17
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 356
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 357
    invoke-virtual {v7, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 358
    invoke-virtual {v7, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    .line 359
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 360
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    const/4 v3, 0x0

    .line 361
    invoke-interface {v1, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 362
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_18

    :cond_37
    const/4 v3, 0x0

    .line 363
    :goto_18
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_17

    .line 364
    :cond_38
    sget-object v1, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 365
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    move-object/from16 v3, p1

    .line 366
    invoke-virtual {v3, v5, v1, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 8

    .line 160
    sget-boolean v0, Lcom/android/tools/r8/internal/k40;->a:Z

    sget-object v3, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 161
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v6

    .line 162
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v7

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p4

    .line 163
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 377
    invoke-static {p4, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/mu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->j:Lcom/android/tools/r8/graph/N5;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 379
    iget-object p1, p1, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    .line 380
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 381
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/qU0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/qU0;-><init>(Ljava/util/Map;)V

    .line 382
    invoke-virtual {p0, p4, p2, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    .line 383
    sget-boolean p2, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 384
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/WT0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/WT0;-><init>(Ljava/util/Map;)V

    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p0, p3, p1, v1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, p3, p1, v1}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    :goto_1
    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 20
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PT;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    new-instance v1, Lcom/android/tools/r8/internal/AU0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/AU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/graph/H5;)V

    .line 22
    invoke-virtual {p3, p2, v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 2

    .line 23
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Qu;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1$a;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object p1, p2, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Qu;->c(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qu;->f:Lcom/android/tools/r8/internal/nC;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/jU0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/jU0;-><init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/g1;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->b:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 7
    invoke-static {v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qu;->e:Lcom/android/tools/r8/internal/nu;

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/Qu;->l:Z

    if-nez p1, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->x0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->j:Lcom/android/tools/r8/graph/N5;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 8
    iput-boolean v1, p1, Lcom/android/tools/r8/graph/j1;->t:Z

    return-void

    .line 9
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qu;->j:Lcom/android/tools/r8/graph/N5;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 14
    iput-boolean v1, p1, Lcom/android/tools/r8/graph/j1;->t:Z

    return-void

    .line 15
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/A2;

    return-void
.end method
