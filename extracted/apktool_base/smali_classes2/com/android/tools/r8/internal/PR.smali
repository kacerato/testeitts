.class public final Lcom/android/tools/r8/internal/PR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fB;

.field public final b:Lcom/android/tools/r8/internal/zE;

.field public final c:Lcom/android/tools/r8/internal/EE;

.field public final d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/internal/QR;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/PR;->e:Lcom/android/tools/r8/internal/QR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/PR;->a:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    iput-object p4, p0, Lcom/android/tools/r8/internal/PR;->c:Lcom/android/tools/r8/internal/EE;

    iput-object p5, p0, Lcom/android/tools/r8/internal/PR;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;
    .locals 5

    invoke-virtual {p3, p4, p1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/PR;->e:Lcom/android/tools/r8/internal/QR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    iget-object v3, p0, Lcom/android/tools/r8/internal/PR;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1, p1, p3, p4, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    :cond_0
    invoke-interface {p2, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object p2, p0, Lcom/android/tools/r8/internal/PR;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/PR;->d:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/internal/PR;->f:Z

    if-nez p2, :cond_3

    iget-object p3, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d1()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    instance-of p3, p2, Lcom/android/tools/r8/internal/jh;

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    instance-of p3, p2, Lcom/android/tools/r8/internal/mE;

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/PR;->b:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    return-object v1
.end method
