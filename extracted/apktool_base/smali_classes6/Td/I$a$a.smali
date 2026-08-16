.class public LTd/I$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/I$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/G;

.field public final synthetic c:LTd/I$a;


# direct methods
.method public constructor <init>(LTd/I$a;)V
    .locals 0

    iput-object p1, p0, LTd/I$a$a;->c:LTd/I$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/I$a;->b:LTd/I;

    iget-object p1, p1, LTd/I;->b:Lee/C;

    invoke-interface {p1}, Lee/C;->iterator()LZd/G;

    move-result-object p1

    iput-object p1, p0, LTd/I$a$a;->b:LZd/G;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/I$a$a;->b:LZd/G;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/I$a$a;->b:LZd/G;

    invoke-interface {v0}, LZd/G;->key()F

    move-result v0

    iget-object v1, p0, LTd/I$a$a;->c:LTd/I$a;

    iget-object v1, v1, LTd/I$a;->b:LTd/I;

    iget-object v1, v1, LTd/I;->b:Lee/C;

    invoke-interface {v1}, Lee/C;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/I$a$a;->c:LTd/I$a;

    iget-object v1, v1, LTd/I$a;->b:LTd/I;

    invoke-virtual {v1, v0}, LTd/I;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/I$a$a;->b:LZd/G;

    invoke-interface {v1}, LZd/G;->value()I

    move-result v1

    iget-object v3, p0, LTd/I$a$a;->c:LTd/I$a;

    iget-object v3, v3, LTd/I$a;->b:LTd/I;

    iget-object v3, v3, LTd/I;->b:Lee/C;

    invoke-interface {v3}, Lee/C;->i()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/I$a$a;->c:LTd/I$a;

    iget-object v2, v2, LTd/I$a;->b:LTd/I;

    invoke-virtual {v2, v1}, LTd/I;->k(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/I$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/I$a$a$a;-><init>(LTd/I$a$a;Ljava/lang/Integer;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/I$a$a;->b:LZd/G;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/I$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/I$a$a;->b:LZd/G;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
