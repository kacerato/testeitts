.class public LTd/y$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/y$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/x;

.field public final synthetic c:LTd/y$a;


# direct methods
.method public constructor <init>(LTd/y$a;)V
    .locals 0

    iput-object p1, p0, LTd/y$a$a;->c:LTd/y$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/y$a;->b:LTd/y;

    iget-object p1, p1, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->iterator()LZd/x;

    move-result-object p1

    iput-object p1, p0, LTd/y$a$a;->b:LZd/x;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/y$a$a;->b:LZd/x;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/y$a$a;->b:LZd/x;

    invoke-interface {v0}, LZd/x;->key()D

    move-result-wide v0

    iget-object v2, p0, LTd/y$a$a;->c:LTd/y$a;

    iget-object v2, v2, LTd/y$a;->b:LTd/y;

    iget-object v2, v2, LTd/y;->b:Lee/u;

    invoke-interface {v2}, Lee/u;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, LTd/y$a$a;->c:LTd/y$a;

    iget-object v2, v2, LTd/y$a;->b:LTd/y;

    invoke-virtual {v2, v0, v1}, LTd/y;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/y$a$a;->b:LZd/x;

    invoke-interface {v1}, LZd/x;->value()I

    move-result v1

    iget-object v2, p0, LTd/y$a$a;->c:LTd/y$a;

    iget-object v2, v2, LTd/y$a;->b:LTd/y;

    iget-object v2, v2, LTd/y;->b:Lee/u;

    invoke-interface {v2}, Lee/u;->i()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/y$a$a;->c:LTd/y$a;

    iget-object v2, v2, LTd/y$a;->b:LTd/y;

    invoke-virtual {v2, v1}, LTd/y;->k(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    new-instance v1, LTd/y$a$a$a;

    invoke-direct {v1, p0, v3, v0}, LTd/y$a$a$a;-><init>(LTd/y$a$a;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/y$a$a;->b:LZd/x;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/y$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/y$a$a;->b:LZd/x;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
