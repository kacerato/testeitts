.class public LYd/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/y;->iterator()LZd/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/y;

.field public final synthetic c:LYd/y;


# direct methods
.method public constructor <init>(LYd/y;)V
    .locals 0

    iput-object p1, p0, LYd/y$a;->c:LYd/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/y;->b:LSd/e;

    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    iput-object p1, p0, LYd/y$a;->b:LZd/y;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/y$a;->b:LZd/y;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()D
    .locals 2

    iget-object v0, p0, LYd/y$a;->b:LZd/y;

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
