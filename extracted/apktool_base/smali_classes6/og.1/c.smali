.class public final Log/c;
.super Leg/w0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Log/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Leg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Log/c;

    invoke-direct {v0}, Log/c;-><init>()V

    sput-object v0, Log/c;->c:Log/c;

    sget-object v0, Log/p;->b:Log/p;

    const/16 v1, 0x40

    invoke-static {}, Lmg/W;->a()I

    move-result v2

    invoke-static {v1, v2}, LVf/u;->w(II)I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lmg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Log/p;->limitedParallelism(I)Leg/M;

    move-result-object v0

    sput-object v0, Log/c;->d:Leg/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Log/c;->d:Leg/M;

    invoke-virtual {v0, p1, p2}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(Lyf/j;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    sget-object v0, Log/c;->d:Leg/M;

    invoke-virtual {v0, p1, p2}, Leg/M;->dispatchYield(Lyf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lyf/l;->b:Lyf/l;

    invoke-virtual {p0, v0, p1}, Log/c;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Log/p;->b:Log/p;

    invoke-virtual {v0, p1}, Log/p;->limitedParallelism(I)Leg/M;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
