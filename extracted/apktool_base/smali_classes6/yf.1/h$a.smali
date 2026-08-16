.class public final Lyf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyf/h;->a(Lyf/j;LMf/l;)Lyf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/f<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n*L\n1#1,161:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n*L\n1#1,161:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lyf/j;

.field public final synthetic c:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Lnf/i0<",
            "+TT;>;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;LMf/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "LMf/l<",
            "-",
            "Lnf/i0<",
            "+TT;>;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyf/h$a;->b:Lyf/j;

    iput-object p2, p0, Lyf/h$a;->c:LMf/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lyf/j;
    .locals 1

    iget-object v0, p0, Lyf/h$a;->b:Lyf/j;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyf/h$a;->c:LMf/l;

    invoke-static {p1}, Lnf/i0;->a(Ljava/lang/Object;)Lnf/i0;

    move-result-object p1

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
