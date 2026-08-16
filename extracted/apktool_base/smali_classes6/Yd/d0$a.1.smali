.class public LYd/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/d0;->iterator()LZd/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/U;

.field public final synthetic c:LYd/d0;


# direct methods
.method public constructor <init>(LYd/d0;)V
    .locals 0

    iput-object p1, p0, LYd/d0$a;->c:LYd/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/d0;->a(LYd/d0;)Lee/N;

    move-result-object p1

    invoke-interface {p1}, Lee/N;->iterator()LZd/U;

    move-result-object p1

    iput-object p1, p0, LYd/d0$a;->b:LZd/U;

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/d0$a;->b:LZd/U;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/d0$a;->b:LZd/U;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, LYd/d0$a;->b:LZd/U;

    invoke-interface {v0}, LZd/U;->key()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()S
    .locals 1

    iget-object v0, p0, LYd/d0$a;->b:LZd/U;

    invoke-interface {v0}, LZd/U;->value()S

    move-result v0

    return v0
.end method
