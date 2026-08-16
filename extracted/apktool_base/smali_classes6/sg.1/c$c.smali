.class public final Lsg/c$c;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/c;->g(Leg/Z;)Lv1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Ljava/lang/Throwable;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lv1/b;

.field public final synthetic c:Leg/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lv1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv1/b;Leg/Z;Lv1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/b;",
            "Leg/Z<",
            "+TT;>;",
            "Lv1/l<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lsg/c$c;->b:Lv1/b;

    iput-object p2, p0, Lsg/c$c;->c:Leg/Z;

    iput-object p3, p0, Lsg/c$c;->d:Lv1/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lsg/c$c;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsg/c$c;->b:Lv1/b;

    invoke-virtual {p1}, Lv1/b;->a()V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lsg/c$c;->c:Leg/Z;

    invoke-interface {p1}, Leg/Z;->G()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lsg/c$c;->d:Lv1/l;

    iget-object v0, p0, Lsg/c$c;->c:Leg/Z;

    invoke-interface {v0}, Leg/Z;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv1/l;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lsg/c$c;->d:Lv1/l;

    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v0, v1}, Lv1/l;->b(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
