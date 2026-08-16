.class public LYd/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/f;->iterator()LZd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/f;

.field public final synthetic c:LYd/f;


# direct methods
.method public constructor <init>(LYd/f;)V
    .locals 0

    iput-object p1, p0, LYd/f$a;->c:LYd/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/f;->a(LYd/f;)Lee/e;

    move-result-object p1

    invoke-interface {p1}, Lee/e;->iterator()LZd/f;

    move-result-object p1

    iput-object p1, p0, LYd/f$a;->b:LZd/f;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/f$a;->b:LZd/f;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/f$a;->b:LZd/f;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, LYd/f$a;->b:LZd/f;

    invoke-interface {v0}, LZd/f;->key()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()I
    .locals 1

    iget-object v0, p0, LYd/f$a;->b:LZd/f;

    invoke-interface {v0}, LZd/f;->value()I

    move-result v0

    return v0
.end method
