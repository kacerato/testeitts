.class public LYd/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/g0;->iterator()LZd/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/b0;

.field public final synthetic c:LYd/g0;


# direct methods
.method public constructor <init>(LYd/g0;)V
    .locals 0

    iput-object p1, p0, LYd/g0$a;->c:LYd/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/g0;->b:LSd/h;

    invoke-interface {p1}, LSd/h;->iterator()LZd/b0;

    move-result-object p1

    iput-object p1, p0, LYd/g0$a;->b:LZd/b0;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/g0$a;->b:LZd/b0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()J
    .locals 2

    iget-object v0, p0, LYd/g0$a;->b:LZd/b0;

    invoke-interface {v0}, LZd/b0;->next()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
