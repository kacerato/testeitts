.class public LYd/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/e;->iterator()LZd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/e;

.field public final synthetic c:LYd/e;


# direct methods
.method public constructor <init>(LYd/e;)V
    .locals 0

    iput-object p1, p0, LYd/e$a;->c:LYd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/e;->a(LYd/e;)Lee/d;

    move-result-object p1

    invoke-interface {p1}, Lee/d;->iterator()LZd/e;

    move-result-object p1

    iput-object p1, p0, LYd/e$a;->b:LZd/e;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/e$a;->b:LZd/e;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/e$a;->b:LZd/e;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, LYd/e$a;->b:LZd/e;

    invoke-interface {v0}, LZd/e;->key()B

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

    iget-object v0, p0, LYd/e$a;->b:LZd/e;

    invoke-interface {v0}, LZd/e;->value()F

    move-result v0

    return v0
.end method
