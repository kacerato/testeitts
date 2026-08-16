.class public final Leg/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/f1;->a(LMf/a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n*L\n1#1,18:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n*L\n1#1,18:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leg/f1$a;->b:LMf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leg/f1$a;->b:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    return-void
.end method
