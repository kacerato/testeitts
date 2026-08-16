.class public final Lcom/android/tools/r8/internal/O70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/F3;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/O70;->a:Lcom/android/tools/r8/internal/vg;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/O70;->a:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/mP0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/mP0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/O70;->a:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method
