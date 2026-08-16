.class public Lcom/android/tools/r8/internal/ix;
.super Lcom/android/tools/r8/internal/xw0;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z = true


# instance fields
.field public final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/pu0;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Z)V

    iput p1, p0, Lcom/android/tools/r8/internal/ix;->p:I

    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Y()Lcom/android/tools/r8/internal/Kw0;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/Fx;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    return-object v0

    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/ix;->q:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/kt;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    return-object v0

    :cond_4
    instance-of v1, v0, Lcom/android/tools/r8/internal/tU;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    return-object v0

    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected imprecise type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/internal/ix;->q:Z

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ix;)Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/ix;->p:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/ix;->p:I

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/ix;->p:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p1

    add-int/2addr p1, v2

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lcom/android/tools/r8/internal/ix;
    .locals 0

    return-object p0
.end method

.method public c0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ix;->p:I

    return v0
.end method

.method public final d(Ljava/util/function/Predicate;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/ix;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
