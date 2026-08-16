.class public final Ljg/y$j$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2"
    f = "Reduce.kt"
    i = {}
    l = {
        0x2d
    }
    m = "emit"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/y$j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1\n*L\n1#1,172:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1\n*L\n1#1,172:1\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljg/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/y$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Ljg/y$j;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/y$j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/y$j$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/y$j$a;->d:Ljg/y$j;

    invoke-direct {p0, p2}, LBf/d;-><init>(Lyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Ljg/y$j$a;->c:Ljava/lang/Object;

    iget p1, p0, Ljg/y$j$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/y$j$a;->e:I

    iget-object p1, p0, Ljg/y$j$a;->d:Ljg/y$j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/y$j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
