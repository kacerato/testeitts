.class public LA2/j$a;
.super LA2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/j;->s()LA2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LA2/f<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LA2/j;


# direct methods
.method public constructor <init>(LA2/j;)V
    .locals 0

    iput-object p1, p0, LA2/j$a;->a:LA2/j;

    invoke-direct {p0}, LA2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/j$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0, p1}, LA2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/j$a;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0, p1}, LA2/j0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0}, LA2/j0;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0, p1}, LA2/j0;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-virtual {v0, p1}, LA2/j;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-virtual {v0}, LA2/j;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-virtual {v0, p1}, LA2/j;->j(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public k()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0}, LA2/j0;->k()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-virtual {v0, p1}, LA2/j;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-interface {v0}, LA2/j0;->m()Z

    move-result v0

    return v0
.end method

.method public q()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/j$a;->a:LA2/j;

    invoke-virtual {v0}, LA2/j;->q()LA2/s;

    move-result-object v0

    return-object v0
.end method
