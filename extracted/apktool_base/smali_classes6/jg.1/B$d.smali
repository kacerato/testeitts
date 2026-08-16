.class public final Ljg/B$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/B;->p(Ljg/i;Ljg/i;LMf/q;)Ljg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:Ljg/i;

.field public final synthetic d:LMf/q;


# direct methods
.method public constructor <init>(Ljg/i;Ljg/i;LMf/q;)V
    .locals 0

    iput-object p1, p0, Ljg/B$d;->b:Ljg/i;

    iput-object p2, p0, Ljg/B$d;->c:Ljg/i;

    iput-object p3, p0, Ljg/B$d;->d:LMf/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TR;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ljg/B$d;->b:Ljg/i;

    iget-object v1, p0, Ljg/B$d;->c:Ljg/i;

    const/4 v2, 0x2

    new-array v2, v2, [Ljg/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Ljg/B;->a()LMf/a;

    move-result-object v0

    new-instance v1, Ljg/B$g;

    iget-object v3, p0, Ljg/B$d;->d:LMf/q;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljg/B$g;-><init>(LMf/q;Lyf/f;)V

    invoke-static {p1, v2, v0, v1, p2}, Lkg/k;->a(Ljg/j;[Ljg/i;LMf/a;LMf/q;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
