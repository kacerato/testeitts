.class public LA2/h$a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/h$a;->g()Ljava/util/Set;
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
.field public final synthetic b:LA2/h$a;


# direct methods
.method public constructor <init>(LA2/h$a;)V
    .locals 0

    iput-object p1, p0, LA2/h$a$a;->b:LA2/h$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, LA2/h$a$a;->b:LA2/h$a;

    invoke-virtual {v0, p1}, LA2/a;->O(LA2/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA2/h$a$a;->b:LA2/h$a;

    invoke-virtual {v0}, LA2/h$a;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA2/h$a$a;->b:LA2/h$a;

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, LA2/h$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/h$a$a;->b:LA2/h$a;

    iget-object v0, v0, LA2/h$a;->a:LA2/h;

    invoke-interface {v0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/h$a$a$a;

    invoke-direct {v1, p0}, LA2/h$a$a$a;-><init>(LA2/h$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LA2/h$a$a;->b:LA2/h$a;

    iget-object v0, v0, LA2/h$a;->a:LA2/h;

    invoke-interface {v0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
