.class public LTd/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/b$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/c;

.field public final synthetic c:LTd/b$a;


# direct methods
.method public constructor <init>(LTd/b$a;)V
    .locals 0

    iput-object p1, p0, LTd/b$a$a;->c:LTd/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/b$a;->b:LTd/b;

    iget-object p1, p1, LTd/b;->b:Lee/b;

    invoke-interface {p1}, Lee/b;->iterator()LZd/c;

    move-result-object p1

    iput-object p1, p0, LTd/b$a$a;->b:LZd/c;

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/b$a$a;->b:LZd/c;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/b$a$a;->b:LZd/c;

    invoke-interface {v0}, LZd/c;->key()B

    move-result v0

    iget-object v1, p0, LTd/b$a$a;->c:LTd/b$a;

    iget-object v1, v1, LTd/b$a;->b:LTd/b;

    iget-object v1, v1, LTd/b;->b:Lee/b;

    invoke-interface {v1}, Lee/b;->l()B

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/b$a$a;->c:LTd/b$a;

    iget-object v1, v1, LTd/b$a;->b:LTd/b;

    invoke-virtual {v1, v0}, LTd/b;->j(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/b$a$a;->b:LZd/c;

    invoke-interface {v1}, LZd/c;->value()C

    move-result v1

    iget-object v3, p0, LTd/b$a$a;->c:LTd/b$a;

    iget-object v3, v3, LTd/b$a;->b:LTd/b;

    iget-object v3, v3, LTd/b;->b:Lee/b;

    invoke-interface {v3}, Lee/b;->i()C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/b$a$a;->c:LTd/b$a;

    iget-object v2, v2, LTd/b$a;->b:LTd/b;

    invoke-virtual {v2, v1}, LTd/b;->k(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/b$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/b$a$a$a;-><init>(LTd/b$a$a;Ljava/lang/Character;Ljava/lang/Byte;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/b$a$a;->b:LZd/c;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/b$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/b$a$a;->b:LZd/c;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
