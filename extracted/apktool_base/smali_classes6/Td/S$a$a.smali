.class public LTd/S$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/S$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/O;

.field public final synthetic c:LTd/S$a;


# direct methods
.method public constructor <init>(LTd/S$a;)V
    .locals 0

    iput-object p1, p0, LTd/S$a$a;->c:LTd/S$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/S$a;->b:LTd/S;

    iget-object p1, p1, LTd/S;->b:Lee/J;

    invoke-interface {p1}, Lee/J;->iterator()LZd/O;

    move-result-object p1

    iput-object p1, p0, LTd/S$a$a;->b:LZd/O;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/S$a$a;->b:LZd/O;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/S$a$a;->b:LZd/O;

    invoke-interface {v0}, LZd/O;->key()I

    move-result v0

    iget-object v1, p0, LTd/S$a$a;->c:LTd/S$a;

    iget-object v1, v1, LTd/S$a;->b:LTd/S;

    iget-object v1, v1, LTd/S;->b:Lee/J;

    invoke-interface {v1}, Lee/J;->l()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/S$a$a;->c:LTd/S$a;

    iget-object v1, v1, LTd/S$a;->b:LTd/S;

    invoke-virtual {v1, v0}, LTd/S;->j(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/S$a$a;->b:LZd/O;

    invoke-interface {v1}, LZd/O;->value()F

    move-result v1

    iget-object v3, p0, LTd/S$a$a;->c:LTd/S$a;

    iget-object v3, v3, LTd/S$a;->b:LTd/S;

    iget-object v3, v3, LTd/S;->b:Lee/J;

    invoke-interface {v3}, Lee/J;->i()F

    move-result v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/S$a$a;->c:LTd/S$a;

    iget-object v2, v2, LTd/S$a;->b:LTd/S;

    invoke-virtual {v2, v1}, LTd/S;->k(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/S$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/S$a$a$a;-><init>(LTd/S$a$a;Ljava/lang/Float;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/S$a$a;->b:LZd/O;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/S$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/S$a$a;->b:LZd/O;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
