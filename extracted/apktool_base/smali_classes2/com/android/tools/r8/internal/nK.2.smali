.class public final Lcom/android/tools/r8/internal/nK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Es0;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Lcom/android/tools/r8/shaking/N;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const-string v1, "Landroid/hardware/camera2/CameraDevice;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/nK;->a:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nK;->b:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nK;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/nK;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/nK;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of p2, p2, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/nK;->b:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance p2, Lcom/android/tools/r8/internal/Dz0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Dz0;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    :cond_1
    return-void
.end method
