.class public LTd/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/g$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/h;

.field public final synthetic c:LTd/g$a;


# direct methods
.method public constructor <init>(LTd/g$a;)V
    .locals 0

    iput-object p1, p0, LTd/g$a$a;->c:LTd/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/g$a;->b:LTd/g;

    iget-object p1, p1, LTd/g;->b:Lee/f;

    invoke-interface {p1}, Lee/f;->iterator()LZd/h;

    move-result-object p1

    iput-object p1, p0, LTd/g$a$a;->b:LZd/h;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/g$a$a;->b:LZd/h;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/g$a$a;->b:LZd/h;

    invoke-interface {v0}, LZd/h;->key()B

    move-result v0

    iget-object v1, p0, LTd/g$a$a;->c:LTd/g$a;

    iget-object v1, v1, LTd/g$a;->b:LTd/g;

    iget-object v1, v1, LTd/g;->b:Lee/f;

    invoke-interface {v1}, Lee/f;->l()B

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/g$a$a;->c:LTd/g$a;

    iget-object v1, v1, LTd/g$a;->b:LTd/g;

    invoke-virtual {v1, v0}, LTd/g;->j(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/g$a$a;->b:LZd/h;

    invoke-interface {v1}, LZd/h;->value()J

    move-result-wide v3

    iget-object v1, p0, LTd/g$a$a;->c:LTd/g$a;

    iget-object v1, v1, LTd/g$a;->b:LTd/g;

    iget-object v1, v1, LTd/g;->b:Lee/f;

    invoke-interface {v1}, Lee/f;->i()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LTd/g$a$a;->c:LTd/g$a;

    iget-object v1, v1, LTd/g$a;->b:LTd/g;

    invoke-virtual {v1, v3, v4}, LTd/g;->k(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/g$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/g$a$a$a;-><init>(LTd/g$a$a;Ljava/lang/Long;Ljava/lang/Byte;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/g$a$a;->b:LZd/h;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/g$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/g$a$a;->b:LZd/h;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
