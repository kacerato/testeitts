.class public final Lcom/android/tools/r8/internal/X70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/x4;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/vg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/X70;->c:Lcom/android/tools/r8/internal/vg;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method


# virtual methods
.method public final i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/X70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/N11;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/N11;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/X70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/O11;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/O11;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method
