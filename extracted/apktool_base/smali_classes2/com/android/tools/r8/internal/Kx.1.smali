.class public final Lcom/android/tools/r8/internal/Kx;
.super Lcom/android/tools/r8/internal/Jx;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/H5;

.field public final f:Lcom/android/tools/r8/internal/wX;

.field public final g:I

.field public final h:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;ILcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jx;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Kx;->i:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kx;->e:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Kx;->f:Lcom/android/tools/r8/internal/wX;

    iput p3, p0, Lcom/android/tools/r8/internal/Kx;->g:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/Kx;->h:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Iw0;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->f:Lcom/android/tools/r8/internal/wX;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->f:Lcom/android/tools/r8/internal/wX;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/Kx;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ng;->a(ILcom/android/tools/r8/internal/Iw0;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Kx;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/zv0;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Kx;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->f:Lcom/android/tools/r8/internal/wX;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->f:Lcom/android/tools/r8/internal/wX;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/Kx;->g:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->h:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kx;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/Kx;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/aX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kx;->e:Lcom/android/tools/r8/graph/H5;

    iget v2, p0, Lcom/android/tools/r8/internal/Kx;->g:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aX;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
