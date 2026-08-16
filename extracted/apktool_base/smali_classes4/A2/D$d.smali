.class public LA2/D$d;
.super LA2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LA2/y<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final a:LA2/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/j0<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/j0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LA2/y;-><init>()V

    iput-object p1, p0, LA2/D$d;->a:LA2/j0;

    return-void
.end method

.method public static synthetic S(LA2/D$d;)LA2/j0;
    .locals 0

    iget-object p0, p0, LA2/D$d;->a:LA2/j0;

    return-object p0
.end method


# virtual methods
.method public D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1, p2}, LA2/j0;->J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public R()LA2/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/j0<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/D$d;->a:LA2/j0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$d;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/D$d;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->l(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-static {p1}, LA2/D;->q(LA2/u;)LA2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LA2/j0;->h(LA2/u;)Z

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

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LA2/j0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, LA2/D$d;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
