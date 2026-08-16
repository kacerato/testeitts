.class public LYd/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/p0;->iterator()LZd/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZd/f0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public b:LZd/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZd/f0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LYd/p0;


# direct methods
.method public constructor <init>(LYd/p0;)V
    .locals 0

    iput-object p1, p0, LYd/p0$a;->c:LYd/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/p0;->a(LYd/p0;)Lee/Y;

    move-result-object p1

    invoke-interface {p1}, Lee/Y;->iterator()LZd/f0;

    move-result-object p1

    iput-object p1, p0, LYd/p0$a;->b:LZd/f0;

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/p0$a;->b:LZd/f0;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/p0$a;->b:LZd/f0;

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

    iget-object v0, p0, LYd/p0$a;->b:LZd/f0;

    invoke-interface {v0}, LZd/f0;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()B
    .locals 1

    iget-object v0, p0, LYd/p0$a;->b:LZd/f0;

    invoke-interface {v0}, LZd/f0;->value()B

    move-result v0

    return v0
.end method
