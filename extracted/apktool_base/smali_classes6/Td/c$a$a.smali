.class public LTd/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/c$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Byte;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/d;

.field public final synthetic c:LTd/c$a;


# direct methods
.method public constructor <init>(LTd/c$a;)V
    .locals 0

    iput-object p1, p0, LTd/c$a$a;->c:LTd/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/c$a;->b:LTd/c;

    iget-object p1, p1, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->iterator()LZd/d;

    move-result-object p1

    iput-object p1, p0, LTd/c$a$a;->b:LZd/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/c$a$a;->b:LZd/d;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/c$a$a;->b:LZd/d;

    invoke-interface {v0}, LZd/d;->key()B

    move-result v0

    iget-object v1, p0, LTd/c$a$a;->c:LTd/c$a;

    iget-object v1, v1, LTd/c$a;->b:LTd/c;

    iget-object v1, v1, LTd/c;->b:Lee/c;

    invoke-interface {v1}, Lee/c;->l()B

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/c$a$a;->c:LTd/c$a;

    iget-object v1, v1, LTd/c$a;->b:LTd/c;

    invoke-virtual {v1, v0}, LTd/c;->j(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/c$a$a;->b:LZd/d;

    invoke-interface {v1}, LZd/d;->value()D

    move-result-wide v3

    iget-object v1, p0, LTd/c$a$a;->c:LTd/c$a;

    iget-object v1, v1, LTd/c$a;->b:LTd/c;

    iget-object v1, v1, LTd/c;->b:Lee/c;

    invoke-interface {v1}, Lee/c;->i()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LTd/c$a$a;->c:LTd/c$a;

    iget-object v1, v1, LTd/c$a;->b:LTd/c;

    invoke-virtual {v1, v3, v4}, LTd/c;->k(D)Ljava/lang/Double;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/c$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/c$a$a$a;-><init>(LTd/c$a$a;Ljava/lang/Double;Ljava/lang/Byte;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/c$a$a;->b:LZd/d;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/c$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/c$a$a;->b:LZd/d;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
