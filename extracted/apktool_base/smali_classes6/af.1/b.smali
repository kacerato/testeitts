.class public final Laf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/b$b;,
        Laf/b$h;,
        Laf/b$f;,
        Laf/b$c;,
        Laf/b$e;,
        Laf/b$d;,
        Laf/b$a;,
        Laf/b$g;
    }
.end annotation


# static fields
.field public static final a:LBe/J;
    .annotation build LCe/f;
    .end annotation
.end field

.field public static final b:LBe/J;
    .annotation build LCe/f;
    .end annotation
.end field

.field public static final c:LBe/J;
    .annotation build LCe/f;
    .end annotation
.end field

.field public static final d:LBe/J;
    .annotation build LCe/f;
    .end annotation
.end field

.field public static final e:LBe/J;
    .annotation build LCe/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laf/b$h;

    invoke-direct {v0}, Laf/b$h;-><init>()V

    invoke-static {v0}, LYe/a;->J(Ljava/util/concurrent/Callable;)LBe/J;

    move-result-object v0

    sput-object v0, Laf/b;->a:LBe/J;

    new-instance v0, Laf/b$b;

    invoke-direct {v0}, Laf/b$b;-><init>()V

    invoke-static {v0}, LYe/a;->G(Ljava/util/concurrent/Callable;)LBe/J;

    move-result-object v0

    sput-object v0, Laf/b;->b:LBe/J;

    new-instance v0, Laf/b$c;

    invoke-direct {v0}, Laf/b$c;-><init>()V

    invoke-static {v0}, LYe/a;->H(Ljava/util/concurrent/Callable;)LBe/J;

    move-result-object v0

    sput-object v0, Laf/b;->c:LBe/J;

    invoke-static {}, LSe/s;->l()LSe/s;

    move-result-object v0

    sput-object v0, Laf/b;->d:LBe/J;

    new-instance v0, Laf/b$f;

    invoke-direct {v0}, Laf/b$f;-><init>()V

    invoke-static {v0}, LYe/a;->I(Ljava/util/concurrent/Callable;)LBe/J;

    move-result-object v0

    sput-object v0, Laf/b;->e:LBe/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()LBe/J;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, Laf/b;->b:LBe/J;

    invoke-static {v0}, LYe/a;->X(LBe/J;)LBe/J;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;)LBe/J;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LSe/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Z)LBe/J;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/e;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/d;

    invoke-direct {v0, p0, p1}, LSe/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static d()LBe/J;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, Laf/b;->c:LBe/J;

    invoke-static {v0}, LYe/a;->Z(LBe/J;)LBe/J;

    move-result-object v0

    return-object v0
.end method

.method public static e()LBe/J;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, Laf/b;->e:LBe/J;

    invoke-static {v0}, LYe/a;->a0(LBe/J;)LBe/J;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 1

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->i()V

    invoke-static {}, Laf/b;->d()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->i()V

    invoke-static {}, Laf/b;->e()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->i()V

    invoke-static {}, Laf/b;->g()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->i()V

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->i()V

    invoke-static {}, LSe/p;->b()V

    return-void
.end method

.method public static g()LBe/J;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, Laf/b;->a:LBe/J;

    invoke-static {v0}, LYe/a;->c0(LBe/J;)LBe/J;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 1

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->j()V

    invoke-static {}, Laf/b;->d()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->j()V

    invoke-static {}, Laf/b;->e()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->j()V

    invoke-static {}, Laf/b;->g()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->j()V

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v0

    invoke-virtual {v0}, LBe/J;->j()V

    invoke-static {}, LSe/p;->c()V

    return-void
.end method

.method public static i()LBe/J;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, Laf/b;->d:LBe/J;

    return-object v0
.end method
