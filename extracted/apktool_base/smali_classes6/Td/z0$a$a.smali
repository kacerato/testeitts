.class public LTd/z0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/z0$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Short;",
        "Ljava/lang/Short;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/v0;

.field public final synthetic c:LTd/z0$a;


# direct methods
.method public constructor <init>(LTd/z0$a;)V
    .locals 0

    iput-object p1, p0, LTd/z0$a$a;->c:LTd/z0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/z0$a;->b:LTd/z0;

    iget-object p1, p1, LTd/z0;->b:Lee/m0;

    invoke-interface {p1}, Lee/m0;->iterator()LZd/v0;

    move-result-object p1

    iput-object p1, p0, LTd/z0$a$a;->b:LZd/v0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/z0$a$a;->b:LZd/v0;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/z0$a$a;->b:LZd/v0;

    invoke-interface {v0}, LZd/v0;->key()S

    move-result v0

    iget-object v1, p0, LTd/z0$a$a;->c:LTd/z0$a;

    iget-object v1, v1, LTd/z0$a;->b:LTd/z0;

    iget-object v1, v1, LTd/z0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->l()S

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/z0$a$a;->c:LTd/z0$a;

    iget-object v1, v1, LTd/z0$a;->b:LTd/z0;

    invoke-virtual {v1, v0}, LTd/z0;->j(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/z0$a$a;->b:LZd/v0;

    invoke-interface {v1}, LZd/v0;->value()S

    move-result v1

    iget-object v3, p0, LTd/z0$a$a;->c:LTd/z0$a;

    iget-object v3, v3, LTd/z0$a;->b:LTd/z0;

    iget-object v3, v3, LTd/z0;->b:Lee/m0;

    invoke-interface {v3}, Lee/m0;->i()S

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/z0$a$a;->c:LTd/z0$a;

    iget-object v2, v2, LTd/z0$a;->b:LTd/z0;

    invoke-virtual {v2, v1}, LTd/z0;->k(S)Ljava/lang/Short;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/z0$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/z0$a$a$a;-><init>(LTd/z0$a$a;Ljava/lang/Short;Ljava/lang/Short;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/z0$a$a;->b:LZd/v0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/z0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/z0$a$a;->b:LZd/v0;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
