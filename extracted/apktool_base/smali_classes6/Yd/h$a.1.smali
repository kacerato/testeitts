.class public LYd/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/h;->iterator()LZd/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/h;

.field public final synthetic c:LYd/h;


# direct methods
.method public constructor <init>(LYd/h;)V
    .locals 0

    iput-object p1, p0, LYd/h$a;->c:LYd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/h;->a(LYd/h;)Lee/f;

    move-result-object p1

    invoke-interface {p1}, Lee/f;->iterator()LZd/h;

    move-result-object p1

    iput-object p1, p0, LYd/h$a;->b:LZd/h;

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

    iget-object v0, p0, LYd/h$a;->b:LZd/h;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/h$a;->b:LZd/h;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, LYd/h$a;->b:LZd/h;

    invoke-interface {v0}, LZd/h;->key()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()J
    .locals 2

    iget-object v0, p0, LYd/h$a;->b:LZd/h;

    invoke-interface {v0}, LZd/h;->value()J

    move-result-wide v0

    return-wide v0
.end method
