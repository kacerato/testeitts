.class public LYd/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/n;->iterator()LZd/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/p;

.field public final synthetic c:LYd/n;


# direct methods
.method public constructor <init>(LYd/n;)V
    .locals 0

    iput-object p1, p0, LYd/n$a;->c:LYd/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/n;->b:LSd/b;

    invoke-interface {p1}, LSd/b;->iterator()LZd/p;

    move-result-object p1

    iput-object p1, p0, LYd/n$a;->b:LZd/p;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/n$a;->b:LZd/p;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()C
    .locals 1

    iget-object v0, p0, LYd/n$a;->b:LZd/p;

    invoke-interface {v0}, LZd/p;->next()C

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
