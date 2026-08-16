.class public LYd/I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/I;->iterator()LZd/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/D;

.field public final synthetic c:LYd/I;


# direct methods
.method public constructor <init>(LYd/I;)V
    .locals 0

    iput-object p1, p0, LYd/I$a;->c:LYd/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/I;->a(LYd/I;)Lee/z;

    move-result-object p1

    invoke-interface {p1}, Lee/z;->iterator()LZd/D;

    move-result-object p1

    iput-object p1, p0, LYd/I$a;->b:LZd/D;

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

    iget-object v0, p0, LYd/I$a;->b:LZd/D;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/I$a;->b:LZd/D;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, LYd/I$a;->b:LZd/D;

    invoke-interface {v0}, LZd/D;->key()F

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

    iget-object v0, p0, LYd/I$a;->b:LZd/D;

    invoke-interface {v0}, LZd/D;->value()C

    move-result v0

    return v0
.end method
