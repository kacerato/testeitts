.class public LYd/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/X;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/f0;->iterator()LZd/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/X;

.field public final synthetic c:LYd/f0;


# direct methods
.method public constructor <init>(LYd/f0;)V
    .locals 0

    iput-object p1, p0, LYd/f0$a;->c:LYd/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/f0;->a(LYd/f0;)Lee/P;

    move-result-object p1

    invoke-interface {p1}, Lee/P;->iterator()LZd/X;

    move-result-object p1

    iput-object p1, p0, LYd/f0$a;->b:LZd/X;

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

    iget-object v0, p0, LYd/f0$a;->b:LZd/X;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/f0$a;->b:LZd/X;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, LYd/f0$a;->b:LZd/X;

    invoke-interface {v0}, LZd/X;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()C
    .locals 1

    iget-object v0, p0, LYd/f0$a;->b:LZd/X;

    invoke-interface {v0}, LZd/X;->value()C

    move-result v0

    return v0
.end method
