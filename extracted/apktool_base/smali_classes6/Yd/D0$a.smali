.class public LYd/D0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/D0;->iterator()LZd/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/n0;

.field public final synthetic c:LYd/D0;


# direct methods
.method public constructor <init>(LYd/D0;)V
    .locals 0

    iput-object p1, p0, LYd/D0$a;->c:LYd/D0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/D0;->a(LYd/D0;)Lee/f0;

    move-result-object p1

    invoke-interface {p1}, Lee/f0;->iterator()LZd/n0;

    move-result-object p1

    iput-object p1, p0, LYd/D0$a;->b:LZd/n0;

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

    iget-object v0, p0, LYd/D0$a;->b:LZd/n0;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/D0$a;->b:LZd/n0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, LYd/D0$a;->b:LZd/n0;

    invoke-interface {v0}, LZd/n0;->key()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()B
    .locals 1

    iget-object v0, p0, LYd/D0$a;->b:LZd/n0;

    invoke-interface {v0}, LZd/n0;->value()B

    move-result v0

    return v0
.end method
