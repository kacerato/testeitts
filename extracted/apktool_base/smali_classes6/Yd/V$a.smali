.class public LYd/V$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/V;->iterator()LZd/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/Q;

.field public final synthetic c:LYd/V;


# direct methods
.method public constructor <init>(LYd/V;)V
    .locals 0

    iput-object p1, p0, LYd/V$a;->c:LYd/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/V;->b:LSd/g;

    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    iput-object p1, p0, LYd/V$a;->b:LZd/Q;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/V$a;->b:LZd/Q;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, LYd/V$a;->b:LZd/Q;

    invoke-interface {v0}, LZd/Q;->next()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
