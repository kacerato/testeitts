.class public LYd/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/O;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/X;->iterator()LZd/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/O;

.field public final synthetic c:LYd/X;


# direct methods
.method public constructor <init>(LYd/X;)V
    .locals 0

    iput-object p1, p0, LYd/X$a;->c:LYd/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/X;->a(LYd/X;)Lee/J;

    move-result-object p1

    invoke-interface {p1}, Lee/J;->iterator()LZd/O;

    move-result-object p1

    iput-object p1, p0, LYd/X$a;->b:LZd/O;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/X$a;->b:LZd/O;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/X$a;->b:LZd/O;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, LYd/X$a;->b:LZd/O;

    invoke-interface {v0}, LZd/O;->key()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(F)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public value()F
    .locals 1

    iget-object v0, p0, LYd/X$a;->b:LZd/O;

    invoke-interface {v0}, LZd/O;->value()F

    move-result v0

    return v0
.end method
