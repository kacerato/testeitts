.class public LRk/j$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation


# instance fields
.field public final a:LBi/a0;

.field public final b:I


# direct methods
.method public constructor <init>(LBi/a0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRk/j$y;->a:LBi/a0;

    iput p2, p0, LRk/j$y;->b:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v1}, LBi/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LRk/j$y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    invoke-virtual {p0}, LRk/j$y;->f()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LRk/j$y;->e([BII)I

    move-result p1

    return p1
.end method

.method public e([BII)I
    .locals 1

    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0, p1, p2, p3}, LBi/a0;->e([BII)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LRk/j$y;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public h([BII)I
    .locals 1

    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0, p1, p2, p3}, LBi/a0;->h([BII)I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0}, LBi/D;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LRk/j$y;->a:LBi/a0;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
