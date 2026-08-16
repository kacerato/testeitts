.class public LTd/L$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/L$a;->iterator()Ljava/util/Iterator;
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
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZd/J<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LTd/L$a;


# direct methods
.method public constructor <init>(LTd/L$a;)V
    .locals 0

    iput-object p1, p0, LTd/L$a$a;->c:LTd/L$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/L$a;->b:LTd/L;

    iget-object p1, p1, LTd/L;->b:Lee/E;

    invoke-interface {p1}, Lee/E;->iterator()LZd/J;

    move-result-object p1

    iput-object p1, p0, LTd/L$a$a;->b:LZd/J;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, LTd/L$a$a;->b:LZd/J;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/L$a$a;->b:LZd/J;

    invoke-interface {v0}, LZd/J;->key()F

    move-result v0

    iget-object v1, p0, LTd/L$a$a;->c:LTd/L$a;

    iget-object v1, v1, LTd/L$a;->b:LTd/L;

    iget-object v1, v1, LTd/L;->b:Lee/E;

    invoke-interface {v1}, Lee/E;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTd/L$a$a;->c:LTd/L$a;

    iget-object v1, v1, LTd/L$a;->b:LTd/L;

    invoke-virtual {v1, v0}, LTd/L;->h(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LTd/L$a$a;->b:LZd/J;

    invoke-interface {v1}, LZd/J;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, LTd/L$a$a$a;

    invoke-direct {v2, p0, v1, v0}, LTd/L$a$a$a;-><init>(LTd/L$a$a;Ljava/lang/Object;Ljava/lang/Float;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/L$a$a;->b:LZd/J;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/L$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/L$a$a;->b:LZd/J;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
