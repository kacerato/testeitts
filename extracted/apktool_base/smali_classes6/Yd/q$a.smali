.class public LYd/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/q;->iterator()LZd/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/o;

.field public final synthetic c:LYd/q;


# direct methods
.method public constructor <init>(LYd/q;)V
    .locals 0

    iput-object p1, p0, LYd/q$a;->c:LYd/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/q;->a(LYd/q;)Lee/m;

    move-result-object p1

    invoke-interface {p1}, Lee/m;->iterator()LZd/o;

    move-result-object p1

    iput-object p1, p0, LYd/q$a;->b:LZd/o;

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

    iget-object v0, p0, LYd/q$a;->b:LZd/o;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/q$a;->b:LZd/o;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, LYd/q$a;->b:LZd/o;

    invoke-interface {v0}, LZd/o;->key()C

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

    iget-object v0, p0, LYd/q$a;->b:LZd/o;

    invoke-interface {v0}, LZd/o;->value()I

    move-result v0

    return v0
.end method
