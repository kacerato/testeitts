.class public LNc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNc/c$a;

    invoke-direct {v0}, LNc/c$a;-><init>()V

    sput-object v0, LNc/c;->a:Ljava/lang/ThreadLocal;

    new-instance v0, LNc/c$b;

    invoke-direct {v0}, LNc/c$b;-><init>()V

    sput-object v0, LNc/c;->b:Ljava/lang/ThreadLocal;

    new-instance v0, LNc/c$c;

    invoke-direct {v0}, LNc/c$c;-><init>()V

    sput-object v0, LNc/c;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [F

    invoke-static {p0, v0}, LNc/c;->b([F[F)V

    return-object v0
.end method

.method public static b([F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "out"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static c([F[F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d([F[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "output"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {p1, v0, p0, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method public static e([F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "valueB"
        }
    .end annotation

    sget-object v0, LNc/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [F

    invoke-static {p0, v3}, LNc/c;->b([F[F)V

    sget-object v0, LNc/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [F

    invoke-static {p1, v5}, LNc/c;->b([F[F)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static f([F[F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "valueA",
            "valueB"
        }
    .end annotation

    sget-object v0, LNc/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [F

    invoke-static {p1, v3}, LNc/c;->b([F[F)V

    sget-object p1, LNc/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [F

    invoke-static {p2, v5}, LNc/c;->b([F[F)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static g([FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "rot"
        }
    .end annotation

    sget-object v0, LNc/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LNc/b;->Z(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;[FZ)V

    invoke-static {p0, p0, v0}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static h([FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "rot",
            "leftHanded"
        }
    .end annotation

    sget-object v0, LNc/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {p1, v0, p2}, LNc/b;->Z(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;[FZ)V

    invoke-static {p0, p0, v0}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static i([FLjavax/vecmath/Quat4f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "rot"
        }
    .end annotation

    sget-object v0, LNc/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LNc/b;->a0(Ljavax/vecmath/Quat4f;[FZ)V

    invoke-static {p0, p0, v0}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static j([FLjavax/vecmath/Quat4f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "rot",
            "leftHanded"
        }
    .end annotation

    sget-object v0, LNc/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {p1, v0, p2}, LNc/b;->a0(Ljavax/vecmath/Quat4f;[FZ)V

    invoke-static {p0, p0, v0}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static k([F[FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "tmpRotMatrix",
            "rot"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, LNc/b;->Z(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;[FZ)V

    invoke-static {p0, p0, p1}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static l([F[FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "tmpRotMatrix",
            "rot",
            "leftHanded"
        }
    .end annotation

    invoke-static {p2, p1, p3}, LNc/b;->Z(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;[FZ)V

    invoke-static {p0, p0, p1}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static m([F[FLjavax/vecmath/Quat4f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "tmpRotMatrix",
            "rot"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, LNc/b;->a0(Ljavax/vecmath/Quat4f;[FZ)V

    invoke-static {p0, p0, p1}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static n([F[FLjavax/vecmath/Quat4f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "tmpRotMatrix",
            "rot",
            "leftHanded"
        }
    .end annotation

    invoke-static {p2, p1, p3}, LNc/b;->a0(Ljavax/vecmath/Quat4f;[FZ)V

    invoke-static {p0, p0, p1}, LNc/c;->f([F[F[F)V

    return-void
.end method

.method public static o([FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p1, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static p([FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "x",
            "y",
            "z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static q([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "vector3"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static r([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-static {p0, v0}, LNc/c;->g([FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v0, v0}, LNc/c;->p([FFFF)V

    return-void
.end method

.method public static s([F)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t([F)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u([FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p1, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static v([FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "x",
            "y",
            "z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static w([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "vector3"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
