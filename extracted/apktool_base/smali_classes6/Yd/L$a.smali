.class public LYd/L$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/L;->iterator()LZd/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/F;

.field public final synthetic c:LYd/L;


# direct methods
.method public constructor <init>(LYd/L;)V
    .locals 0

    iput-object p1, p0, LYd/L$a;->c:LYd/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LYd/L;->a(LYd/L;)Lee/B;

    move-result-object p1

    invoke-interface {p1}, Lee/B;->iterator()LZd/F;

    move-result-object p1

    iput-object p1, p0, LYd/L$a;->b:LZd/F;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LYd/L$a;->b:LZd/F;

    invoke-interface {v0}, LZd/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/L$a;->b:LZd/F;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, LYd/L$a;->b:LZd/F;

    invoke-interface {v0}, LZd/F;->key()F

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

    iget-object v0, p0, LYd/L$a;->b:LZd/F;

    invoke-interface {v0}, LZd/F;->value()F

    move-result v0

    return v0
.end method
