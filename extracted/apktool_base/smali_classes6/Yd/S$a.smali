.class public LYd/S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/K;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/S;->iterator()LZd/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/K;

.field public final synthetic c:LYd/S;


# direct methods
.method public constructor <init>(LYd/S;)V
    .locals 0

    iput-object p1, p0, LYd/S$a;->c:LYd/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/S;->a(LYd/S;)Lee/F;

    move-result-object p1

    invoke-interface {p1}, Lee/F;->iterator()LZd/K;

    move-result-object p1

    iput-object p1, p0, LYd/S$a;->b:LZd/K;

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/S$a;->b:LZd/K;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/S$a;->b:LZd/K;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, LYd/S$a;->b:LZd/K;

    invoke-interface {v0}, LZd/K;->key()F

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()S
    .locals 1

    iget-object v0, p0, LYd/S$a;->b:LZd/K;

    invoke-interface {v0}, LZd/K;->value()S

    move-result v0

    return v0
.end method
