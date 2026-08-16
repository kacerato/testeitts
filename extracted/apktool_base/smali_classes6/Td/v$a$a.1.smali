.class public LTd/v$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/v$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/u;

.field public final synthetic c:LTd/v$a;


# direct methods
.method public constructor <init>(LTd/v$a;)V
    .locals 0

    iput-object p1, p0, LTd/v$a$a;->c:LTd/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/v$a;->b:LTd/v;

    iget-object p1, p1, LTd/v;->b:Lee/r;

    invoke-interface {p1}, Lee/r;->iterator()LZd/u;

    move-result-object p1

    iput-object p1, p0, LTd/v$a$a;->b:LZd/u;

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/v$a$a;->b:LZd/u;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/v$a$a;->b:LZd/u;

    invoke-interface {v0}, LZd/u;->key()D

    move-result-wide v0

    iget-object v2, p0, LTd/v$a$a;->c:LTd/v$a;

    iget-object v2, v2, LTd/v$a;->b:LTd/v;

    iget-object v2, v2, LTd/v;->b:Lee/r;

    invoke-interface {v2}, Lee/r;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, LTd/v$a$a;->c:LTd/v$a;

    iget-object v2, v2, LTd/v$a;->b:LTd/v;

    invoke-virtual {v2, v0, v1}, LTd/v;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/v$a$a;->b:LZd/u;

    invoke-interface {v1}, LZd/u;->value()C

    move-result v1

    iget-object v2, p0, LTd/v$a$a;->c:LTd/v$a;

    iget-object v2, v2, LTd/v$a;->b:LTd/v;

    iget-object v2, v2, LTd/v;->b:Lee/r;

    invoke-interface {v2}, Lee/r;->i()C

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/v$a$a;->c:LTd/v$a;

    iget-object v2, v2, LTd/v$a;->b:LTd/v;

    invoke-virtual {v2, v1}, LTd/v;->k(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1
    new-instance v1, LTd/v$a$a$a;

    invoke-direct {v1, p0, v3, v0}, LTd/v$a$a$a;-><init>(LTd/v$a$a;Ljava/lang/Character;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/v$a$a;->b:LZd/u;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/v$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/v$a$a;->b:LZd/u;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
