.class public final Ljg/B$t$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/B$t;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Ljg/B$t;


# direct methods
.method public constructor <init>(Ljg/B$t;Lyf/f;)V
    .locals 0

    iput-object p1, p0, Ljg/B$t$a;->d:Ljg/B$t;

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

    iput-object p1, p0, Ljg/B$t$a;->b:Ljava/lang/Object;

    iget p1, p0, Ljg/B$t$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/B$t$a;->c:I

    iget-object p1, p0, Ljg/B$t$a;->d:Ljg/B$t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/B$t;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
