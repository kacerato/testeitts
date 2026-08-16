.class public LDb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDb/a$c;,
        LDb/a$d;,
        LDb/a$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/lang/reflect/Method;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LDb/a$d;",
            "LDb/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    const-string v3, "finalizeNative"

    invoke-static {v2, v3, v1}, LDb/a;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, LDb/a;->d:Ljava/lang/reflect/Method;

    const-class v1, [B

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "deSerialize"

    invoke-static {v2, v3, v1}, LDb/a;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, LDb/a;->e:Ljava/lang/reflect/Method;

    invoke-static {v2}, LDb/a;->g(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, LDb/a;->f:Ljava/lang/reflect/Constructor;

    const-string v1, "setNativeIdNotTracked"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/jme3/bullet/NativePhysicsObject;

    invoke-static {v2, v1, v0}, LDb/a;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LDb/a;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LDb/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(LDb/a;LDb/a$c;)V
    .locals 0

    invoke-virtual {p0, p1}, LDb/a;->k(LDb/a$c;)V

    return-void
.end method

.method public static synthetic b(J)V
    .locals 0

    invoke-static {p0, p1}, LDb/a;->i(J)V

    return-void
.end method

.method public static synthetic c(LDc/c;)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    .locals 0

    invoke-static {p0}, LDb/a;->f(LDc/c;)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public static f(LDc/c;)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempShape"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->serializeBvh()[B

    move-result-object p0

    :try_start_0
    sget-object v0, LDb/a;->e:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    sget-object v0, LDb/a;->f:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    sget-object v1, LDb/a;->g:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

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
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
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

.method public static i(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bvhId"
        }
    .end annotation

    :try_start_0
    sget-object v0, LDb/a;->d:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

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


# virtual methods
.method public d(FFF)LDb/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    iget-object v0, p0, LDb/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, LDb/a$d;

    invoke-direct {v0, p1, p2, p3}, LDb/a$d;-><init>(FFF)V

    iget-object p1, p0, LDb/a;->b:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LDb/a;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDb/a$c;

    if-nez p2, :cond_1

    new-instance p2, LDb/a$c;

    iget-object p3, p0, LDb/a;->a:Ljava/util/List;

    invoke-direct {p2, p0, v0, p3, v1}, LDb/a$c;-><init>(LDb/a;LDb/a$d;Ljava/util/List;LDb/a$a;)V

    iget-object p3, p0, LDb/a;->b:Ljava/util/Map;

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-object p2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, LDb/a;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LDb/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDb/a$c;

    invoke-static {v2}, LDb/a$c;->a(LDb/a$c;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LDb/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LDb/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final k(LDb/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, LDb/a;->b:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, LDb/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, LDb/a$c;->f()LDb/a$d;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, LDb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    invoke-static {p1}, LIb/k;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LDb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_0
    iget-object p1, p0, LDb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDc/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, LDb/a;->e()V

    iput-object p1, p0, LDb/a;->a:Ljava/util/List;

    return-void
.end method
