.class public final Lcom/android/tools/r8/internal/gZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gZ;->a:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gZ;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gZ;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/gZ;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/gZ;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Tb1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/Tb1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->h(Ljava/util/function/Consumer;)V

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/gZ;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/gZ;-><init>(Lcom/android/tools/r8/graph/E0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/sK;
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/gZ;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Rb1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Rb1;-><init>()V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/rK;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/rK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/Sb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sb1;-><init>()V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/sK;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/sK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V

    return-object v1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gZ;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gZ;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Ub1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ub1;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
