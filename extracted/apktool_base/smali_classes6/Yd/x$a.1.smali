.class public LYd/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/x;->iterator()LZd/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/u;

.field public final synthetic c:LYd/x;


# direct methods
.method public constructor <init>(LYd/x;)V
    .locals 0

    iput-object p1, p0, LYd/x$a;->c:LYd/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/x;->b(LYd/x;)Lee/r;

    move-result-object p1

    invoke-interface {p1}, Lee/r;->iterator()LZd/u;

    move-result-object p1

    iput-object p1, p0, LYd/x$a;->b:LZd/u;

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/x$a;->b:LZd/u;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/x$a;->b:LZd/u;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, LYd/x$a;->b:LZd/u;

    invoke-interface {v0}, LZd/u;->key()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()C
    .locals 1

    iget-object v0, p0, LYd/x$a;->b:LZd/u;

    invoke-interface {v0}, LZd/u;->value()C

    move-result v0

    return v0
.end method
