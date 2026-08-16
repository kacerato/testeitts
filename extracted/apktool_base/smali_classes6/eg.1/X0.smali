.class public final Leg/X0;
.super Lyf/a;
.source "SourceFile"

# interfaces
.implements Leg/K0;


# static fields
.field public static final b:Leg/X0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/X0;

    invoke-direct {v0}, Leg/X0;-><init>()V

    sput-object v0, Leg/X0;->b:Leg/X0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-direct {p0, v0}, Lyf/a;-><init>(Lyf/j$c;)V

    return-void
.end method

.method public static synthetic A()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic s()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic t()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic u()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic v()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic x()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method


# virtual methods
.method public Q()Ljava/util/concurrent/CancellationException;
    .locals 2
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S(ZZLMf/l;)Leg/m0;
    .locals 0
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)",
            "Leg/m0;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Leg/Y0;->b:Leg/Y0;

    return-object p1
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public synthetic b(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c0(Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This job is always active"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Leg/K0$a;->a(Leg/K0;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Leg/x;)Leg/v;
    .locals 0
    .param p1    # Leg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Leg/Y0;->b:Leg/Y0;

    return-object p1
.end method

.method public getChildren()LXf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LXf/m<",
            "Leg/K0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LXf/x;->l()LXf/m;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Leg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NonCancellable"

    return-object v0
.end method

.method public w(LMf/l;)Leg/m0;
    .locals 0
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)",
            "Leg/m0;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Leg/Y0;->b:Leg/Y0;

    return-object p1
.end method

.method public y(Leg/K0;)Leg/K0;
    .locals 0
    .param p1    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/K0$a;->i(Leg/K0;Leg/K0;)Leg/K0;

    move-result-object p1

    return-object p1
.end method

.method public z()Lpg/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
