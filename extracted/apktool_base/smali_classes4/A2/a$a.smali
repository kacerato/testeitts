.class public LA2/a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/a;->g()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "LA2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/a;


# direct methods
.method public constructor <init>(LA2/a;)V
    .locals 0

    iput-object p1, p0, LA2/a$a;->b:LA2/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/a$a;->b:LA2/a;

    invoke-static {v0}, LA2/v;->f(LA2/k;)LA2/v;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, LA2/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LA2/u;

    iget-object v0, p0, LA2/a$a;->b:LA2/a;

    invoke-virtual {v0, p1}, LA2/a;->O(LA2/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA2/a$a;->b:LA2/a;

    invoke-interface {v0}, LA2/k;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA2/a$a;->b:LA2/a;

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, LA2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LA2/a$a;->a()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, LA2/a$a;->b:LA2/a;

    invoke-virtual {v0}, LA2/a;->N()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method
