.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:[Ljava/lang/Object;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$method",
            "val$args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;)LJAVARuntime/Component;

    move-result-object v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;)LJAVARuntime/Component;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    return v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, LJ4/d;->O1()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v3, "---------------"

    invoke-static {v3}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call function failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$b;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "Unknown"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, LJ4/d;->w2(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LJ4/d;->W1(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-static {}, LJ4/d;->E1()V

    :goto_2
    return v0
.end method
