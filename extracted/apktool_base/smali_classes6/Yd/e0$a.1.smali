.class public LYd/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/W;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/e0;->iterator()LZd/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/W;

.field public final synthetic c:LYd/e0;


# direct methods
.method public constructor <init>(LYd/e0;)V
    .locals 0

    iput-object p1, p0, LYd/e0$a;->c:LYd/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/e0;->a(LYd/e0;)Lee/O;

    move-result-object p1

    invoke-interface {p1}, Lee/O;->iterator()LZd/W;

    move-result-object p1

    iput-object p1, p0, LYd/e0$a;->b:LZd/W;

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

    iget-object v0, p0, LYd/e0$a;->b:LZd/W;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/e0$a;->b:LZd/W;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, LYd/e0$a;->b:LZd/W;

    invoke-interface {v0}, LZd/W;->key()J

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

    iget-object v0, p0, LYd/e0$a;->b:LZd/W;

    invoke-interface {v0}, LZd/W;->value()B

    move-result v0

    return v0
.end method
