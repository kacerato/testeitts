.class public final Lig/g$f;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/g;->i(LMf/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Lig/g$a<",
        "*>;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,620:1\n1#2:621\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,620:1\n1#2:621\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Lig/g$a<",
            "*>;",
            "Lyf/j;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Lig/g$a<",
            "*>;-",
            "Lyf/j;",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lig/g$f;->b:LMf/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lig/g$a;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lig/g$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/g$a<",
            "*>;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lig/g;->a:Lig/g;

    invoke-static {v0, p1}, Lig/g;->b(Lig/g;Lig/g$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lig/g$a;->c:Lig/e;

    invoke-virtual {v0}, Lig/e;->c()Lyf/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lig/g$f;->b:LMf/p;

    invoke-interface {v1, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lig/g$a;

    invoke-virtual {p0, p1}, Lig/g$f;->b(Lig/g$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
