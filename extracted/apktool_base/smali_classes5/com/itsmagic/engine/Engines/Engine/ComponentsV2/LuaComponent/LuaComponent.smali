.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final K:Ljava/lang/String; = "LuaComponent"

.field public static final L:Ljava/lang/Class;


# instance fields
.field public E:Ljava/lang/String;

.field public F:Lb9/d;

.field public G:Z

.field public H:Lorg/luaj/vm2/Globals;

.field public I:Lorg/luaj/vm2/LuaValue;

.field public J:LJAVARuntime/LuaComponent;

.field private className:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public globalVariables:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->L:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "LuaComponent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    .line 6
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    .line 7
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 8
    const-string v0, "LuaComponent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    .line 10
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    .line 12
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    .line 13
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    .line 14
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "globalVariables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;)V"
        }
    .end annotation

    .line 15
    const-string v0, "LuaComponent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    .line 19
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    .line 20
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method private build()V
    .locals 3

    :try_start_0
    invoke-static {}, Lb9/c;->g()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    invoke-virtual {v1}, Lb9/d;->f()LAc/b;

    move-result-object v1

    invoke-virtual {v1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    const-string v1, "myObject"

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v2

    invoke-static {v2}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    const-string v1, "myTransform"

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b4()LJAVARuntime/Transform;

    move-result-object v2

    invoke-static {v2}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    const-string v1, "myComponent"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v2

    invoke-static {v2}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->overridePrint()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->restoreVariables()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "compiler"

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->dumpException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callMethod(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lb9/c;->i(Ljava/lang/String;Lorg/luaj/vm2/Globals;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->dumpException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    return-object p1
.end method

.method private dumpException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "throwable"
        }
    .end annotation

    invoke-static {}, LJ4/d;->O1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getLine(Ljava/lang/Throwable;)I

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E/"

    invoke-static {v4}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LUA"

    invoke-static {v4}, LJ4/d;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".lua] at object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "Unknown"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, LJ4/d;->x2(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java.lang."

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang."

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java."

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    const-string v3, "lua"

    invoke-static {v0, v1, v3}, LTc/b;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "E/^^^"

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LJ4/d;->W1(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-static {}, LJ4/d;->E1()V

    :goto_2
    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLine(Ljava/lang/Throwable;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private overridePrint()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    const-string v2, "print"

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method private populateFilesFromList(Ljava/util/List;LIc/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "dependency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "LIc/k;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Matcap:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v2}, LJAVARuntime/Matcap;->fromJson(Ljava/lang/String;)LJAVARuntime/Matcap;

    move-result-object v2

    iget-object v3, p2, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v2}, LJAVARuntime/Matcap;->getTextureFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->InspectorString:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v3, "@@ASSET@@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, LIc/k;->a:Ljava/util/List;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->populateFilesFromList(Ljava/util/List;LIc/k;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private reload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    return-void
.end method

.method private reloadFilesFromList(Ljava/util/List;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "dictionary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Matcap:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const-string v4, "LuaComponent: REPLACING FAILED "

    const-string v5, " TO "

    const-string v6, "LuaComponent: REPLACING "

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v2}, LJAVARuntime/Matcap;->fromJson(Ljava/lang/String;)LJAVARuntime/Matcap;

    move-result-object v2

    invoke-virtual {v2}, LJAVARuntime/Matcap;->getTextureFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LJAVARuntime/Matcap;->getTextureFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LJAVARuntime/Matcap;->setTextureFile(Ljava/lang/String;)V

    invoke-virtual {v2}, LJAVARuntime/Matcap;->toJson()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->InspectorString:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v3, "@@ASSET@@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->reloadFilesFromList(Ljava/util/List;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private restoreVariables()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    invoke-virtual {v0}, Lb9/d;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    invoke-static {v0, v1, v2, v3, v4}, Lb9/b;->f(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)V

    :cond_0
    return-void
.end method

.method private storeVariables()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    invoke-virtual {v0}, Lb9/d;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    invoke-static {v0, v1, v2, v3}, Lb9/b;->h(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private updateCode()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lb9/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->E:Ljava/lang/String;

    invoke-static {v0}, Lb9/c;->f(Ljava/lang/String;)Lb9/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb9/d;->f()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->build()V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs callFunction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, v0, p2}, Lb9/c;->i(Ljava/lang/String;Lorg/luaj/vm2/Globals;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->dumpException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->cloneGV()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public cloneGV()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb9/d;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    invoke-static {v1, v2, v3, v4}, Lb9/b;->h(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;->a()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;->a()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->populateFilesFromList(Ljava/util/List;LIc/k;)V

    return-object p1
.end method

.method public getGlobals()Lorg/luaj/vm2/Globals;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07017b

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f050099

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->F:Lb9/d;

    invoke-virtual {v1}, Lb9/d;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->H:Lorg/luaj/vm2/Globals;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v2, p1, v3, v4}, Lb9/b;->b(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Landroid/content/Context;Lorg/luaj/vm2/Globals;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getInspectorExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V

    return-object v0
.end method

.method public getLongTapMenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V

    return-object v0
.end method

.method public getLuaInstance()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->LuaComponent:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->reload()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->updateCode()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->I:Lorg/luaj/vm2/LuaValue;

    if-eqz p1, :cond_1

    sget-wide p1, LK8/a;->t:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    if-nez p1, :cond_0

    const-string p1, "doStart"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->callMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->G:Z

    goto :goto_0

    :cond_0
    const-string p1, "doRepeat"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->callMethod(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of v0, p1, LIc/I;

    if-eqz v0, :cond_0

    check-cast p1, LIc/I;

    iget-object p1, p1, LIc/I;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->reload()V

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->className:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LuaComponent: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->filePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuaComponent: global_variables size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "LuaComponent: global_variables null"

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->globalVariables:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->reloadFilesFromList(Ljava/util/List;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->storeVariables()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    check-cast p1, LJAVARuntime/LuaComponent;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->J:LJAVARuntime/LuaComponent;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->J:LJAVARuntime/LuaComponent;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/LuaComponent;

    invoke-direct {v0, p0}, LJAVARuntime/LuaComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->J:LJAVARuntime/LuaComponent;

    :cond_0
    return-object v0
.end method

.method public varargs willCallFunction(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
