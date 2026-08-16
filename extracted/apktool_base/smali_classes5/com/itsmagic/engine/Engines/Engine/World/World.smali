.class public Lcom/itsmagic/engine/Engines/Engine/World/World;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/World/World$d;,
        Lcom/itsmagic/engine/Engines/Engine/World/World$c;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field private bakeSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c:Z

.field public createExampleWhenOpen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public d:LLb/g;

.field public editorCameraSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fg:Lcom/itsmagic/engine/Utils/FileGUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public folder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private graphicsSettings:LNb/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isArea:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lightSettings:LNb/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->c:Z

    return-void
.end method

.method public static h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->i(Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "ignoreGUID"
        }
    .end annotation

    const-string p1, "serializedObjects"

    const-string v0, "childrens"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v4, Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/World/World;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    move v3, v5

    :goto_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q(Lcom/google/gson/JsonObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    move v0, v5

    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q(Lcom/google/gson/JsonObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string p1, "World"

    const-string v0, "Failed to load objects from world"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v1
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Utils/FileGUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fg"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fg:Lcom/itsmagic/engine/Utils/FileGUID;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D1(Lcom/itsmagic/engine/Utils/FileGUID;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B(LNb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphicsSettings"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->graphicsSettings:LNb/a;

    return-void
.end method

.method public C(LNb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightSettings"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->lightSettings:LNb/b;

    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public F(Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsSettings"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    return-void
.end method

.method public G()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H(II)V
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

    const-string v0, "Invalid child at "

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N1()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
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

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Object A is not a child of this object"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->H(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ObjectB can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ObjectA can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-static {}, Lc8/b;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->dontDestroyOnLoad:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y1()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final a()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "@-EDITOR"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v7, 0x4a989680    # 5000000.0f

    invoke-direct {v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "@-POST PROCESSING"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "=============="

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {v7, v8, v6, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v2, v3, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "Ground"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    const-string v3, "Files/Textures/Grass.jpg"

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@@ASSET@@Engine/Primitives/Models/cube.obj"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v3, "Sphere"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v4, 0xff

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->r(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@@ASSET@@Engine/Primitives/Models/sphere.obj"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v5, v8, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide v10, 0x3fe69fbe76c8b439L    # 0.707

    const-wide v12, 0x3fe69fbe76c8b439L    # 0.707

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(DDDD)V

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v3, "Sun light"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v6, 0x42480000    # 50.0f

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "POST PROCESSING"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v2, v3, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "Ground"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    const-string v3, "Files/Textures/Grass.jpg"

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@@ASSET@@Engine/Primitives/Models/cube.obj"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v3, "Sphere"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v4, 0xff

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->r(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@@ASSET@@Engine/Primitives/Models/sphere.obj"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v5, v7, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide v10, 0x3fe69fbe76c8b439L    # 0.707

    const-wide v12, 0x3fe69fbe76c8b439L    # 0.707

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(DDDD)V

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v3, "Sun light"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, -0x3f800000    # -4.0f

    invoke-direct {v3, v5, v8, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4, v8, v5, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v3, "Camera"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y1()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World$c;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->b:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    return-object v0
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, LLb/k;->k(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->b()V

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->v()V

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "name"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/World/World$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World$d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->bakeSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->bakeSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->bakeSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->editorCameraSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->editorCameraSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->editorCameraSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;

    return-object v0
.end method

.method public o()LNb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->graphicsSettings:LNb/a;

    if-nez v0, :cond_0

    new-instance v0, LNb/a;

    invoke-direct {v0}, LNb/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->graphicsSettings:LNb/a;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->graphicsSettings:LNb/a;

    return-object v0
.end method

.method public p()LNb/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->lightSettings:LNb/b;

    if-nez v0, :cond_0

    new-instance v0, LNb/b;

    invoke-direct {v0}, LNb/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->lightSettings:LNb/b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->lightSettings:LNb/b;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    return-object v0
.end method

.method public r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    return-object v0
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "listener",
            "isAsync"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->b:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/World$a;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/World/World$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World;LLb/a;Lcom/itsmagic/engine/Engines/Engine/World/World$c;Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->c:Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p2}, LLb/a;->c()V

    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lob/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/World$b;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Engine/World/World$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;ILjava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    :try_start_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z1()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->p()LNb/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LNb/b;->a(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->o()LNb/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LNb/a;->a(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->d(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->m()Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;->a(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public x(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->y(I)Lcom/google/gson/JsonArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "serializedObjects"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final y(I)Lcom/google/gson/JsonArray;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tries"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->IgnoreSave:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->y(I)Lcom/google/gson/JsonArray;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bakeSettings"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->bakeSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;

    return-void
.end method
