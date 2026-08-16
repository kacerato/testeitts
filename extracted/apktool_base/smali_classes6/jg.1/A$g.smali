.class public final Ljg/A$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/A;->g(Ljg/i;LMf/p;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljg/i<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:LMf/p;


# direct methods
.method public constructor <init>(Ljg/i;LMf/p;)V
    .locals 0

    iput-object p1, p0, Ljg/A$g;->b:Ljg/i;

    iput-object p2, p0, Ljg/A$g;->c:LMf/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ljg/A$g;->b:Ljg/i;

    new-instance v1, Ljg/A$g$b;

    iget-object v2, p0, Ljg/A$g;->c:LMf/p;

    invoke-direct {v1, p1, v2}, Ljg/A$g$b;-><init>(Ljg/j;LMf/p;)V

    invoke-interface {v0, v1, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public d(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Ljg/A$g$a;

    invoke-direct {v0, p0, p2}, Ljg/A$g$a;-><init>(Ljg/A$g;Lyf/f;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object v0, p0, Ljg/A$g;->b:Ljg/i;

    new-instance v1, Ljg/A$g$b;

    iget-object v2, p0, Ljg/A$g;->c:LMf/p;

    invoke-direct {v1, p1, v2}, Ljg/A$g$b;-><init>(Ljg/j;LMf/p;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v0, v1, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
