.class public LYd/A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/A;->iterator()LZd/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/w;

.field public final synthetic c:LYd/A;


# direct methods
.method public constructor <init>(LYd/A;)V
    .locals 0

    iput-object p1, p0, LYd/A$a;->c:LYd/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/A;->b(LYd/A;)Lee/t;

    move-result-object p1

    invoke-interface {p1}, Lee/t;->iterator()LZd/w;

    move-result-object p1

    iput-object p1, p0, LYd/A$a;->b:LZd/w;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/A$a;->b:LZd/w;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/A$a;->b:LZd/w;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, LYd/A$a;->b:LZd/w;

    invoke-interface {v0}, LZd/w;->key()D

    move-result-wide v0

    return-wide v0
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

    iget-object v0, p0, LYd/A$a;->b:LZd/w;

    invoke-interface {v0}, LZd/w;->value()F

    move-result v0

    return v0
.end method
