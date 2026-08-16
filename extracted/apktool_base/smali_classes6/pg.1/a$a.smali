.class public final Lpg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/a;->d(Lpg/m;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lpg/m;

.field public final synthetic c:Lpg/a;


# direct methods
.method public constructor <init>(Lpg/m;Lpg/a;)V
    .locals 0

    iput-object p1, p0, Lpg/a$a;->b:Lpg/m;

    iput-object p2, p0, Lpg/a$a;->c:Lpg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpg/a$a;->b:Lpg/m;

    iget-object v1, p0, Lpg/a$a;->c:Lpg/a;

    sget-object v2, Lnf/P0;->a:Lnf/P0;

    invoke-interface {v0, v1, v2}, Lpg/m;->x(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
