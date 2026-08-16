.class public Ljf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljf/o;


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;

.field public static final synthetic d:Z


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/q;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "number of vectors"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[Lcom/jme3/math/Vector3f;
    .locals 4

    invoke-virtual {p0}, Ljf/q;->m()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public d(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public e(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ljf/q;->m()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljf/q;->k(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    iget-object v5, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget v7, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v4, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v7, v8

    iget v8, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v4, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v8, v9

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v4, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v6, v9

    new-array v9, v0, [F

    aput v7, v9, v1

    aput v8, v9, v2

    const/4 v7, 0x2

    aput v6, v9, v7

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_1

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_2

    invoke-virtual {p1, v6, v7}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v8

    aget v10, v9, v6

    aget v11, v9, v7

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-virtual {p1, v6, v7, v8}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    add-int/2addr v6, v2

    goto :goto_0

    :cond_3
    sub-int/2addr v3, v2

    int-to-float v3, v3

    :goto_2
    if-ge v1, v0, :cond_5

    move v4, v1

    :goto_3
    if-ge v4, v0, :cond_4

    invoke-virtual {p1, v1, v4}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v1, v4, v5}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v4, v1, v5}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v4, v2

    goto :goto_3

    :cond_4
    add-int/2addr v1, v2

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public f(FFF)V
    .locals 1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object p1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {p1, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p2, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-static {p2, v1}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {p1, v1}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(FFF)Z
    .locals 1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object p1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j()Ljava/nio/FloatBuffer;
    .locals 4

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public k(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Ljf/q;->m()I

    move-result v0

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public l()F
    .locals 6

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-static {v3}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public n()[F
    .locals 7

    invoke-virtual {p0}, Ljf/q;->m()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    mul-int/lit8 v4, v2, 0x3

    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    aput v5, v0, v4

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lcom/jme3/math/Vector3f;->y:F

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x2

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljf/q;->m()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VectorSet[ n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljf/q;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
