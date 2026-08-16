.class public final Lcom/android/tools/r8/graph/m4;
.super Lcom/android/tools/r8/internal/hc0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/j4;

.field public final c:Lcom/android/tools/r8/graph/l1;

.field public final d:Lcom/android/tools/r8/graph/H3$e;

.field public e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/hc0;-><init>(ILcom/android/tools/r8/internal/hc0;)V

    iput-object v1, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v1, p1, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v2, v1, p3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/graph/m4;->c:Lcom/android/tools/r8/graph/l1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/m4;->b:Lcom/android/tools/r8/graph/j4;

    iget-object p3, p1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p3, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p2, p4, p3, v0, p1}, Lcom/android/tools/r8/graph/H3;->b(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/m4;->d:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/m4;->b:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/ne;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/ne;-><init>()V

    .line 6
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/m4;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/m4;->b:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->r:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/P5;

    iget-object v2, p0, Lcom/android/tools/r8/graph/m4;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v3, p0, Lcom/android/tools/r8/graph/m4;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 9
    iget-object v4, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/graph/m4;->e:Ljava/util/ArrayList;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/graph/P5;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
