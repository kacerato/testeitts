.class public LYd/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/p;->iterator()LZd/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/n;

.field public final synthetic c:LYd/p;


# direct methods
.method public constructor <init>(LYd/p;)V
    .locals 0

    iput-object p1, p0, LYd/p$a;->c:LYd/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/p;->a(LYd/p;)Lee/l;

    move-result-object p1

    invoke-interface {p1}, Lee/l;->iterator()LZd/n;

    move-result-object p1

    iput-object p1, p0, LYd/p$a;->b:LZd/n;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/p$a;->b:LZd/n;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/p$a;->b:LZd/n;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, LYd/p$a;->b:LZd/n;

    invoke-interface {v0}, LZd/n;->key()C

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

    iget-object v0, p0, LYd/p$a;->b:LZd/n;

    invoke-interface {v0}, LZd/n;->value()F

    move-result v0

    return v0
.end method
