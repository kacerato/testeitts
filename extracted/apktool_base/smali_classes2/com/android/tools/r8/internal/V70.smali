.class public final Lcom/android/tools/r8/internal/V70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/kZ;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/vg;

.field public final d:Lcom/android/tools/r8/internal/kZ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/kZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/V70;->d:Lcom/android/tools/r8/internal/kZ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/L70;->f()Lcom/android/tools/r8/internal/L70;

    move-result-object p0

    .line 15
    new-instance p2, Lcom/android/tools/r8/internal/jE0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/jE0;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->d:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p4, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    .line 4
    invoke-interface {p4}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/IY0;

    invoke-direct {v2, p3, p2}, Lcom/android/tools/r8/internal/IY0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/JY0;

    invoke-direct {v1, p3, p2}, Lcom/android/tools/r8/internal/JY0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->d:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->d:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/V70;->d:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method
