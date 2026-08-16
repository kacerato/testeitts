.class public final LBe/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDe/c;
.implements Ljava/lang/Runnable;
.implements Laf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBe/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;
    .annotation build LCe/f;
    .end annotation
.end field

.field public final c:LBe/J$c;
    .annotation build LCe/f;
    .end annotation
.end field

.field public d:Ljava/lang/Thread;
    .annotation build LCe/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;LBe/J$c;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LBe/J$c;
        .annotation build LCe/f;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBe/J$a;->b:Ljava/lang/Runnable;

    iput-object p2, p0, LBe/J$a;->c:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, LBe/J$a;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LBe/J$a;->c:LBe/J$c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, LBe/J$a;->d:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LBe/J$a;->c:LBe/J$c;

    instance-of v1, v0, LSe/i;

    if-eqz v1, :cond_0

    check-cast v0, LSe/i;

    invoke-virtual {v0}, LSe/i;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LBe/J$a;->c:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LBe/J$a;->d:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LBe/J$a;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LBe/J$a;->dispose()V

    iput-object v0, p0, LBe/J$a;->d:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, LBe/J$a;->dispose()V

    iput-object v0, p0, LBe/J$a;->d:Ljava/lang/Thread;

    throw v1
.end method
