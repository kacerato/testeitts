.class public LTd/l0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/l0$a;->iterator()Ljava/util/Iterator;
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
        "TK;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:LZd/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZd/h0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LTd/l0$a;


# direct methods
.method public constructor <init>(LTd/l0$a;)V
    .locals 0

    iput-object p1, p0, LTd/l0$a$a;->c:LTd/l0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/l0$a;->b:LTd/l0;

    iget-object p1, p1, LTd/l0;->b:Lee/a0;

    invoke-interface {p1}, Lee/a0;->iterator()LZd/h0;

    move-result-object p1

    iput-object p1, p0, LTd/l0$a$a;->b:LZd/h0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTd/l0$a$a;->b:LZd/h0;

    invoke-interface {v0}, LZd/a;->g()V

    iget-object v0, p0, LTd/l0$a$a;->b:LZd/h0;

    invoke-interface {v0}, LZd/h0;->key()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LTd/l0$a$a;->c:LTd/l0$a;

    iget-object v1, v1, LTd/l0$a;->b:LTd/l0;

    iget-object v2, p0, LTd/l0$a$a;->b:LZd/h0;

    invoke-interface {v2}, LZd/h0;->value()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LTd/l0;->i(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, LTd/l0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, LTd/l0$a$a$a;-><init>(LTd/l0$a$a;Ljava/lang/Double;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/l0$a$a;->b:LZd/h0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/l0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/l0$a$a;->b:LZd/h0;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
