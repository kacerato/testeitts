.class public final Leg/O$a;
.super Lyf/a;
.source "SourceFile"

# interfaces
.implements Leg/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/O;->a(LMf/p;)Leg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,110:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,110:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Lyf/j;",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/p;Leg/N$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Lyf/j;",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;",
            "Leg/N$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Leg/O$a;->b:LMf/p;

    invoke-direct {p0, p2}, Lyf/a;-><init>(Lyf/j$c;)V

    return-void
.end method


# virtual methods
.method public q(Lyf/j;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Leg/O$a;->b:LMf/p;

    invoke-interface {v0, p1, p2}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
