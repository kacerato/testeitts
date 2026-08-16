.class public LDc/c;
.super Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final b:I = 0x400

.field public static final c:I = 0x1fffff

.field public static final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Ljava/lang/reflect/Method;

.field public static final h:Ljava/lang/reflect/Method;

.field public static final i:Ljava/lang/reflect/Field;

.field public static final j:Ljava/lang/reflect/Field;

.field public static final k:Ljava/lang/reflect/Field;

.field public static final synthetic l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-static {v0}, LDc/c;->e(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, LDc/c;->d:Ljava/lang/reflect/Constructor;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    const-string v3, "createShape"

    invoke-static {v2, v3, v0}, LDc/c;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LDc/c;->e:Ljava/lang/reflect/Method;

    const-class v0, Lcom/jme3/math/Vector3f;

    filled-new-array {v1, v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setOptimizedBvh"

    invoke-static {v2, v3, v0}, LDc/c;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LDc/c;->f:Ljava/lang/reflect/Method;

    const-string v0, "setNativeIdNotTracked"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/jme3/bullet/NativePhysicsObject;

    invoke-static {v3, v0, v1}, LDc/c;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LDc/c;->g:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "unassignNativeObject"

    invoke-static {v3, v1, v0}, LDc/c;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LDc/c;->h:Ljava/lang/reflect/Method;

    const-string v0, "bvh"

    invoke-static {v2, v0}, LDc/c;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, LDc/c;->i:Ljava/lang/reflect/Field;

    const-string v0, "nativeMesh"

    invoke-static {v2, v0}, LDc/c;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, LDc/c;->j:Ljava/lang/reflect/Field;

    const-string v0, "useCompression"

    invoke-static {v2, v0}, LDc/c;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, LDc/c;->k:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    return-void
.end method

.method public constructor <init>(JZLDc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bvhId",
            "useCompression",
            "mesh"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>()V

    .line 13
    const-string v0, "bvhId"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    .line 14
    const-string v0, "mesh"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    invoke-virtual {p4}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, LDc/c;->i(JZLDc/a;)V

    return-void
.end method

.method public varargs constructor <init>(JZ[Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bvhId",
            "useCompression",
            "submeshes"
        }
    .end annotation

    .line 17
    invoke-static {p4}, LDc/c;->a([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)LDc/a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, LDc/c;-><init>(JZLDc/a;)V

    return-void
.end method

.method public constructor <init>(LDc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, LDc/c;-><init>(ZLDc/a;)V

    return-void
.end method

.method public constructor <init>(ZLDc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCompression",
            "mesh"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>()V

    .line 5
    const-string v0, "mesh"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 7
    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 8
    iput-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 9
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCompression",
            "submeshes"
        }
    .end annotation

    .line 11
    invoke-static {p2}, LDc/c;->a([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)LDc/a;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LDc/c;-><init>(ZLDc/a;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submeshes"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, LDc/c;-><init>(Z[Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    return-void
.end method

.method private static varargs a([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)LDc/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submeshes"
        }
    .end annotation

    const-string v0, "submeshes"

    invoke-static {p0, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, LDc/a;

    invoke-direct {v0}, LDc/a;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(LDc/a;)[Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "mesh must contain at least one submesh"

    invoke-static {v2, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    new-array v2, v0, [Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, LDc/a;->b(I)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static e(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;",
            ">;)",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static j(ZZJ)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "useCompression",
            "buildBvh",
            "meshId"
        }
    .end annotation

    :try_start_0
    sget-object v0, LDc/c;->e:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static k(JJLcom/jme3/math/Vector3f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shapeId",
            "bvhId",
            "scaleVector"
        }
    .end annotation

    :try_start_0
    sget-object v0, LDc/c;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1, p4}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static m(J)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bvhId"
        }
    .end annotation

    :try_start_0
    sget-object v0, LDc/c;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    sget-object v1, LDc/c;->g:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static o(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "target",
            "value"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public c()LDc/c;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDc/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LDc/c;->c()LDc/c;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cloner",
            "original"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    check-cast p2, LDc/a;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    return-void
.end method

.method public final i(JZLDc/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bvhId",
            "useCompression",
            "mesh"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, LDc/c;->j:Ljava/lang/reflect/Field;

    invoke-static {v3, p0, p4}, LDc/c;->o(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, LDc/c;->k:Ljava/lang/reflect/Field;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, p0, v4}, LDc/c;->o(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-static {p3, v2, v3, v4}, LDc/c;->j(ZZJ)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0, p3, p4}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    invoke-static {p1, p2}, LDc/c;->m(J)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    move-result-object v3

    sget-object v4, LDc/c;->i:Ljava/lang/reflect/Field;

    invoke-static {v4, p0, v3}, LDc/c;->o(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-static {p3, p4, p1, p2, v3}, LDc/c;->k(JJLcom/jme3/math/Vector3f;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    move-wide p3, v0

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_0

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    :cond_0
    throw p1
.end method
