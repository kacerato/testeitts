.class public final LK6/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le8/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "LK6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "LK6/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LK6/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LK6/m;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LK6/m;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LK6/m;->d:Ljava/util/Map;

    return-void
.end method

.method public static g(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    const-class v0, LJAVARuntime/JRDoc_EN;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LJAVARuntime/JRDoc_EN;

    const-class v1, LJAVARuntime/JRDoc_PT;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/JRDoc_PT;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt-br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, LJAVARuntime/JRDoc_PT;->value()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, LJAVARuntime/JRDoc_EN;->value()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const-class v0, LJAVARuntime/JRDoc_EN;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LJAVARuntime/JRDoc_EN;

    const-class v1, LJAVARuntime/JRDoc_PT;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/JRDoc_PT;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt-br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, LJAVARuntime/JRDoc_PT;->value()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, LJAVARuntime/JRDoc_EN;->value()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK6/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    const v3, 0x7f07016d

    const/4 v4, 0x1

    const-string v5, "type"

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    new-instance v6, LK6/f;

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, LK6/f;->b:Ljava/lang/String;

    iput-object v5, v6, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, LK6/f;->d:Ljava/lang/String;

    iput-object v5, v6, LK6/f;->e:Ljava/lang/String;

    iput v3, v6, LK6/f;->n:I

    iput-boolean v4, v6, LK6/f;->m:Z

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    new-instance v2, LK6/f;

    invoke-virtual {v1}, Ld8/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ld8/r;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ld8/r;->d()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, LK6/f;->b:Ljava/lang/String;

    iput-object v5, v2, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ld8/r;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LK6/f;->d:Ljava/lang/String;

    iput-object v5, v2, LK6/f;->e:Ljava/lang/String;

    iput v3, v2, LK6/f;->n:I

    iput-boolean v4, v2, LK6/f;->m:Z

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loadedClassList",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld8/r;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LK6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LK6/m;->c(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, LK6/m;->a(Ljava/util/List;)V

    invoke-static {p1}, LK6/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loadedClassList",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld8/r;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LK6/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_0

    iget-object p1, p0, LK6/m;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_1

    invoke-static {p2}, Ld8/k;->u(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-class p1, LJAVARuntime/Component;

    :cond_2
    invoke-virtual {p0, p1, v0}, LK6/m;->e(Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld8/r;

    iget-object p2, p2, Ld8/r;->c:Ljava/lang/Class;

    iget-object v1, p0, LK6/m;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LK6/m;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, LK6/m;->e(Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public d(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "isStatic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/List<",
            "LK6/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, LK6/m;->f(Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, LK6/m;->e(Ljava/lang/Class;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public final e(Ljava/lang/Class;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "LK6/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, LK6/m;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_10

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_10

    invoke-virtual {v0, v4}, LK6/m;->i(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v5, v0, LK6/m;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le8/d;

    if-nez v5, :cond_3

    new-instance v5, Le8/d;

    invoke-direct {v5}, Le8/d;-><init>()V

    invoke-virtual {v5, v4}, Le8/d;->c(Ljava/lang/Class;)V

    iget-object v6, v0, LK6/m;->b:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Le8/d;->b()I

    move-result v8

    const v9, 0x7f070175

    const-string v10, "field"

    const-string v11, " : "

    const-string v12, "instance"

    const/4 v13, 0x1

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Le8/d;->a(I)Le8/a;

    move-result-object v8

    iget-boolean v14, v8, Le8/a;->e:Z

    if-nez v14, :cond_5

    new-instance v14, LK6/f;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Le8/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Le8/a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v6, v11, v15}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v14, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v14, LK6/f;->e:Ljava/lang/String;

    iput-boolean v13, v14, LK6/f;->j:Z

    iput v9, v14, LK6/f;->n:I

    iget-object v6, v8, Le8/a;->b:Le8/b;

    if-eqz v6, :cond_4

    iget-object v6, v6, Le8/b;->c:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    invoke-static {v6}, LK6/m;->h(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iput-object v6, v14, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    const-class v8, LH6/g;

    if-ge v7, v6, :cond_9

    aget-object v14, v5, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    move-object/from16 v17, v5

    move v5, v9

    goto :goto_4

    :cond_8
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v14, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-static {v14}, LK6/m;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    new-instance v15, LK6/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v5

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v9, v13, v5}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v15, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v15, LK6/f;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v15, LK6/f;->j:Z

    const v5, 0x7f070175

    iput v5, v15, LK6/f;->n:I

    iput-object v8, v15, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v9, v5

    move-object/from16 v5, v17

    const/4 v13, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_f

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_a
    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-nez v10, :cond_a

    new-instance v10, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const-string v13, ""

    move-object/from16 v16, v5

    move-object v14, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_6
    array-length v5, v11

    if-ge v15, v5, :cond_d

    aget-object v5, v11, v15

    if-lez v15, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v15, :cond_e

    const-string v5, "void"

    :cond_e
    invoke-static {v9}, LK6/m;->h(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ") -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v2, LK6/f;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v15, v1}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LK6/f;->b:Ljava/lang/String;

    const-string v1, "method"

    iput-object v1, v2, LK6/f;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v2, LK6/f;->e:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, LK6/f;->j:Z

    iput-boolean v1, v2, LK6/f;->k:Z

    iput-boolean v13, v2, LK6/f;->l:Z

    iget-object v5, v2, LK6/f;->g:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v5, 0x7f070172

    iput v5, v2, LK6/f;->n:I

    iput-object v11, v2, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_10
    invoke-static {v3}, LK6/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, LK6/m;->c:Ljava/util/Map;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final f(Ljava/lang/Class;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "LK6/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, LK6/m;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_11

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_11

    invoke-virtual {v0, v4}, LK6/m;->i(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v5, v0, LK6/m;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le8/d;

    if-nez v5, :cond_3

    new-instance v5, Le8/d;

    invoke-direct {v5}, Le8/d;-><init>()V

    invoke-virtual {v5, v4}, Le8/d;->c(Ljava/lang/Class;)V

    iget-object v6, v0, LK6/m;->b:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Le8/d;->b()I

    move-result v8

    const-string v9, "field"

    const-string v10, " : "

    const v11, 0x7f070175

    const-string v12, "static"

    const/4 v13, 0x1

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Le8/d;->a(I)Le8/a;

    move-result-object v8

    iget-boolean v14, v8, Le8/a;->e:Z

    if-eqz v14, :cond_5

    new-instance v14, LK6/f;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Le8/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Le8/a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v6, v10, v15}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v14, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v8}, Le8/a;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v14, LK6/f;->e:Ljava/lang/String;

    iput-boolean v13, v14, LK6/f;->j:Z

    iput v11, v14, LK6/f;->n:I

    iget-object v6, v8, Le8/a;->b:Le8/b;

    if-eqz v6, :cond_4

    iget-object v6, v6, Le8/b;->c:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    invoke-static {v6}, LK6/m;->h(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iput-object v6, v14, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    const-class v8, LH6/g;

    if-ge v7, v6, :cond_a

    aget-object v14, v5, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v17, v5

    move v5, v11

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    if-nez v15, :cond_9

    invoke-static {v14}, LK6/m;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    new-instance v15, LK6/f;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v11, v13, v14}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "enum"

    iput-object v11, v15, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v15, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v15, LK6/f;->e:Ljava/lang/String;

    const/4 v11, 0x1

    iput-boolean v11, v15, LK6/f;->j:Z

    const v11, 0x7f070175

    iput v11, v15, LK6/f;->n:I

    iput-object v8, v15, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v17, v5

    const v5, 0x7f070175

    goto :goto_4

    :cond_9
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v14, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-static {v14}, LK6/m;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LK6/f;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v5

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v13, v15, v5}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v11, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v11, LK6/f;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v11, LK6/f;->j:Z

    const v5, 0x7f070175

    iput v5, v11, LK6/f;->n:I

    iput-object v8, v11, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v11, v5

    move-object/from16 v5, v17

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_10

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-nez v10, :cond_b

    new-instance v10, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const-string v13, ""

    move-object/from16 v16, v5

    move-object v14, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_6
    array-length v5, v11

    if-ge v15, v5, :cond_e

    aget-object v5, v11, v15

    if-lez v15, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v15, :cond_f

    const-string v5, "void"

    :cond_f
    invoke-static {v9}, LK6/m;->h(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ") -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v2, LK6/f;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v15, v1}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LK6/f;->b:Ljava/lang/String;

    const-string v1, "method"

    iput-object v1, v2, LK6/f;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LK6/f;->d:Ljava/lang/String;

    iput-object v12, v2, LK6/f;->e:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, LK6/f;->j:Z

    iput-boolean v1, v2, LK6/f;->k:Z

    iput-boolean v13, v2, LK6/f;->l:Z

    iget-object v5, v2, LK6/f;->g:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v5, 0x7f070172

    iput v5, v2, LK6/f;->n:I

    iput-object v11, v2, LK6/f;->o:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_11
    invoke-static {v3}, LK6/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, LK6/m;->d:Ljava/util/Map;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final i(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-class v0, LH6/g;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
