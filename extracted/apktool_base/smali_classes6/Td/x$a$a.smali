.class public LTd/x$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/x$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/w;

.field public final synthetic c:LTd/x$a;


# direct methods
.method public constructor <init>(LTd/x$a;)V
    .locals 0

    iput-object p1, p0, LTd/x$a$a;->c:LTd/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/x$a;->b:LTd/x;

    iget-object p1, p1, LTd/x;->b:Lee/t;

    invoke-interface {p1}, Lee/t;->iterator()LZd/w;

    move-result-object p1

    iput-object p1, p0, LTd/x$a$a;->b:LZd/w;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/x$a$a;->b:LZd/w;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/x$a$a;->b:LZd/w;

    invoke-interface {v0}, LZd/w;->key()D

    move-result-wide v0

    iget-object v2, p0, LTd/x$a$a;->c:LTd/x$a;

    iget-object v2, v2, LTd/x$a;->b:LTd/x;

    iget-object v2, v2, LTd/x;->b:Lee/t;

    invoke-interface {v2}, Lee/t;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, LTd/x$a$a;->c:LTd/x$a;

    iget-object v2, v2, LTd/x$a;->b:LTd/x;

    invoke-virtual {v2, v0, v1}, LTd/x;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/x$a$a;->b:LZd/w;

    invoke-interface {v1}, LZd/w;->value()F

    move-result v1

    iget-object v2, p0, LTd/x$a$a;->c:LTd/x$a;

    iget-object v2, v2, LTd/x$a;->b:LTd/x;

    iget-object v2, v2, LTd/x;->b:Lee/t;

    invoke-interface {v2}, Lee/t;->i()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/x$a$a;->c:LTd/x$a;

    iget-object v2, v2, LTd/x$a;->b:LTd/x;

    invoke-virtual {v2, v1}, LTd/x;->k(F)Ljava/lang/Float;

    move-result-object v3

    :goto_1
    new-instance v1, LTd/x$a$a$a;

    invoke-direct {v1, p0, v3, v0}, LTd/x$a$a$a;-><init>(LTd/x$a$a;Ljava/lang/Float;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/x$a$a;->b:LZd/w;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/x$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/x$a$a;->b:LZd/w;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
