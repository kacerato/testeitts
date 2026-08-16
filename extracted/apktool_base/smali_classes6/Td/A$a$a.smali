.class public LTd/A$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/A$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/z;

.field public final synthetic c:LTd/A$a;


# direct methods
.method public constructor <init>(LTd/A$a;)V
    .locals 0

    iput-object p1, p0, LTd/A$a$a;->c:LTd/A$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/A$a;->b:LTd/A;

    iget-object p1, p1, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->iterator()LZd/z;

    move-result-object p1

    iput-object p1, p0, LTd/A$a$a;->b:LZd/z;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/A$a$a;->b:LZd/z;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/A$a$a;->b:LZd/z;

    invoke-interface {v0}, LZd/z;->key()D

    move-result-wide v0

    iget-object v2, p0, LTd/A$a$a;->c:LTd/A$a;

    iget-object v2, v2, LTd/A$a;->b:LTd/A;

    iget-object v2, v2, LTd/A;->b:Lee/v;

    invoke-interface {v2}, Lee/v;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, LTd/A$a$a;->c:LTd/A$a;

    iget-object v2, v2, LTd/A$a;->b:LTd/A;

    invoke-virtual {v2, v0, v1}, LTd/A;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/A$a$a;->b:LZd/z;

    invoke-interface {v1}, LZd/z;->value()J

    move-result-wide v1

    iget-object v4, p0, LTd/A$a$a;->c:LTd/A$a;

    iget-object v4, v4, LTd/A$a;->b:LTd/A;

    iget-object v4, v4, LTd/A;->b:Lee/v;

    invoke-interface {v4}, Lee/v;->i()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, LTd/A$a$a;->c:LTd/A$a;

    iget-object v3, v3, LTd/A$a;->b:LTd/A;

    invoke-virtual {v3, v1, v2}, LTd/A;->k(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    new-instance v1, LTd/A$a$a$a;

    invoke-direct {v1, p0, v3, v0}, LTd/A$a$a$a;-><init>(LTd/A$a$a;Ljava/lang/Long;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/A$a$a;->b:LZd/z;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/A$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/A$a$a;->b:LZd/z;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
