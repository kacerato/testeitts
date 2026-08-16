.class public Ljf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljf/o;


# static fields
.field public static final e:I = 0x3

.field public static final f:Ljava/util/logging/Logger;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:J

.field public static final synthetic k:Z


# instance fields
.field public final a:Z

.field public b:Ljava/nio/FloatBuffer;

.field public c:[I

.field public d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljf/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/p;->f:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput v0, Ljf/p;->g:I

    sput v0, Ljf/p;->h:I

    sput v0, Ljf/p;->i:I

    const-wide/16 v0, 0x0

    sput-wide v0, Ljf/p;->j:J

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "number of vectors"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iput-boolean p2, p0, Ljf/p;->a:Z

    invoke-virtual {p0, p1}, Ljf/p;->p(I)V

    invoke-virtual {p0}, Ljf/p;->u()V

    return-void
.end method

.method public static q()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Ljf/p;->g:I

    sput v0, Ljf/p;->h:I

    sput v0, Ljf/p;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ljf/p;->j:J

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljf/p;->j:J

    sub-long/2addr v0, v2

    sget v2, Ljf/p;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v2, Ljf/p;->g:I

    const-string v3, "s"

    const-string v5, ""

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget v7, Ljf/p;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Ljf/p;->i:I

    if-ne v8, v6, :cond_1

    move-object v8, v5

    goto :goto_1

    :cond_1
    const-string v8, "es"

    :goto_1
    sget v9, Ljf/p;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Ljf/p;->h:I

    if-ne v10, v6, :cond_2

    move-object v10, v5

    goto :goto_2

    :cond_2
    move-object v10, v3

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p0

    move-object v5, v2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s %d enlargement%s, %d search%s, and %d read%s in %d msec"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static v(FFF)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/lit16 p0, p0, 0x57e

    mul-int/lit8 v0, p0, 0x25

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    mul-int/lit8 p1, p0, 0x25

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-object v0, p0, Ljf/p;->d:[I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Ljf/p;->f(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "toBuffer() has been invoked."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 3
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

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v1, v2, v0}, Ljf/p;->f(FFF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[Lcom/jme3/math/Vector3f;
    .locals 6

    invoke-virtual {p0}, Ljf/p;->m()I

    move-result v0

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x3

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v4, v1, v2

    iget-object v5, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-static {v5, v3, v4}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Ljf/p;->d:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljf/p;->p(I)V

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Ljf/p;->d:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public d(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljf/d;->k(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 3

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljf/d;->a(Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1
.end method

.method public f(FFF)V
    .locals 3

    iget-object v0, p0, Ljf/p;->d:[I

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3}, Ljf/p;->v(FFF)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljf/p;->r(FFFI)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljf/p;->x()V

    iget-object v1, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljf/p;->t()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Ljf/p;->o(FFFI)V

    invoke-virtual {p0}, Ljf/p;->u()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "toBuffer() has been invoked."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    const-string v0, "store maxima"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "store minima"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Ljf/d;->m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public h(FFF)Z
    .locals 1

    invoke-static {p1, p2, p3}, Ljf/p;->v(FFF)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljf/p;->r(FFFI)Z

    move-result p1

    return p1
.end method

.method public i(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Ljf/p;->h(FFF)Z

    move-result p1

    return p1
.end method

.method public j()Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljf/p;->d:[I

    iput-object v0, p0, Ljf/p;->c:[I

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public k(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljf/d;->n(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public l()F
    .locals 3

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljf/d;->l(Ljava/nio/FloatBuffer;II)F

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public n()[F
    .locals 4

    invoke-virtual {p0}, Ljf/p;->m()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final o(FFFI)V
    .locals 3

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Ljf/p;->d:[I

    array-length v1, v1

    invoke-static {p4, v1}, Ljf/f;->K(II)I

    move-result p4

    iget-object v1, p0, Ljf/p;->d:[I

    aget v2, v1, p4

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aput v2, v1, p4

    :cond_0
    iget-object v1, p0, Ljf/p;->c:[I

    aput v0, v1, p4

    iget-object p4, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final p(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Ljf/p;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    new-array v0, p1, [F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Ljf/p;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Ljf/p;->c:[I

    return-void
.end method

.method public final r(FFFI)Z
    .locals 6

    iget-object v0, p0, Ljf/p;->d:[I

    array-length v0, v0

    invoke-static {p4, v0}, Ljf/f;->K(II)I

    move-result p4

    iget-object v0, p0, Ljf/p;->d:[I

    aget v0, v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Ljf/p;->c:[I

    aget p4, v2, p4

    iget-object v2, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    iget-object v2, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, p4, :cond_1

    iget-object v2, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iget-object v4, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    iget-object v5, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_1
    sget p1, Ljf/p;->i:I

    add-int/2addr p1, v3

    sput p1, Ljf/p;->i:I

    sget p1, Ljf/p;->h:I

    sub-int/2addr p4, v0

    add-int/2addr p4, v3

    div-int/lit8 p4, p4, 0x3

    add-int/2addr p1, p4

    sput p1, Ljf/p;->h:I

    :cond_2
    return v1
.end method

.method public final t()V
    .locals 5

    invoke-virtual {p0}, Ljf/p;->m()I

    move-result v0

    invoke-virtual {p0}, Ljf/p;->j()Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljf/p;->p(I)V

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-static {v0, v2, v3}, Ljf/p;->v(FFF)I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Ljf/p;->o(FFFI)V

    goto :goto_0

    :cond_0
    sget v0, Ljf/p;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljf/p;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljf/p;->m()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VectorSet[ n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v4, 0x3

    invoke-static {v5, v6, v3}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljf/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method
