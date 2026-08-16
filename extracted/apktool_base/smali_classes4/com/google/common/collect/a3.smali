.class public final Lcom/google/common/collect/a3;
.super Lcom/google/common/collect/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/a3$f;,
        Lcom/google/common/collect/a3$g;,
        Lcom/google/common/collect/a3$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final i:J = 0x1L
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public final transient f:Lcom/google/common/collect/a3$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a3$g<",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public final transient g:Lcom/google/common/collect/R0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/R0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final transient h:Lcom/google/common/collect/a3$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a3$f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a3$g;Lcom/google/common/collect/R0;Lcom/google/common/collect/a3$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$g<",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;>;",
            "Lcom/google/common/collect/R0<",
            "TE;>;",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/R0;->b()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/o;-><init>(Ljava/util/Comparator;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/o;-><init>(Ljava/util/Comparator;)V

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/R0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/R0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    .line 7
    new-instance p1, Lcom/google/common/collect/a3$f;

    invoke-direct {p1}, Lcom/google/common/collect/a3$f;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    .line 8
    invoke-static {p1, p1}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    .line 9
    new-instance p1, Lcom/google/common/collect/a3$g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/common/collect/a3$g;-><init>(Lcom/google/common/collect/a3$a;)V

    iput-object p1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    return-void
.end method

.method public static A(Lcom/google/common/collect/a3$f;)I
    .locals 0
    .param p0    # Lcom/google/common/collect/a3$f;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/a3$f;->g(Lcom/google/common/collect/a3$f;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private D(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    const-class v1, Lcom/google/common/collect/o;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "range"

    const-class v2, Lcom/google/common/collect/a3;

    invoke-static {v2, v1}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/R0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/R0;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "rootReference"

    invoke-static {v2, v0}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/a3$g;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/common/collect/a3$g;-><init>(Lcom/google/common/collect/a3$a;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/collect/a3$f;

    invoke-direct {v0}, Lcom/google/common/collect/a3$f;-><init>()V

    const-string v1, "header"

    invoke-static {v2, v1}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->f(Lcom/google/common/collect/V1;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method public static E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3$f<",
            "TT;>;",
            "Lcom/google/common/collect/a3$f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/a3$f;->n(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    invoke-static {p1, p0}, Lcom/google/common/collect/a3$f;->m(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    return-void
.end method

.method public static F(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3$f<",
            "TT;>;",
            "Lcom/google/common/collect/a3$f<",
            "TT;>;",
            "Lcom/google/common/collect/a3$f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    invoke-static {p1, p2}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    return-void
.end method

.method private H(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->k(Lcom/google/common/collect/V1;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public static synthetic k(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3$f;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->B()Lcom/google/common/collect/a3$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/google/common/collect/a3;)Lcom/google/common/collect/R0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    return-object p0
.end method

.method public static synthetic m(Lcom/google/common/collect/a3;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/V1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a3;->G(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/V1$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3$f;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    return-object p0
.end method

.method public static synthetic o(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3$f;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->C()Lcom/google/common/collect/a3$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/a3;->F(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    return-void
.end method

.method public static synthetic r(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    return-void
.end method

.method public static x()Lcom/google/common/collect/a3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/a3<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/a3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static y(Ljava/lang/Iterable;)Lcom/google/common/collect/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/a3<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/a3;->x()Lcom/google/common/collect/a3;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/D1;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static z(Ljava/util/Comparator;)Lcom/google/common/collect/a3;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/a3<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/common/collect/a3;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/a3;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/a3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a3;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v1}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/a3$f;

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/a3$f;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final B()Lcom/google/common/collect/a3$f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v2}, Lcom/google/common/collect/R0;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v2}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/a3$f;->a(Lcom/google/common/collect/a3$f;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v3}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3;

    iget-object v1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/R0;->r(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/R0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/R0;->l(Lcom/google/common/collect/R0;)Lcom/google/common/collect/R0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/a3;-><init>(Lcom/google/common/collect/a3$g;Lcom/google/common/collect/R0;Lcom/google/common/collect/a3$f;)V

    return-object v0
.end method

.method public final C()Lcom/google/common/collect/a3$f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v2}, Lcom/google/common/collect/R0;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v2}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/a3$f;->b(Lcom/google/common/collect/a3$f;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v3}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->c(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->c(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final G(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a3$a;-><init>(Lcom/google/common/collect/a3;Lcom/google/common/collect/a3$f;)V

    return-object v0
.end method

.method public Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3;

    iget-object v1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    iget-object v2, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/R0;->d(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/R0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/R0;->l(Lcom/google/common/collect/R0;)Lcom/google/common/collect/R0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/a3;-><init>(Lcom/google/common/collect/a3$g;Lcom/google/common/collect/R0;Lcom/google/common/collect/a3$f;)V

    return-object v0
.end method

.method public bridge synthetic P6()Lcom/google/common/collect/K2;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/o;->P6()Lcom/google/common/collect/K2;

    move-result-object v0

    return-object v0
.end method

.method public P9(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    if-nez v0, :cond_3

    if-lez p2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a3;->y6(Ljava/lang/Object;I)I

    :cond_2
    return v2

    :cond_3
    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/a3$f;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/a3$f;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/a3$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v1, v2

    return p1
.end method

.method public bridge synthetic S1()Ljava/util/NavigableSet;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/o;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    sget-object v0, Lcom/google/common/collect/a3$e;->DISTINCT:Lcom/google/common/collect/a3$e;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/a3;->v(Lcom/google/common/collect/a3$e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0}, Lcom/google/common/collect/R0;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0}, Lcom/google/common/collect/R0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/collect/a3$f;->e(Lcom/google/common/collect/a3$f;I)I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/collect/a3$f;->i(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    invoke-static {v0, v2}, Lcom/google/common/collect/a3$f;->k(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    invoke-static {v0, v2}, Lcom/google/common/collect/a3$f;->m(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    invoke-static {v0, v2}, Lcom/google/common/collect/a3$f;->n(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v1, v1}, Lcom/google/common/collect/a3;->E(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->b()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/a3;->g()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->h(Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/o;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->g()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/W1;->h(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/o;->dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public e7(Ljava/lang/Object;II)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/a3;->y6(Ljava/lang/Object;I)I

    :cond_0
    return v8

    :cond_1
    return v7

    :cond_2
    new-array v9, v8, [I

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/a3$f;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/a3$f;

    move-result-object p1

    iget-object p3, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {p3, v0, p1}, Lcom/google/common/collect/a3$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v9, v7

    if-ne p1, p2, :cond_3

    move v7, v8

    :cond_3
    return v7
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/o;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a3$b;-><init>(Lcom/google/common/collect/a3;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a3$c;-><init>(Lcom/google/common/collect/a3;)V

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/o;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public pc(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a3;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/a3$f;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/a3$f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/a3$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v1, v2

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v2
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/o;->pollFirstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/o;->pollLastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/a3$f;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$e;",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v1}, Lcom/google/common/collect/R0;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->j(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a3;->s(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/common/collect/a3$d;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v1}, Lcom/google/common/collect/R0;->h()Lcom/google/common/collect/x;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->j(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->b(Lcom/google/common/collect/a3$f;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->j(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/a3$f;->j(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->b(Lcom/google/common/collect/a3$f;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->h(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a3;->s(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    goto :goto_0
.end method

.method public size()I
    .locals 2

    sget-object v0, Lcom/google/common/collect/a3$e;->SIZE:Lcom/google/common/collect/a3$e;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/a3;->v(Lcom/google/common/collect/a3$e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public final u(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/a3$f;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$e;",
            "Lcom/google/common/collect/a3$f<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v1}, Lcom/google/common/collect/R0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->h(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a3;->u(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/common/collect/a3$d;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v1}, Lcom/google/common/collect/R0;->f()Lcom/google/common/collect/x;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->h(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->b(Lcom/google/common/collect/a3$f;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->h(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/a3$f;->h(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/a3$e;->b(Lcom/google/common/collect/a3$f;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/a3$f;->j(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a3;->u(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide p1

    goto :goto_0
.end method

.method public final v(Lcom/google/common/collect/a3$e;)J
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/a3$e;->c(Lcom/google/common/collect/a3$f;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v3}, Lcom/google/common/collect/R0;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a3;->u(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v3}, Lcom/google/common/collect/R0;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a3;->s(Lcom/google/common/collect/a3$e;Lcom/google/common/collect/a3$f;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public y6(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a3;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/a3;->g:Lcom/google/common/collect/R0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/R0;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    iget-object v0, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a3$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v2, Lcom/google/common/collect/a3$f;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/a3$f;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/common/collect/a3;->h:Lcom/google/common/collect/a3$f;

    invoke-static {p1, v2, p1}, Lcom/google/common/collect/a3;->F(Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;Lcom/google/common/collect/a3$f;)V

    iget-object p1, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {p1, v0, v2}, Lcom/google/common/collect/a3$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/google/common/collect/a3;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/a3$f;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/a3$f;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/a3;->f:Lcom/google/common/collect/a3$g;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/a3$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v2, v1

    return p1
.end method
