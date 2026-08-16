.class public LNl/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LIi/Q;


# direct methods
.method public constructor <init>(LIi/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNl/e$a;->a:LIi/Q;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v1}, LIi/Q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v1}, LIi/Q;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    iget-object v0, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {p0}, LNl/e$a;->f()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, LIi/Q;->e([BII)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v0}, LIi/Q;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v0}, LIi/v;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v0, p1}, LIi/v;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LNl/e$a;->a:LIi/Q;

    invoke-virtual {v0, p1, p2, p3}, LIi/v;->update([BII)V

    return-void
.end method
