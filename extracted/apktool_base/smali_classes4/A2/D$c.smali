.class public LA2/D$c;
.super LA2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LA2/x<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public final a:LA2/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/T<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/T<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LA2/x;-><init>()V

    iput-object p1, p0, LA2/D$c;->a:LA2/T;

    return-void
.end method

.method public static synthetic S(LA2/D$c;)LA2/T;
    .locals 0

    iget-object p0, p0, LA2/D$c;->a:LA2/T;

    return-object p0
.end method


# virtual methods
.method public A(LA2/u;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LA2/T;->A(LA2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(LA2/u;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LA2/T;->E(LA2/u;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LA2/T;->G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;)LA2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    iget-object v0, p0, LA2/D$c;->a:LA2/T;

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, LA2/u;->k(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public R()LA2/T;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/T<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/D$c;->a:LA2/T;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$c;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$c;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LA2/T;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LA2/T;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LA2/T;->v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->z(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/D$c;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->x(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
