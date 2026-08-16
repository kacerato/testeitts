.class public LYd/U$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/M;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/U;->iterator()LZd/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/M;

.field public final synthetic c:LYd/U;


# direct methods
.method public constructor <init>(LYd/U;)V
    .locals 0

    iput-object p1, p0, LYd/U$a;->c:LYd/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/U;->a(LYd/U;)Lee/H;

    move-result-object p1

    invoke-interface {p1}, Lee/H;->iterator()LZd/M;

    move-result-object p1

    iput-object p1, p0, LYd/U$a;->b:LZd/M;

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

    iget-object v0, p0, LYd/U$a;->b:LZd/M;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/U$a;->b:LZd/M;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, LYd/U$a;->b:LZd/M;

    invoke-interface {v0}, LZd/M;->key()I

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

    iget-object v0, p0, LYd/U$a;->b:LZd/M;

    invoke-interface {v0}, LZd/M;->value()C

    move-result v0

    return v0
.end method
