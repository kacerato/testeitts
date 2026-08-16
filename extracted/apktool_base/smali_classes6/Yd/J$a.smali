.class public LYd/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/J;->iterator()LZd/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/H;

.field public final synthetic c:LYd/J;


# direct methods
.method public constructor <init>(LYd/J;)V
    .locals 0

    iput-object p1, p0, LYd/J$a;->c:LYd/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/J;->b:LSd/f;

    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    iput-object p1, p0, LYd/J$a;->b:LZd/H;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/J$a;->b:LZd/H;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()F
    .locals 1

    iget-object v0, p0, LYd/J$a;->b:LZd/H;

    invoke-interface {v0}, LZd/H;->next()F

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
