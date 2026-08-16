.class public final Lfg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfg/d;->o(JLeg/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/p;

.field public final synthetic c:Lfg/d;


# direct methods
.method public constructor <init>(Leg/p;Lfg/d;)V
    .locals 0

    iput-object p1, p0, Lfg/d$a;->b:Leg/p;

    iput-object p2, p0, Lfg/d$a;->c:Lfg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lfg/d$a;->b:Leg/p;

    iget-object v1, p0, Lfg/d$a;->c:Lfg/d;

    sget-object v2, Lnf/P0;->a:Lnf/P0;

    invoke-interface {v0, v1, v2}, Leg/p;->x(Leg/M;Ljava/lang/Object;)V

    return-void
.end method
