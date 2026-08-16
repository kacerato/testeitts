.class public LYd/H0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/H0;->iterator()LZd/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/q0;

.field public final synthetic c:LYd/H0;


# direct methods
.method public constructor <init>(LYd/H0;)V
    .locals 0

    iput-object p1, p0, LYd/H0$a;->c:LYd/H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/H0;->a(LYd/H0;)Lee/i0;

    move-result-object p1

    invoke-interface {p1}, Lee/i0;->iterator()LZd/q0;

    move-result-object p1

    iput-object p1, p0, LYd/H0$a;->b:LZd/q0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/H0$a;->b:LZd/q0;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/H0$a;->b:LZd/q0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, LYd/H0$a;->b:LZd/q0;

    invoke-interface {v0}, LZd/q0;->key()S

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

    iget-object v0, p0, LYd/H0$a;->b:LZd/q0;

    invoke-interface {v0}, LZd/q0;->value()F

    move-result v0

    return v0
.end method
