.class public LTd/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/j$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Short;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/j;

.field public final synthetic c:LTd/j$a;


# direct methods
.method public constructor <init>(LTd/j$a;)V
    .locals 0

    iput-object p1, p0, LTd/j$a$a;->c:LTd/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/j$a;->b:LTd/j;

    iget-object p1, p1, LTd/j;->b:Lee/h;

    invoke-interface {p1}, Lee/h;->iterator()LZd/j;

    move-result-object p1

    iput-object p1, p0, LTd/j$a$a;->b:LZd/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/j$a$a;->b:LZd/j;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/j$a$a;->b:LZd/j;

    invoke-interface {v0}, LZd/j;->key()B

    move-result v0

    iget-object v1, p0, LTd/j$a$a;->c:LTd/j$a;

    iget-object v1, v1, LTd/j$a;->b:LTd/j;

    iget-object v1, v1, LTd/j;->b:Lee/h;

    invoke-interface {v1}, Lee/h;->l()B

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/j$a$a;->c:LTd/j$a;

    iget-object v1, v1, LTd/j$a;->b:LTd/j;

    invoke-virtual {v1, v0}, LTd/j;->j(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/j$a$a;->b:LZd/j;

    invoke-interface {v1}, LZd/j;->value()S

    move-result v1

    iget-object v3, p0, LTd/j$a$a;->c:LTd/j$a;

    iget-object v3, v3, LTd/j$a;->b:LTd/j;

    iget-object v3, v3, LTd/j;->b:Lee/h;

    invoke-interface {v3}, Lee/h;->i()S

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/j$a$a;->c:LTd/j$a;

    iget-object v2, v2, LTd/j$a;->b:LTd/j;

    invoke-virtual {v2, v1}, LTd/j;->k(S)Ljava/lang/Short;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/j$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/j$a$a$a;-><init>(LTd/j$a$a;Ljava/lang/Short;Ljava/lang/Byte;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/j$a$a;->b:LZd/j;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/j$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/j$a$a;->b:LZd/j;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
