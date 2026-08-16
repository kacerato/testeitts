.class public LYd/E0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/E0;->iterator()LZd/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/o0;

.field public final synthetic c:LYd/E0;


# direct methods
.method public constructor <init>(LYd/E0;)V
    .locals 0

    iput-object p1, p0, LYd/E0$a;->c:LYd/E0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/E0;->a(LYd/E0;)Lee/g0;

    move-result-object p1

    invoke-interface {p1}, Lee/g0;->iterator()LZd/o0;

    move-result-object p1

    iput-object p1, p0, LYd/E0$a;->b:LZd/o0;

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

    iget-object v0, p0, LYd/E0$a;->b:LZd/o0;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/E0$a;->b:LZd/o0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, LYd/E0$a;->b:LZd/o0;

    invoke-interface {v0}, LZd/o0;->key()S

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

    iget-object v0, p0, LYd/E0$a;->b:LZd/o0;

    invoke-interface {v0}, LZd/o0;->value()C

    move-result v0

    return v0
.end method
