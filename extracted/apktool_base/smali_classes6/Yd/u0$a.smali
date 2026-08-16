.class public LYd/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/u0;->iterator()LZd/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZd/k0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public b:LZd/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZd/k0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LYd/u0;


# direct methods
.method public constructor <init>(LYd/u0;)V
    .locals 0

    iput-object p1, p0, LYd/u0$a;->c:LYd/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/u0;->a(LYd/u0;)Lee/d0;

    move-result-object p1

    invoke-interface {p1}, Lee/d0;->iterator()LZd/k0;

    move-result-object p1

    iput-object p1, p0, LYd/u0$a;->b:LZd/k0;

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/u0$a;->b:LZd/k0;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/u0$a;->b:LZd/k0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, LYd/u0$a;->b:LZd/k0;

    invoke-interface {v0}, LZd/k0;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()J
    .locals 2

    iget-object v0, p0, LYd/u0$a;->b:LZd/k0;

    invoke-interface {v0}, LZd/k0;->value()J

    move-result-wide v0

    return-wide v0
.end method
