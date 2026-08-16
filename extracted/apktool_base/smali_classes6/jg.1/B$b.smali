.class public final Ljg/B$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/B;->e(Ljg/i;Ljg/i;Ljg/i;Ljg/i;LMf/s;)Ljg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n262#2,2:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:[Ljg/i;

.field public final synthetic c:LMf/s;


# direct methods
.method public constructor <init>([Ljg/i;LMf/s;)V
    .locals 0

    iput-object p1, p0, Ljg/B$b;->b:[Ljg/i;

    iput-object p2, p0, Ljg/B$b;->c:LMf/s;

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ljg/B$b;->b:[Ljg/i;

    invoke-static {}, Ljg/B;->a()LMf/a;

    move-result-object v1

    new-instance v2, Ljg/B$b$a;

    const/4 v3, 0x0

    iget-object v4, p0, Ljg/B$b;->c:LMf/s;

    invoke-direct {v2, v3, v4}, Ljg/B$b$a;-><init>(Lyf/f;LMf/s;)V

    invoke-static {p1, v0, v1, v2, p2}, Lkg/k;->a(Ljg/j;[Ljg/i;LMf/a;LMf/q;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
