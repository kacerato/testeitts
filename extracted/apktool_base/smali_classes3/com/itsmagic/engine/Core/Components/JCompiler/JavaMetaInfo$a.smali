.class public Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Class;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Ljava/lang/reflect/Field;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leb/g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Boolean;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classAddress"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->d:Ljava/util/List;

    new-instance v0, LLc/a;

    invoke-direct {v0}, LLc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    return-void
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "methodName"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_1

    const-class v1, LJAVARuntime/Component;

    if-eq p0, v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :catch_2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()[Ljava/lang/reflect/Field;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->c(Ljava/util/List;Ljava/lang/Class;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->c:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->h(Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leb/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->e:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    :goto_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eq v0, v1, :cond_2

    const-class v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Leb/g;

    invoke-direct {v4}, Leb/g;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Leb/g;->f(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Leb/g;->e(Ljava/lang/reflect/Field;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LJ4/d;->E1()V

    invoke-static {v0}, LJ4/d;->c2(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->h(Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a()[Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    const-string v1, "parallelRepeat"

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->f(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->a:Ljava/lang/Class;

    const-string v1, "disabledParallelRepeat"

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->f(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->f:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v5, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->g:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    const-class v0, LJAVARuntime/Component;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo$a;->h(Ljava/lang/Class;)V

    :cond_3
    return-void
.end method
