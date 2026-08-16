.class public final Lcom/android/tools/r8/internal/ex;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ex;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ex;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ex;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/AA;->b(Lcom/android/tools/r8/graph/y;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ex;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/AA;->a(Lcom/android/tools/r8/graph/y;)V

    goto :goto_3

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/ex;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ex;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/AA;->b(Lcom/android/tools/r8/graph/y;)V

    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    sget-boolean v1, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    iput-object v0, p1, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    :goto_3
    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "FinalizeMergeGroup"

    return-object v0
.end method
