.class public LSj/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:LBi/y;

.field public c:Z


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LSj/k$a;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, LSj/k$a;->c:Z

    iput-object p1, p0, LSj/k$a;->b:LBi/y;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public c([BI)I
    .locals 4

    iget-object v0, p0, LSj/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-boolean v1, p0, LSj/k$a;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LSj/k$a;->b:LBi/y;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LBi/y;->update([BII)V

    iget-object v1, p0, LSj/k$a;->b:LBi/y;

    invoke-interface {v1, p1, p2}, LBi/y;->c([BI)I

    :goto_0
    invoke-virtual {p0}, LSj/k$a;->reset()V

    iget-boolean p1, p0, LSj/k$a;->c:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, LSj/k$a;->c:Z

    array-length p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LSj/k$a;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LSj/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, LSj/k$a;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LSj/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LSj/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
