.class public LYd/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/w;->iterator()LZd/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/t;

.field public final synthetic c:LYd/w;


# direct methods
.method public constructor <init>(LYd/w;)V
    .locals 0

    iput-object p1, p0, LYd/w$a;->c:LYd/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/w;->b(LYd/w;)Lee/q;

    move-result-object p1

    invoke-interface {p1}, Lee/q;->iterator()LZd/t;

    move-result-object p1

    iput-object p1, p0, LYd/w$a;->b:LZd/t;

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

    iget-object v0, p0, LYd/w$a;->b:LZd/t;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/w$a;->b:LZd/t;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, LYd/w$a;->b:LZd/t;

    invoke-interface {v0}, LZd/t;->key()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()B
    .locals 1

    iget-object v0, p0, LYd/w$a;->b:LZd/t;

    invoke-interface {v0}, LZd/t;->value()B

    move-result v0

    return v0
.end method
