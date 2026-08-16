.class public LYd/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/m;->iterator()LZd/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/l;

.field public final synthetic c:LYd/m;


# direct methods
.method public constructor <init>(LYd/m;)V
    .locals 0

    iput-object p1, p0, LYd/m$a;->c:LYd/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/m;->a(LYd/m;)Lee/j;

    move-result-object p1

    invoke-interface {p1}, Lee/j;->iterator()LZd/l;

    move-result-object p1

    iput-object p1, p0, LYd/m$a;->b:LZd/l;

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

    iget-object v0, p0, LYd/m$a;->b:LZd/l;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/m$a;->b:LZd/l;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, LYd/m$a;->b:LZd/l;

    invoke-interface {v0}, LZd/l;->key()C

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()C
    .locals 1

    iget-object v0, p0, LYd/m$a;->b:LZd/l;

    invoke-interface {v0}, LZd/l;->value()C

    move-result v0

    return v0
.end method
