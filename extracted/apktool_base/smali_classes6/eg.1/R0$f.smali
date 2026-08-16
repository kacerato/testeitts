.class public final Leg/R0$f;
.super Lmg/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/R0;->e0(Ljava/lang/Object;Leg/W0;Leg/Q0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic d:Leg/R0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmg/y;Leg/R0;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Leg/R0$f;->d:Leg/R0;

    iput-object p3, p0, Leg/R0$f;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmg/y$a;-><init>(Lmg/y;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmg/y;

    invoke-virtual {p0, p1}, Leg/R0$f;->g(Lmg/y;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lmg/y;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lmg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Leg/R0$f;->d:Leg/R0;

    invoke-virtual {p1}, Leg/R0;->J0()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Leg/R0$f;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmg/x;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
