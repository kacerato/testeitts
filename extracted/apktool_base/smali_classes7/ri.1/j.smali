.class public Lri/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/p;


# instance fields
.field public final a:LQk/p;

.field public final b:I


# direct methods
.method public constructor <init>(LQk/p;)V
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-direct {p0, p1, v0}, Lri/j;-><init>(LQk/p;I)V

    return-void
.end method

.method public constructor <init>(LQk/p;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri/j;->a:LQk/p;

    iput p2, p0, Lri/j;->b:I

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lri/j;->a:LQk/p;

    invoke-interface {v0}, LQk/p;->a()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 4

    iget v0, p0, Lri/j;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lri/j;->a:LQk/p;

    invoke-interface {v2}, LQk/p;->b()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lri/j;->a:LQk/p;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
