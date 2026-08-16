.class public Lyc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:Lyc/a$a;

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    sget-object v0, Lyc/a$a;->FLOAT32:Lyc/a$a;

    invoke-direct {p0, p1, v0}, Lyc/a;-><init>(ILyc/a$a;)V

    return-void
.end method

.method public constructor <init>(ILyc/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "precision"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lyc/a;->b:I

    if-lez p1, :cond_1

    .line 4
    iput p1, p0, Lyc/a;->a:I

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lyc/a$a;->FLOAT32:Lyc/a$a;

    :cond_0
    iput-object p2, p0, Lyc/a;->c:Lyc/a$a;

    mul-int/lit8 p1, p1, 0x4

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lyc/a;->d:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lyc/a;->k(F)V

    .line 10
    invoke-virtual {p0, v0}, Lyc/a;->E(I)V

    return-void

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capacity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 12
    sget-object v0, Lyc/a$a;->FLOAT32:Lyc/a$a;

    invoke-direct {p0, p1, v0}, Lyc/a;-><init>([FLyc/a$a;)V

    return-void
.end method

.method public constructor <init>([FLyc/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "precision"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lyc/a;->b:I

    if-eqz p1, :cond_2

    .line 15
    array-length v1, p1

    if-lez v1, :cond_1

    .line 16
    array-length v1, p1

    iput v1, p0, Lyc/a;->a:I

    if-nez p2, :cond_0

    .line 17
    sget-object p2, Lyc/a$a;->FLOAT32:Lyc/a$a;

    :cond_0
    iput-object p2, p0, Lyc/a;->c:Lyc/a$a;

    mul-int/lit8 v1, v1, 0x4

    .line 18
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lyc/a;->d:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    .line 21
    iput v0, p0, Lyc/a;->b:I

    .line 22
    invoke-virtual {p0, p1}, Lyc/a;->O([F)V

    .line 23
    iput v0, p0, Lyc/a;->b:I

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Array is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid array"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lyc/a;->b:I

    return v0
.end method

.method public C()Lyc/a$a;
    .locals 1

    iget-object v0, p0, Lyc/a;->c:Lyc/a$a;

    return-object v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lyc/a;->b:I

    iget v1, p0, Lyc/a;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lyc/a;->b:I

    return-void
.end method

.method public F(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    iget v0, p0, Lyc/a;->b:I

    invoke-virtual {p0, v0}, Lyc/a;->b(I)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    iget v1, p0, Lyc/a;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget p1, p0, Lyc/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyc/a;->b:I

    return-void
.end method

.method public G(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    iget v0, p0, Lyc/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lyc/a;->a:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lyc/a;->S(IFF)V

    iget p1, p0, Lyc/a;->b:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lyc/a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position + 1 cant be >= capacity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lyc/a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") vs ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lyc/a;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    iget v0, p0, Lyc/a;->b:I

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lyc/a;->a:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lyc/a;->T(IFFF)V

    iget p1, p0, Lyc/a;->b:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lyc/a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lyc/a;->b:I

    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") vs ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lyc/a;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lyc/a;->G(FF)V

    return-void
.end method

.method public J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public K(Lcom/jme3/math/Vector2f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0, p1}, Lyc/a;->G(FF)V

    return-void
.end method

.method public L(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public M(Lyc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lyc/a;->b:I

    invoke-virtual {p0, v0, p1}, Lyc/a;->Y(ILyc/a;)V

    iget v0, p0, Lyc/a;->b:I

    iget p1, p1, Lyc/a;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lyc/a;->b:I

    return-void
.end method

.method public N(Lyc/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "count"
        }
    .end annotation

    iget v0, p0, Lyc/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lyc/a;->Z(ILyc/a;II)V

    iget p1, p0, Lyc/a;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lyc/a;->b:I

    return-void
.end method

.method public O([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    if-eqz p1, :cond_1

    iget v0, p0, Lyc/a;->b:I

    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lyc/a;->a:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lyc/a;->b0(I[FII)V

    iget v0, p0, Lyc/a;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lyc/a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P([S)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    if-eqz p1, :cond_2

    iget v0, p0, Lyc/a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lyc/a;->a:I

    if-ge v0, v1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lyc/a;->F(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget v0, p0, Lyc/a;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lyc/a;->l(IFI)V

    iget p1, p0, Lyc/a;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lyc/a;->b:I

    return-void
.end method

.method public R(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    invoke-virtual {p0, p1}, Lyc/a;->b(I)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public S(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lyc/a;->d(II)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public T(IFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lyc/a;->d(II)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public U(IFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lyc/a;->d(II)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p3, p1, 0x2

    invoke-virtual {p2, p3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p2, p1, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public V(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lyc/a;->T(IFFF)V

    return-void
.end method

.method public W(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector4"
        }
    .end annotation

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lyc/a;->U(IFFFF)V

    return-void
.end method

.method public X(ILcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lyc/a;->T(IFFF)V

    return-void
.end method

.method public Y(ILyc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other"
        }
    .end annotation

    iget v0, p2, Lyc/a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lyc/a;->Z(ILyc/a;II)V

    return-void
.end method

.method public Z(ILyc/a;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    if-eqz p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_2

    iget v0, p2, Lyc/a;->a:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p4}, Lyc/a;->d(II)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > other.capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lyc/a;->a:I

    return v0
.end method

.method public a0(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lyc/a;->b0(I[FII)V

    return-void
.end method

.method public final b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lyc/a;->a:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index cant be >= capacity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") vs ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lyc/a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(I[FII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    const-string v0, "values can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p4}, Lyc/a;->d(II)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public c0([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lyc/a;->b0(I[FII)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->e()Lyc/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "count"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iget p2, p0, Lyc/a;->a:I

    if-ge p1, p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") >= ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lyc/a;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d0([FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lyc/a;->b0(I[FII)V

    return-void
.end method

.method public e()Lyc/a;
    .locals 3

    new-instance v0, Lyc/a;

    iget v1, p0, Lyc/a;->a:I

    iget-object v2, p0, Lyc/a;->c:Lyc/a$a;

    invoke-direct {v0, v1, v2}, Lyc/a;-><init>(ILyc/a$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyc/a;->E(I)V

    invoke-virtual {v0, p0}, Lyc/a;->M(Lyc/a;)V

    invoke-virtual {v0, v1}, Lyc/a;->E(I)V

    return-object v0
.end method

.method public e0(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/a;->R(IF)V

    return-void
.end method

.method public f(Lyc/a;)Lyc/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lyc/a;

    invoke-virtual {p0}, Lyc/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lyc/a;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lyc/a;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyc/a;->E(I)V

    invoke-virtual {v0, p0}, Lyc/a;->M(Lyc/a;)V

    invoke-virtual {v0, p1}, Lyc/a;->M(Lyc/a;)V

    invoke-virtual {v0, v1}, Lyc/a;->E(I)V

    return-object v0
.end method

.method public f0(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    double-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/a;->R(IF)V

    return-void
.end method

.method public g(Lyc/a;)Lyc/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->f(Lyc/a;)Lyc/a;

    move-result-object p1

    return-object p1
.end method

.method public g0(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lyc/a;->R(IF)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public h0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/a;->R(IF)V

    return-void
.end method

.method public i(Lyc/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lyc/a;->a:I

    iget v2, p0, Lyc/a;->a:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lyc/a;->a:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lyc/a;->n(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lyc/a;->n(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public i0(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/a;->R(IF)V

    return-void
.end method

.method public j(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public j0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lyc/a;->b:I

    return-void
.end method

.method public k(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lyc/a;->a:I

    invoke-virtual {p0, v0, p1, v1}, Lyc/a;->l(IFI)V

    return-void
.end method

.method public k0()[F
    .locals 3

    iget v0, p0, Lyc/a;->a:I

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v0}, Lyc/a;->q(I[FII)V

    return-object v1
.end method

.method public l(IFI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    invoke-virtual {p0, p1, p3}, Lyc/a;->d(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    add-int v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l0()Ljava/nio/FloatBuffer;
    .locals 1

    invoke-virtual {p0}, Lyc/a;->A()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public m([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lyc/a;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lyc/a;->r([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    invoke-virtual {p0, p1}, Lyc/a;->b(I)V

    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public o(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lyc/a;->d(II)V

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector3 can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lyc/a;->q(I[FII)V

    return-void
.end method

.method public q(I[FII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/a;->c()V

    const-string v0, "values can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p4}, Lyc/a;->d(II)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lyc/a;->q(I[FII)V

    return-void
.end method

.method public s([FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lyc/a;->q(I[FII)V

    return-void
.end method

.method public t(I)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    float-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method public u(I)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public v(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    return p1
.end method

.method public w(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public x(I)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/a;->n(I)F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lyc/a;->a:I

    return v0
.end method

.method public z()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lyc/a;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method
