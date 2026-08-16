.class public final LDe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()LDe/c;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    return-object v0
.end method

.method public static b()LDe/c;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, LHe/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, LDe/d;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(LFe/a;)LDe/c;
    .locals 1
    .param p0    # LFe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LDe/a;

    invoke-direct {v0, p0}, LDe/a;-><init>(LFe/a;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Future;)LDe/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p0, v0}, LDe/d;->e(Ljava/util/concurrent/Future;Z)LDe/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Future;Z)LDe/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LDe/e;

    invoke-direct {v0, p0, p1}, LDe/e;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static f(Ljava/lang/Runnable;)LDe/c;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LDe/g;

    invoke-direct {v0, p0}, LDe/g;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static g(Lhn/d;)LDe/c;
    .locals 1
    .param p0    # Lhn/d;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    const-string v0, "subscription is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LDe/i;

    invoke-direct {v0, p0}, LDe/i;-><init>(Lhn/d;)V

    return-object v0
.end method
