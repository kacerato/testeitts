.class public LYd/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/i;->iterator()LZd/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZd/i<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:LZd/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZd/i<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LYd/i;


# direct methods
.method public constructor <init>(LYd/i;)V
    .locals 0

    iput-object p1, p0, LYd/i$a;->c:LYd/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/i;->a(LYd/i;)Lee/g;

    move-result-object p1

    invoke-interface {p1}, Lee/g;->iterator()LZd/i;

    move-result-object p1

    iput-object p1, p0, LYd/i$a;->b:LZd/i;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/i$a;->b:LZd/i;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/i$a;->b:LZd/i;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, LYd/i$a;->b:LZd/i;

    invoke-interface {v0}, LZd/i;->key()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, LYd/i$a;->b:LZd/i;

    invoke-interface {v0}, LZd/i;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
