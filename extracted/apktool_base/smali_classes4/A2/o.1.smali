.class public final LA2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA2/B;


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/o$f;,
        LA2/o$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LA2/B<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LA2/o$f<",
            "TN;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA2/o;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;II)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "LA2/o$f<",
            "TN;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, LA2/o;->a:Ljava/util/Map;

    iput-object p2, p0, LA2/o;->b:Ljava/util/List;

    invoke-static {p3}, LA2/D;->b(I)I

    move-result p2

    iput p2, p0, LA2/o;->c:I

    invoke-static {p4}, LA2/D;->b(I)I

    move-result p2

    iput p2, p0, LA2/o;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-gt p3, p2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gt p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lw2/H;->g0(Z)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-static {p0, p1}, LA2/o;->t(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Object;LA2/o$f;)LA2/u;
    .locals 0

    invoke-static {p0, p1}, LA2/o;->v(Ljava/lang/Object;LA2/o$f;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-static {p0, p1}, LA2/o;->u(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(LA2/o;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LA2/o;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(LA2/o;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LA2/o;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, LA2/o;->r(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(LA2/o;)I
    .locals 0

    iget p0, p0, LA2/o;->c:I

    return p0
.end method

.method public static synthetic p(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, LA2/o;->s(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(LA2/o;)I
    .locals 0

    iget p0, p0, LA2/o;->d:I

    return p0
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    sget-object v0, LA2/o;->e:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of p0, p0, LA2/o$g;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    sget-object v0, LA2/o;->e:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-static {p1, p0}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-static {p0, p1}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/lang/Object;LA2/o$f;)LA2/u;
    .locals 1

    instance-of v0, p1, LA2/o$f$b;

    if-eqz v0, :cond_0

    iget-object p1, p1, LA2/o$f;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p1, LA2/o$f;->a:Ljava/lang/Object;

    invoke-static {p1, p0}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static w(LA2/s;)LA2/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/s<",
            "TN;>;)",
            "LA2/o<",
            "TN;TV;>;"
        }
    .end annotation

    sget-object v0, LA2/o$e;->a:[I

    invoke-virtual {p0}, LA2/s;->h()LA2/s$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, LA2/s;->h()LA2/s$b;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance v0, LA2/o;

    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, LA2/o;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object v0
.end method

.method public static x(Ljava/lang/Object;Ljava/lang/Iterable;Lw2/t;)LA2/o;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Ljava/lang/Iterable<",
            "LA2/u<",
            "TN;>;>;",
            "Lw2/t<",
            "TN;TV;>;)",
            "LA2/o<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA2/u;

    invoke-virtual {v5}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, LA2/o$g;

    invoke-interface {p2, p0}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LA2/o$f$a;

    invoke-direct {v5, p0}, LA2/o$f$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    new-instance v5, LA2/o$f$b;

    invoke-direct {v5, p0}, LA2/o$f$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, LA2/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, LA2/o$g;

    invoke-direct {v7, v6}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v6, LA2/o$f$a;

    invoke-direct {v6, v5}, LA2/o$f$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lw2/H;->d(Z)V

    invoke-virtual {v5}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    sget-object v8, LA2/o;->e:Ljava/lang/Object;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-static {v7}, Lw2/H;->d(Z)V

    new-instance v7, LA2/o$g;

    invoke-direct {v7, v6}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v6, LA2/o$f$b;

    invoke-direct {v6, v5}, LA2/o$f$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_1

    :cond_5
    new-instance p0, LA2/o;

    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {p0, v0, p1, v3, v4}, LA2/o;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/o;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LA2/o$a;

    invoke-direct {v0, p0}, LA2/o$a;-><init>(LA2/o;)V

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/o$c;

    invoke-direct {v0, p0}, LA2/o$c;-><init>(LA2/o;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/o$b;

    invoke-direct {v0, p0}, LA2/o$b;-><init>(LA2/o;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    iget-object p2, p0, LA2/o;->a:Ljava/util/Map;

    sget-object v0, LA2/o;->e:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p2, LA2/o$g;

    if-eqz v1, :cond_1

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eq p2, v0, :cond_2

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    new-instance v1, LA2/o$g;

    invoke-direct {v1, p2}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p2, p0, LA2/o;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LA2/o;->c:I

    invoke-static {p2}, LA2/D;->d(I)I

    iget-object p2, p0, LA2/o;->b:Ljava/util/List;

    if-eqz p2, :cond_2

    new-instance v0, LA2/o$f$a;

    invoke-direct {v0, p1}, LA2/o$f$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, LA2/o;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v3, v0, LA2/o$g;

    if-eqz v3, :cond_1

    iget-object v3, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, LA2/o$g;

    invoke-static {v0}, LA2/o$g;->a(LA2/o$g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget v2, p0, LA2/o;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LA2/o;->d:I

    invoke-static {v2}, LA2/D;->b(I)I

    iget-object v2, p0, LA2/o;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    new-instance v3, LA2/o$f$b;

    invoke-direct {v3, p1}, LA2/o$f$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LA2/o;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, LA2/o$g;

    if-eqz v1, :cond_1

    iget-object v1, p0, LA2/o;->a:Ljava/util/Map;

    check-cast v0, LA2/o$g;

    invoke-static {v0}, LA2/o$g;->a(LA2/o$g;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget v0, p0, LA2/o;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LA2/o;->c:I

    invoke-static {v0}, LA2/D;->b(I)I

    iget-object v0, p0, LA2/o;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, LA2/o$f$a;

    invoke-direct {v1, p1}, LA2/o$f$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/o;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LA2/o;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/l;

    invoke-direct {v1, p1}, LA2/l;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, LA2/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, LA2/m;

    invoke-direct {v2, p1}, LA2/m;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/E1;->j(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/n;

    invoke-direct {v1, p1}, LA2/n;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, LA2/o$d;

    invoke-direct {v1, p0, p1, v0}, LA2/o$d;-><init>(LA2/o;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v1
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, v0, LA2/o$g;

    if-eqz v2, :cond_1

    iget-object v2, p0, LA2/o;->a:Ljava/util/Map;

    new-instance v3, LA2/o$g;

    invoke-direct {v3, p2}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, LA2/o$g;

    invoke-static {v0}, LA2/o$g;->a(LA2/o$g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v2, LA2/o;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    new-instance v2, LA2/o$g;

    invoke-direct {v2, p2}, LA2/o$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget p2, p0, LA2/o;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LA2/o;->d:I

    invoke-static {p2}, LA2/D;->d(I)I

    iget-object p2, p0, LA2/o;->b:Ljava/util/List;

    if-eqz p2, :cond_3

    new-instance v2, LA2/o$f$b;

    invoke-direct {v2, p1}, LA2/o$f$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LA2/o;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, LA2/o$g;

    if-eqz v0, :cond_1

    check-cast p1, LA2/o$g;

    invoke-static {p1}, LA2/o$g;->a(LA2/o$g;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method
