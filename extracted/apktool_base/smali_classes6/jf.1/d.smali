.class public final Ljf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3

.field public static final b:Ljava/util/logging/Logger;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/d;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "buffer"

    invoke-static {p0, v3}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    add-int/lit8 v3, p2, -0x6

    const-string v4, "start position"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v3}, Lif/E;->i(ILjava/lang/String;II)Z

    add-int/lit8 v3, p1, 0x6

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    const-string v6, "end position"

    invoke-static {p2, v6, v3, v4}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Matrix3f;

    invoke-direct {p3}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    sub-int v3, p2, p1

    rem-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const-string v6, "numFloats a multiple of 3"

    invoke-static {v4, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {p0, p1, p2, v4}, Ljf/d;->n(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p3}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_4

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v6, p1

    invoke-virtual {p0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    iget v9, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v7, v9

    iget v9, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v8, v9

    iget v9, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v6, v9

    new-array v9, v1, [F

    aput v7, v9, v5

    aput v8, v9, v2

    aput v6, v9, v0

    move v6, v5

    :goto_2
    if-ge v6, v1, :cond_3

    move v7, v6

    :goto_3
    if-ge v7, v1, :cond_2

    invoke-virtual {p3, v6, v7}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v8

    aget v10, v9, v6

    aget v11, v9, v7

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-virtual {p3, v6, v7, v8}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v7, v2

    goto :goto_3

    :cond_2
    add-int/2addr v6, v2

    goto :goto_2

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_4
    sub-int/2addr v3, v2

    int-to-float p0, v3

    :goto_4
    if-ge v5, v1, :cond_6

    move p1, v5

    :goto_5
    if-ge p1, v1, :cond_5

    invoke-virtual {p3, v5, p1}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result p2

    div-float/2addr p2, p0

    invoke-virtual {p3, v5, p1, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p3, p1, v5, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr p1, v2

    goto :goto_5

    :cond_5
    add-int/2addr v5, v2

    goto :goto_4

    :cond_6
    return-object p3
.end method

.method public static b(Ljava/nio/FloatBuffer;III)F
    .locals 8

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "axis index"

    invoke-static {p3, v0}, Lif/E;->a(ILjava/lang/String;)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "numFloats a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    const-wide/16 v3, 0x0

    :goto_1
    if-ge v1, p2, :cond_5

    mul-int/lit8 v0, v1, 0x3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    const/4 v7, 0x2

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    if-eqz p3, :cond_3

    if-eq p3, v2, :cond_2

    if-ne p3, v7, :cond_1

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    goto :goto_2

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    mul-float/2addr v5, v5

    mul-float/2addr v0, v0

    add-float/2addr v5, v0

    goto :goto_2

    :cond_3
    mul-float/2addr v6, v6

    mul-float/2addr v0, v0

    add-float v5, v6, v0

    :goto_2
    float-to-double v5, v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_4

    move-wide v3, v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static c(Ljava/nio/FloatBuffer;II)Ljf/o;
    .locals 4

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    const/16 v0, 0x14

    if-le p2, v0, :cond_1

    new-instance v0, Ljf/q;

    invoke-direct {v0, p2}, Ljf/q;-><init>(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljf/p;

    invoke-direct {v0, p2, v1}, Ljf/p;-><init>(IZ)V

    :goto_1
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_2
    if-ge v1, p2, :cond_2

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p1

    invoke-static {p0, v3, v2}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-interface {v0, v2}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3

    const-string v0, "minimum number of elements"

    invoke-static {p0, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-lt v0, p0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    sget-object p1, Ljf/d;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "capacity={0}"

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Buffer capacity must be greater than or equal to %d."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs e(Ljava/nio/FloatBuffer;[F)V
    .locals 5

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "float values"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p1, v3

    invoke-virtual {p0, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Ljava/nio/IntBuffer;III)I
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-ne v0, p3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "store vector"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p2, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    iput p0, p2, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public static h(Ljava/nio/FloatBuffer;II)Z
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static i(Ljava/nio/FloatBuffer;IIF)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/FloatBuffer;",
            "IIF)",
            "Ljava/util/Set<",
            "Ljf/b;",
            ">;"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "max distance"

    invoke-static {p3, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljf/f;->M(D)D

    move-result-wide v2

    div-int/lit8 p2, p2, 0x3

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    :goto_1
    if-ge v1, p2, :cond_3

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, p1

    invoke-static {p0, v5, p3}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v5, v1, 0x1

    move v6, v5

    :goto_2
    if-ge v6, p2, :cond_2

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v7, p1

    invoke-static {p0, v7, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p3, v0}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v7

    cmpg-double v7, v7, v2

    if-gtz v7, :cond_1

    new-instance v7, Ljf/b;

    invoke-direct {v7, v1, v6}, Ljf/b;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static j(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 10

    const-string v0, "failed to read file "

    invoke-static {p0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, p0

    :goto_0
    const-string v4, "no input stream for file:  "

    if-eqz v3, :cond_5

    const/16 v5, 0x1000

    new-array v6, v5, [B

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gez v9, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {v8}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object p0, v8

    :catch_1
    if-eqz p0, :cond_3

    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v3

    :cond_1
    if-ne v2, v5, :cond_2

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_0

    aget-byte v8, v6, v4

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/2addr v8, v9

    goto :goto_1

    :catch_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file isn\'t readable:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file isn\'t normal:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file doesn\'t exist:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    :goto_1
    if-ge v1, p2, :cond_2

    mul-int/lit8 v0, v1, 0x3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iget v4, p3, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p3, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p3, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p3
.end method

.method public static l(Ljava/nio/FloatBuffer;II)F
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "buffer"

    invoke-static {p0, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v2, "start position"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    const-string v4, "end position"

    invoke-static {p2, v4, p1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    const/4 v2, 0x3

    rem-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "numFloats a multiple of 3"

    invoke-static {v4, v5}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/2addr p2, v2

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_1
    if-ge v6, p2, :cond_2

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v7, p1

    invoke-virtual {p0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    add-int/2addr v7, v0

    invoke-virtual {p0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    new-array v10, v2, [F

    aput v8, v10, v3

    aput v9, v10, v1

    aput v7, v10, v0

    invoke-static {v10}, Ljf/f;->P([F)D

    move-result-wide v7

    cmpl-double v9, v7, v4

    if-lez v9, :cond_1

    move-wide v4, v7

    :cond_1
    add-int/2addr v6, v1

    goto :goto_1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {p3, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p4, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    div-int/lit8 p2, p2, 0x3

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p4, v0}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {p3, v0}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static n(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    add-int/lit8 v0, p2, -0x3

    const-string v1, "start position"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const-string v3, "end position"

    invoke-static {p2, v3, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v1, "numFloats a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    :goto_1
    if-ge v2, p2, :cond_2

    mul-int/lit8 v0, v2, 0x3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p3, v1, v3, v0}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    int-to-float p0, p2

    invoke-virtual {p3, p0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p3
.end method

.method public static o(Ljava/nio/FloatBuffer;II)V
    .locals 4

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    add-int/lit8 v0, p2, -0x3

    const-string v1, "start position"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const-string v3, "end position"

    invoke-static {p2, v3, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "numFloats a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_1
    if-ge v2, p2, :cond_1

    mul-int/lit8 v1, v2, 0x3

    add-int/2addr v1, p1

    invoke-static {p0, v1, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {v0}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    invoke-static {p0, v1, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "vector"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0, p1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x2

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static q(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector4f;)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "vector"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p2, Lcom/jme3/math/Vector4f;->x:F

    invoke-virtual {p0, p1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    iget v1, p2, Lcom/jme3/math/Vector4f;->y:F

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/jme3/math/Vector4f;->z:F

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x3

    iget p2, p2, Lcom/jme3/math/Vector4f;->w:F

    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static r(Ljava/nio/Buffer;)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    :goto_0
    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Ljava/nio/FloatBuffer;IILcom/jme3/math/Quaternion;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p3, v0, v0}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, v2, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static t(Ljava/nio/FloatBuffer;IILcom/jme3/math/Quaternion;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 4"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x4

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p3, v0, v0}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, v2, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static u(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "scale factors"

    invoke-static {p3, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    div-int/lit8 p2, p2, 0x3

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {p3, v0, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, v2, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static v(Ljava/nio/FloatBuffer;II)[F
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    new-array v0, p2, [F

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static w(Ljava/nio/IntBuffer;II)[I
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    new-array v0, p2, [I

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "transform"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    div-int/lit8 p2, p2, 0x3

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p3, v0, v0}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, v2, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const-string v2, "end position"

    invoke-static {p2, v2, p1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "offset vector"

    invoke-static {p3, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    sub-int/2addr p2, p1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "numFloats a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 p2, p2, 0x3

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_1
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, v2, v0}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
