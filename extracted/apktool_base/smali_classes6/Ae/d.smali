.class public abstract LAe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAe/d$d;,
        LAe/d$b;,
        LAe/d$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LUm/C;LUm/v;)V
    .locals 0

    invoke-static {p0, p1}, LAe/d;->d(LUm/C;LUm/v;)V

    return-void
.end method

.method public static b(LUm/v;)Ljava/lang/String;
    .locals 1
    .param p0    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LAe/d;->c(LUm/v;LAe/d$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(LUm/v;LAe/d$c;)Ljava/lang/String;
    .locals 5
    .param p0    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LAe/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LAe/d$d;

    invoke-direct {p1, v0}, LAe/d$d;-><init>(LAe/d$a;)V

    :goto_0
    new-instance v1, LAe/d$b;

    invoke-direct {v1, v0}, LAe/d$b;-><init>(LAe/d$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, LUm/C;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v4, LAe/d$a;

    invoke-direct {v4, v1, v0, p1}, LAe/d$a;-><init>(LAe/d$b;Ljava/lang/StringBuilder;LAe/d$c;)V

    invoke-static {v3, v2, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LUm/C;

    invoke-virtual {p0, p1}, LUm/v;->c(LUm/C;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(LUm/C;LUm/v;)V
    .locals 1
    .param p0    # LUm/C;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, LUm/v;->e()LUm/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object v0

    invoke-virtual {p1, p0}, LUm/v;->c(LUm/C;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
