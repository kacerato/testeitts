.class public Lxn/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final c:Lxn/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertices",
            "faces"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lxn/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 20
    iput-object p2, p0, Lxn/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 21
    new-instance v0, Lxn/a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/16 v2, 0x20

    invoke-direct {v0, p1, p2, v1, v2}, Lxn/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    iput-object v0, p0, Lxn/e;->c:Lxn/a;

    return-void
.end method

.method public constructor <init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "verticesBuffer",
            "indicesBuffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    .line 3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    .line 4
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p1, v2

    invoke-static {p1}, LNc/b;->D(F)F

    move-result p1

    float-to-int p1, p1

    .line 5
    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    .line 7
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    move v4, p1

    :goto_0
    if-ge v4, v3, :cond_0

    mul-int/lit8 v5, v4, 0x3

    .line 8
    :try_start_0
    invoke-virtual {p2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    add-int/lit8 v6, v5, 0x1

    .line 9
    invoke-virtual {p2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    add-int/lit8 v5, v5, 0x2

    .line 10
    invoke-virtual {p2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 12
    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    .line 15
    iput-object v2, p0, Lxn/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 16
    iput-object p3, p0, Lxn/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 17
    new-instance p1, Lxn/a;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    const/16 v0, 0x20

    invoke-direct {p1, v2, p3, p2, v0}, Lxn/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    iput-object p1, p0, Lxn/e;->c:Lxn/a;

    return-void
.end method


# virtual methods
.method public a([F[F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/List<",
            "Lxn/a$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxn/e;->c:Lxn/a;

    invoke-virtual {v0, p1, p2}, Lxn/a;->c([F[F)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lxn/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lxn/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method
