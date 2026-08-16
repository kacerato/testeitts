.class public final LSe/b$a;
.super LBe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:LGe/f;

.field public final c:LDe/b;

.field public final d:LGe/f;

.field public final e:LSe/b$c;

.field public volatile f:Z


# direct methods
.method public constructor <init>(LSe/b$c;)V
    .locals 2

    invoke-direct {p0}, LBe/J$c;-><init>()V

    iput-object p1, p0, LSe/b$a;->e:LSe/b$c;

    new-instance p1, LGe/f;

    invoke-direct {p1}, LGe/f;-><init>()V

    iput-object p1, p0, LSe/b$a;->b:LGe/f;

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    iput-object v0, p0, LSe/b$a;->c:LDe/b;

    new-instance v1, LGe/f;

    invoke-direct {v1}, LGe/f;-><init>()V

    iput-object v1, p0, LSe/b$a;->d:LGe/f;

    invoke-virtual {v1, p1}, LGe/f;->a(LDe/c;)Z

    invoke-virtual {v1, v0}, LGe/f;->a(LDe/c;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LDe/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-boolean v0, p0, LSe/b$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    iget-object v0, p0, LSe/b$a;->e:LSe/b$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LSe/b$a;->b:LGe/f;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LSe/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LGe/c;)LSe/n;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-boolean v0, p0, LSe/b$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    iget-object v0, p0, LSe/b$a;->e:LSe/b$c;

    iget-object v5, p0, LSe/b$a;->c:LDe/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LSe/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LGe/c;)LSe/n;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LSe/b$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LSe/b$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LSe/b$a;->f:Z

    iget-object v0, p0, LSe/b$a;->d:LGe/f;

    invoke-virtual {v0}, LGe/f;->dispose()V

    :cond_0
    return-void
.end method
