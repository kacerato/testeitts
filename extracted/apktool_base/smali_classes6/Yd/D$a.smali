.class public LYd/D$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/D;->iterator()LZd/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/z;

.field public final synthetic c:LYd/D;


# direct methods
.method public constructor <init>(LYd/D;)V
    .locals 0

    iput-object p1, p0, LYd/D$a;->c:LYd/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/D;->b(LYd/D;)Lee/v;

    move-result-object p1

    invoke-interface {p1}, Lee/v;->iterator()LZd/z;

    move-result-object p1

    iput-object p1, p0, LYd/D$a;->b:LZd/z;

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LYd/D$a;->b:LZd/z;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/D$a;->b:LZd/z;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, LYd/D$a;->b:LZd/z;

    invoke-interface {v0}, LZd/z;->key()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()J
    .locals 2

    iget-object v0, p0, LYd/D$a;->b:LZd/z;

    invoke-interface {v0}, LZd/z;->value()J

    move-result-wide v0

    return-wide v0
.end method
