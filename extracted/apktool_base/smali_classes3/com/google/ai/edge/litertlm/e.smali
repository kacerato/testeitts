.class public final Lcom/google/ai/edge/litertlm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ai/edge/litertlm/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n37#2,2:202\n37#2,2:204\n37#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n*L\n60#1:202,2\n90#1:204,2\n105#1:206,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n37#2,2:202\n37#2,2:204\n37#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n*L\n60#1:202,2\n90#1:204,2\n105#1:206,2\n*E\n"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCancelProcess(J)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeDeleteSession(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is closed already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not alive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ai/edge/litertlm/InputData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    check-cast p1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeGenerateContent(J[Lcom/google/ai/edge/litertlm/InputData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;Lk0/s;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputData",
            "responseCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ai/edge/litertlm/InputData;",
            ">;",
            "Lk0/s;",
            ")V"
        }
    .end annotation

    const-string v0, "inputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->d()V

    new-instance v0, Lcom/google/ai/edge/litertlm/e$a;

    invoke-direct {v0, p0, p2}, Lcom/google/ai/edge/litertlm/e$a;-><init>(Lcom/google/ai/edge/litertlm/e;Lk0/s;)V

    sget-object p2, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    check-cast p1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeGenerateContentStream(J[Lcom/google/ai/edge/litertlm/InputData;Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniInferenceCallback;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeRunDecode(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ai/edge/litertlm/InputData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/e;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/e;->b:J

    check-cast p1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ai/edge/litertlm/InputData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeRunPrefill(J[Lcom/google/ai/edge/litertlm/InputData;)V

    return-void
.end method
