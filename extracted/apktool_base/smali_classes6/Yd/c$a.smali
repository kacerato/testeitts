.class public LYd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/c;->iterator()LZd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LZd/g;

.field public final synthetic c:LYd/c;


# direct methods
.method public constructor <init>(LYd/c;)V
    .locals 0

    iput-object p1, p0, LYd/c$a;->c:LYd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LYd/c;->b:LSd/a;

    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    iput-object p1, p0, LYd/c$a;->b:LZd/g;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LYd/c$a;->b:LZd/g;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()B
    .locals 1

    iget-object v0, p0, LYd/c$a;->b:LZd/g;

    invoke-interface {v0}, LZd/g;->next()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
