.class public LYd/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/h0;->iterator()LZd/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/Y;

.field public final synthetic c:LYd/h0;


# direct methods
.method public constructor <init>(LYd/h0;)V
    .locals 0

    iput-object p1, p0, LYd/h0$a;->c:LYd/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/h0;->a(LYd/h0;)Lee/Q;

    move-result-object p1

    invoke-interface {p1}, Lee/Q;->iterator()LZd/Y;

    move-result-object p1

    iput-object p1, p0, LYd/h0$a;->b:LZd/Y;

    return-void
.end method


# virtual methods
.method public f(D)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/h0$a;->b:LZd/Y;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/h0$a;->b:LZd/Y;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, LYd/h0$a;->b:LZd/Y;

    invoke-interface {v0}, LZd/Y;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()D
    .locals 2

    iget-object v0, p0, LYd/h0$a;->b:LZd/Y;

    invoke-interface {v0}, LZd/Y;->value()D

    move-result-wide v0

    return-wide v0
.end method
