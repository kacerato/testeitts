.class public final Ljg/n$a$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/n$a;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1\n*L\n1#1,118:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1\n*L\n1#1,118:1\n*E\n"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljg/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/n$a;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Ljg/n$a;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/n$a;",
            "Lyf/f<",
            "-",
            "Ljg/n$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/n$a$a;->c:Ljg/n$a;

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

    iput-object p1, p0, Ljg/n$a$a;->b:Ljava/lang/Object;

    iget p1, p0, Ljg/n$a$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/n$a$a;->d:I

    iget-object p1, p0, Ljg/n$a$a;->c:Ljg/n$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/n$a;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
