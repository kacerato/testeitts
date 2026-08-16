.class public final Lcom/android/tools/r8/internal/W70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Q40;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W70;->a:Lcom/android/tools/r8/internal/vg;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/W70;->a:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/W70;->a:Lcom/android/tools/r8/internal/vg;

    new-instance v2, Lcom/android/tools/r8/internal/o01;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/o01;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
