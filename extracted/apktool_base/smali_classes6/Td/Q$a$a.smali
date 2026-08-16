.class public LTd/Q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/Q$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/N;

.field public final synthetic c:LTd/Q$a;


# direct methods
.method public constructor <init>(LTd/Q$a;)V
    .locals 0

    iput-object p1, p0, LTd/Q$a$a;->c:LTd/Q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/Q$a;->b:LTd/Q;

    iget-object p1, p1, LTd/Q;->b:Lee/I;

    invoke-interface {p1}, Lee/I;->iterator()LZd/N;

    move-result-object p1

    iput-object p1, p0, LTd/Q$a$a;->b:LZd/N;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/Q$a$a;->b:LZd/N;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/Q$a$a;->b:LZd/N;

    invoke-interface {v0}, LZd/N;->key()I

    move-result v0

    iget-object v1, p0, LTd/Q$a$a;->c:LTd/Q$a;

    iget-object v1, v1, LTd/Q$a;->b:LTd/Q;

    iget-object v1, v1, LTd/Q;->b:Lee/I;

    invoke-interface {v1}, Lee/I;->l()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/Q$a$a;->c:LTd/Q$a;

    iget-object v1, v1, LTd/Q$a;->b:LTd/Q;

    invoke-virtual {v1, v0}, LTd/Q;->j(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/Q$a$a;->b:LZd/N;

    invoke-interface {v1}, LZd/N;->value()D

    move-result-wide v3

    iget-object v1, p0, LTd/Q$a$a;->c:LTd/Q$a;

    iget-object v1, v1, LTd/Q$a;->b:LTd/Q;

    iget-object v1, v1, LTd/Q;->b:Lee/I;

    invoke-interface {v1}, Lee/I;->i()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LTd/Q$a$a;->c:LTd/Q$a;

    iget-object v1, v1, LTd/Q$a;->b:LTd/Q;

    invoke-virtual {v1, v3, v4}, LTd/Q;->k(D)Ljava/lang/Double;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/Q$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/Q$a$a$a;-><init>(LTd/Q$a$a;Ljava/lang/Double;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/Q$a$a;->b:LZd/N;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/Q$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/Q$a$a;->b:LZd/N;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
