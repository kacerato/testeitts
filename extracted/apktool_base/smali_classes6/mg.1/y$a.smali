.class public abstract Lmg/y$a;
.super Lmg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmg/b<",
        "Lmg/y;",
        ">;"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final b:Lmg/y;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lmg/y;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmg/y;)V
    .locals 0
    .param p1    # Lmg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lmg/b;-><init>()V

    iput-object p1, p0, Lmg/y$a;->b:Lmg/y;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmg/y;

    invoke-virtual {p0, p1, p2}, Lmg/y$a;->f(Lmg/y;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lmg/y;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lmg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmg/y$a;->b:Lmg/y;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmg/y$a;->c:Lmg/y;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lmg/y;->i()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lmg/y$a;->b:Lmg/y;

    iget-object p2, p0, Lmg/y$a;->c:Lmg/y;

    invoke-static {p2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lmg/y;->h(Lmg/y;Lmg/y;)V

    :cond_2
    return-void
.end method
