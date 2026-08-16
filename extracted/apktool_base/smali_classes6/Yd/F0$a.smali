.class public LYd/F0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/F0;->iterator()LZd/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/s0;

.field public final synthetic c:LYd/F0;


# direct methods
.method public constructor <init>(LYd/F0;)V
    .locals 0

    iput-object p1, p0, LYd/F0$a;->c:LYd/F0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/F0;->b:LSd/i;

    invoke-interface {p1}, LSd/i;->iterator()LZd/s0;

    move-result-object p1

    iput-object p1, p0, LYd/F0$a;->b:LZd/s0;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/F0$a;->b:LZd/s0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()S
    .locals 1

    iget-object v0, p0, LYd/F0$a;->b:LZd/s0;

    invoke-interface {v0}, LZd/s0;->next()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
