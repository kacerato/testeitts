.class public final Lcom/android/tools/r8/graph/z4;
.super Lcom/android/tools/r8/graph/F0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/y4;


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/F0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/z4;->v()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/graph/z4;
    .locals 0

    return-object p0
.end method

.method public final v()Lcom/android/tools/r8/graph/u2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    sget-boolean v1, Lcom/android/tools/r8/graph/z4;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    return-object v0
.end method
