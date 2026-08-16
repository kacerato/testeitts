.class public final Lcom/android/tools/r8/internal/N70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/a3;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/N70;->a:Lcom/android/tools/r8/internal/vg;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/N70;->a:Lcom/android/tools/r8/internal/vg;

    new-instance v0, Lcom/android/tools/r8/internal/uN0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/uN0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/N70;->a:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
