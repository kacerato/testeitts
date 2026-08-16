.class public LTd/F$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/F$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/D;

.field public final synthetic c:LTd/F$a;


# direct methods
.method public constructor <init>(LTd/F$a;)V
    .locals 0

    iput-object p1, p0, LTd/F$a$a;->c:LTd/F$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/F$a;->b:LTd/F;

    iget-object p1, p1, LTd/F;->b:Lee/z;

    invoke-interface {p1}, Lee/z;->iterator()LZd/D;

    move-result-object p1

    iput-object p1, p0, LTd/F$a$a;->b:LZd/D;

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/F$a$a;->b:LZd/D;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/F$a$a;->b:LZd/D;

    invoke-interface {v0}, LZd/D;->key()F

    move-result v0

    iget-object v1, p0, LTd/F$a$a;->c:LTd/F$a;

    iget-object v1, v1, LTd/F$a;->b:LTd/F;

    iget-object v1, v1, LTd/F;->b:Lee/z;

    invoke-interface {v1}, Lee/z;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/F$a$a;->c:LTd/F$a;

    iget-object v1, v1, LTd/F$a;->b:LTd/F;

    invoke-virtual {v1, v0}, LTd/F;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/F$a$a;->b:LZd/D;

    invoke-interface {v1}, LZd/D;->value()C

    move-result v1

    iget-object v3, p0, LTd/F$a$a;->c:LTd/F$a;

    iget-object v3, v3, LTd/F$a;->b:LTd/F;

    iget-object v3, v3, LTd/F;->b:Lee/z;

    invoke-interface {v3}, Lee/z;->i()C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LTd/F$a$a;->c:LTd/F$a;

    iget-object v2, v2, LTd/F$a;->b:LTd/F;

    invoke-virtual {v2, v1}, LTd/F;->k(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    new-instance v1, LTd/F$a$a$a;

    invoke-direct {v1, p0, v2, v0}, LTd/F$a$a$a;-><init>(LTd/F$a$a;Ljava/lang/Character;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/F$a$a;->b:LZd/D;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/F$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/F$a$a;->b:LZd/D;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
