.class public final Lcom/android/tools/r8/internal/Io0;
.super Lcom/android/tools/r8/internal/Fo0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kC;

.field public b:Lcom/android/tools/r8/internal/F1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Fo0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Io0;->a:Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ko0;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Io0;->a:Lcom/android/tools/r8/internal/kC;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/Ho0;->a:Lcom/android/tools/r8/internal/Ho0;

    return-object v0

    .line 27
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Io0;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/WI0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/WI0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Jo0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Jo0;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/J1;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p3, p3, Lcom/android/tools/r8/internal/Zu;

    if-eqz p3, :cond_5

    .line 5
    sget-boolean p3, Lcom/android/tools/r8/internal/Io0;->c:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/Io0;->b:Lcom/android/tools/r8/internal/F1;

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/Io0;->b:Lcom/android/tools/r8/internal/F1;

    .line 9
    iget-object p3, p0, Lcom/android/tools/r8/internal/Io0;->a:Lcom/android/tools/r8/internal/kC;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p2

    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void

    .line 12
    :cond_2
    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p3

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/graph/J1;->n:Z

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_4
    :goto_1
    iget v0, p3, Lcom/android/tools/r8/graph/g;->c:I

    const/16 v1, 0x4000

    .line 16
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result p3

    if-nez p3, :cond_5

    .line 20
    iget-object p3, p0, Lcom/android/tools/r8/internal/Io0;->a:Lcom/android/tools/r8/internal/kC;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p2

    .line 22
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    :cond_5
    return-void
.end method
