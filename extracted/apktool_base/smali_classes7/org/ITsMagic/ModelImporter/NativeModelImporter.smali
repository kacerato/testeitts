.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation


# static fields
.field private static final ASSIMP_LIGHT_DIRECTIONAL:I = 0x1

.field private static final ASSIMP_LIGHT_POINT:I = 0x2

.field private static final ASSIMP_LIGHT_SPOT:I = 0x3

.field private static final INVALID_FILENAME_CHARS:[C

.field private static final MAX_FILENAME_LENGTH:I = 0x64

.field private static final SKINNED_BONE_BOUNDING_RADIUS_MIN_PADDING:F = 0.01f

.field private static final SKINNED_BONE_BOUNDING_RADIUS_PADDING:F = 1.05f

.field private static final WIREFRAME_SUFFIX:Ljava/lang/String; = "_wf"

.field private static activeQueue:LVg/b;

.field private static final block:Ljava/lang/Object;

.field private static final importing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final queueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVg/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-model-importer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->INVALID_FILENAME_CHARS:[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->queueList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->importing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    nop

    :array_0
    .array-data 2
        0x3as
        0x5cs
        0x3fs
        0x2as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _insertBoneMap(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "skinnedID",
            "globalBoneID",
            "localBoneIndex"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    if-eqz v1, :cond_1

    iget-object v2, v1, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LVg/b;->p:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneGlobalToLocalMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _insertIBMToSkinnedModelRendererOf(II[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "skinnedID",
            "boneIndex",
            "matrix"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    if-eqz v1, :cond_1

    iget-object v2, v1, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LVg/b;->p:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->inverseBindBoneMatrix:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeAnimation(Ljava/lang/String;DD)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "mTicksPerSecond",
            "frameCount"
        }
    .end annotation

    sget-object p3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object p4, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p4, p4, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->AnimationPlayer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-nez p4, :cond_0

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;-><init>()V

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v0, v0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "mixamo.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;-><init>()V

    double-to-int p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    sget-object p1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    invoke-virtual {p1}, LVg/b;->c()Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".anim"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->toProjectIpp(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-direct {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object p2

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->q:LIc/s;

    invoke-virtual {p0, p1}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    monitor-exit p3

    return p0

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeBone(Ljava/lang/String;II[F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "boneID",
            "objectID",
            "bindLocalTransform",
            "inverseBindTransform"
        }
    .end annotation

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    if-eqz v0, :cond_1

    iget-object v1, v0, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LVg/b;->e:LIc/s;

    invoke-virtual {v0, p2}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v0, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>(I[F[F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static _makeChild(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->n(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p0, p0, LVg/b;->e:LIc/s;

    invoke-virtual {p0, v1}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeChildOf(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "parentID"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    sget-object p1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p1, p1, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->e:LIc/s;

    invoke-virtual {v1, p1}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->n(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->e:LIc/s;

    invoke-virtual {p0, v1}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeFloatBuffer(III)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "vertexID",
            "bufferType"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v1, :cond_1

    iget-object v4, v1, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    if-nez v4, :cond_1

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    monitor-exit v0

    const-wide/16 p0, 0x0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v1, v1, LVg/b;->g:LIc/s;

    invoke-virtual {v1, p1}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    if-eqz p2, :cond_7

    const/4 p0, 0x1

    if-eq p2, p0, :cond_6

    const/4 p0, 0x2

    if-eq p2, p0, :cond_5

    const/4 p0, 0x3

    if-eq p2, p0, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeIntBuffer(III)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "vertexID",
            "bufferType"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->g:LIc/s;

    invoke-virtual {v1, p1}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->fill(I)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeKeyFramePosition(ILjava/lang/String;DFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animID",
            "nodeName",
            "time",
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->q:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p0

    const-string v1, "p"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-static {p0, p1, v1, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateTransformTimeline(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    double-to-int p1, p2

    invoke-static {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateFrame(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1, p4, p5, p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeKeyFrameRotation(ILjava/lang/String;DFFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animID",
            "nodeName",
            "time",
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->q:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p0

    const-string v1, "r"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->QUAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-static {p0, p1, v1, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateTransformTimeline(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    double-to-int p1, p2

    invoke-static {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateFrame(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1, p4, p5, p6, p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeKeyFrameScale(ILjava/lang/String;DFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animID",
            "nodeName",
            "time",
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->q:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p0

    const-string v1, "s"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-static {p0, p1, v1, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateTransformTimeline(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    double-to-int p1, p2

    invoke-static {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getOrCreateFrame(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1, p4, p5, p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeLight(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x2

    .line 14
    invoke-static {p0, v0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->_makeLight(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static _makeLight(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "lightType"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 2
    :try_start_0
    const-string p0, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->easyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-string p0, "Light"

    .line 5
    :cond_1
    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->findLightTargetObject(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->n(Ljava/lang/String;)V

    .line 8
    iget-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    .line 9
    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 10
    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 11
    :cond_2
    invoke-static {v1, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->attachLightComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    .line 12
    invoke-static {v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->findOrRegisterObjectID(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 13
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeMaterial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "diffuseTex",
            "normalTex",
            "specularTex",
            "emissiveTex",
            "heightTex",
            "displacementTex",
            "opacityTex",
            "metallicTex",
            "baseColorTex",
            "emissionColorTex",
            "metalnessTex",
            "roughnessTex",
            "aoTex",
            "diffuseR",
            "diffuseG",
            "diffuseB",
            "diffuseA",
            "blendMode",
            "doubleSided"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p13

    move/from16 v3, p18

    sget-object v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "\\."

    const-string v6, "_"

    move-object/from16 v7, p0

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, LVg/b;->c()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".mat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->toProjectIpp(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    if-eqz p9, :cond_1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v7, p9

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    :goto_0
    const/4 v8, 0x2

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, ".\\"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    :goto_1
    const-string v7, "texture_0"

    const-string v9, "diffuse"

    const-string v10, "albedo"

    const-string v11, "color"

    filled-new-array {v7, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    const-string v9, ".\\"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const-string v0, "normal"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    if-eqz p12, :cond_9

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    move-object/from16 v9, p12

    goto :goto_5

    :cond_9
    move-object/from16 v9, p3

    :goto_5
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    const-string v10, ".\\"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_b
    :goto_6
    const-string v9, "specular"

    const-string v10, "roughness"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_c
    :goto_7
    if-eqz p4, :cond_d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    if-eqz p10, :cond_e

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    move-object/from16 v10, p10

    goto :goto_8

    :cond_e
    move-object/from16 v10, p4

    :goto_8
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_9

    :cond_f
    const-string v11, ".\\"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_10
    :goto_9
    const-string v10, "emissive"

    const-string v11, "emission"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_11
    :goto_a
    const/4 v11, 0x1

    if-eqz p11, :cond_12

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_12

    move-object/from16 v12, p11

    move v13, v11

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    move v13, v12

    move-object/from16 v12, p8

    :goto_b
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_c

    :cond_13
    const-string v14, ".\\"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_14
    if-nez v13, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "metalness"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_d

    :cond_15
    :goto_c
    const-string v12, "emissive"

    const-string v13, "emission"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_16
    :goto_d
    if-eqz p5, :cond_17

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_17
    if-eqz p6, :cond_18

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_18

    move-object/from16 v13, p6

    goto :goto_e

    :cond_18
    move-object/from16 v13, p5

    :goto_e
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_19

    goto :goto_f

    :cond_19
    const-string v14, ".\\"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    :cond_1a
    :goto_f
    const-string v13, "emissive"

    const-string v14, "emission"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_1b
    :goto_10
    if-eqz v2, :cond_1d

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1c

    goto :goto_11

    :cond_1c
    const-string v14, ".\\"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1d
    :goto_11
    const-string v2, "normal"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1e
    :goto_12
    if-eqz v1, :cond_20

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1f

    goto :goto_13

    :cond_1f
    const-string v14, ".\\"

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_21

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_20
    :goto_13
    const-string v1, "normal"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LVg/b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_21
    :goto_14
    invoke-static {v7, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    iput-object v4, v14, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    const-string v15, "albedo"

    invoke-virtual {v14, v15, v7}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "normalMap"

    invoke-virtual {v14, v7, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roughnessMap"

    invoke-virtual {v14, v0, v9}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "emissiveMap"

    invoke-virtual {v14, v0, v10}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "metallicMap"

    invoke-virtual {v14, v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "heightMap"

    invoke-virtual {v14, v0, v13}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aoMap"

    invoke-virtual {v14, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "opacityMap"

    invoke-virtual {v14, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "diffuse"

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v7, 0x3f5eb852    # 0.87f

    mul-float v10, p14, v7

    mul-float v13, p15, v7

    mul-float v7, v7, p16

    move/from16 v15, p17

    invoke-direct {v1, v15, v10, v13, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    invoke-virtual {v14, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v0, "MASKED"

    if-ne v3, v11, :cond_22

    iget-object v0, v5, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->transparencyMode:Lec/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_22
    if-ne v3, v8, :cond_23

    iget-object v0, v5, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->transparencyMode:Lec/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_23
    :goto_15
    const-string v1, "blendingMode"

    invoke-virtual {v14, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "doubleSided"

    move/from16 v1, p19

    invoke-virtual {v14, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setBoolean(Ljava/lang/String;Z)V

    if-eqz v9, :cond_24

    if-eqz v12, :cond_24

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Lit/ORM"

    invoke-virtual {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g0(Ljava/lang/String;)V

    const-string v0, "ormMap"

    invoke-virtual {v14, v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-eqz v12, :cond_25

    if-eqz v2, :cond_25

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Lit/ORM"

    invoke-virtual {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g0(Ljava/lang/String;)V

    const-string v0, "ormMap"

    invoke-virtual {v14, v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v9, :cond_26

    if-eqz v2, :cond_26

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "Lit/ORM"

    invoke-virtual {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g0(Ljava/lang/String;)V

    const-string v0, "ormMap"

    invoke-virtual {v14, v0, v9}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v0, v5, LVg/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, LVg/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, LVg/b;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, LVg/b;->l:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static _makeModelRendererOf(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectID",
            "materialIndex",
            "meshName"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "\\."

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>()V

    sget-object v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v3, v3, LVg/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setModelCritical(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    sget-object v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v3, v3, LVg/b;->j:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMeshFileButDontLoad(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFileButDontLoad(Ljava/lang/String;)V

    sget-object p2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p2, p2, LVg/b;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p1, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p1, p1, LVg/b;->e:LIc/s;

    invoke-virtual {p1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeSkinnedModelRendererOf(IILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectID",
            "materialIndex",
            "meshName",
            "boneCount"
        }
    .end annotation

    sget-object p3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\\."

    const-string v2, "_"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ne p0, v1, :cond_1

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v0, v0, LVg/b;->e:LIc/s;

    invoke-virtual {v0, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v0, v0, LVg/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v0, v0, LVg/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;-><init>()V

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->materialFile:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->inverseBindBoneMatrix:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->p:LIc/s;

    invoke-virtual {p0, v0}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    monitor-exit p3

    return p0

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->_makeModelRendererOf(IILjava/lang/String;)V

    monitor-exit p3

    return v1

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _makeVertex(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "materialIndex"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "\\."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p1, 0x5d

    const/16 v1, 0x5f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    invoke-virtual {v1}, LVg/b;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, ".mesh"

    invoke-static {v1, p0, v2, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFileWithMaxBase(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->toProjectIpp(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->j:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->g:LIc/s;

    invoke-virtual {p0, v1}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate vertex name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    if-eqz v1, :cond_0

    iget-object v2, v1, LVg/b;->b:LVg/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;

    invoke-direct {v0, v2, p0, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;-><init>(LVg/a;Ljava/lang/String;LVg/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static _onStart(IIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "numMeshes",
            "numMaterials",
            "numLights",
            "numCameras",
            "numTextures",
            "numAnimations",
            "numBones"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iput p0, v1, LVg/b;->r:I

    iput p1, v1, LVg/b;->s:I

    iput p2, v1, LVg/b;->t:I

    iput p3, v1, LVg/b;->u:I

    iput p4, v1, LVg/b;->v:I

    iput p5, v1, LVg/b;->w:I

    iput p6, v1, LVg/b;->x:I

    iget-object p0, v1, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, v1, LVg/b;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E1(Ljava/lang/String;)V

    if-lez p6, :cond_0

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _setName(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectID",
            "name"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const-string p1, "Unnamed object"

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->e:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E1(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _setTransform(I[F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectID",
            "matrix4"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p0, v1, :cond_0

    :try_start_0
    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->set([F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v1, v1, LVg/b;->e:LIc/s;

    invoke-virtual {v1, p0}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->set([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b2()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m3(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m3(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic access$000()LVg/b;
    .locals 1

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    return-object v0
.end method

.method public static synthetic access$002(LVg/b;)LVg/b;
    .locals 0

    sput-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->toProjectIpp(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V
    .locals 0

    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->cleanupAnimation(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->importing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static attachLightComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "lightType"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    const/4 v6, 0x1

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    move-object p1, v4

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    if-nez v1, :cond_5

    :cond_3
    if-ne p1, v2, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-ne p1, v4, :cond_6

    if-eqz v5, :cond_6

    :cond_5
    return-void

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_9
    if-ne p1, v0, :cond_a

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :cond_a
    if-ne p1, v2, :cond_b

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :cond_b
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_1
    return-void
.end method

.method private static buildCollision(LVg/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queue"
        }
    .end annotation

    move-object/from16 v0, p0

    :try_start_0
    iget-object v8, v0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v9, 0x1

    new-array v7, v9, [I

    const/4 v10, 0x0

    aput v10, v7, v10

    new-array v6, v9, [I

    aput v10, v6, v10

    new-array v1, v9, [I

    aput v10, v1, v10

    new-array v2, v9, [I

    aput v10, v2, v10

    move v3, v10

    :goto_0
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v8, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, v0, LVg/b;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMeshFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v4

    if-lez v4, :cond_2

    aget v4, v7, v10

    add-int/2addr v4, v9

    aput v4, v7, v10

    aget v4, v1, v10

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v4, v11

    aput v4, v1, v10

    aget v4, v2, v10

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    aput v4, v2, v10

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$g;

    invoke-direct {v4, v0, v7, v1, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$g;-><init>(LVg/b;[I[I[I)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    aget v3, v1, v10

    if-eqz v3, :cond_b

    aget v3, v2, v10

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v1, v1, v10

    invoke-direct {v11, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    aget v1, v2, v10

    invoke-direct {v12, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    invoke-virtual {v12, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->fill(I)V

    invoke-virtual {v11, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v12, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    new-array v4, v9, [I

    aput v10, v4, v10

    move v1, v10

    :goto_3
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_6

    :cond_5
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-static {v8, v3}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, v0, LVg/b;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMeshFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_6
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v13

    move v14, v10

    :goto_4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v15

    if-ge v14, v15, :cond_7

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    add-int/lit8 v10, v14, 0x2

    invoke-virtual {v2, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v15, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v14, v14, 0x3

    move-object/from16 v0, p0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v13, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x0

    aget v9, v4, v3

    add-int/2addr v9, v2

    invoke-virtual {v12, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    aget v2, v4, v0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v4, v0

    aget v2, v6, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v6, v0

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    new-instance v9, Lorg/ITsMagic/ModelImporter/NativeModelImporter$h;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v5, v12

    invoke-direct/range {v1 .. v7}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$h;-><init>(LVg/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[I[I)V

    invoke-interface {v0, v9}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v1

    if-lez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    invoke-virtual {v2}, LVg/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "compound_collision"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mesh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    const-string v2, "Collision"

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v3, v5, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :cond_b
    :goto_7
    return-void

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_9
    return-void
.end method

.method private static buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "desiredName"
        }
    .end annotation

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->enforceFileNameMaxLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    if-nez p0, :cond_0

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    move-object p1, v3

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    const/4 v3, 0x1

    move v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v6, v3, :cond_3

    move v6, v3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_4

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, p1

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    if-nez p0, :cond_5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    return-object v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static buildSafeFileWithMaxBase(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "baseName",
            "extension",
            "maxBaseLength"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, p3, :cond_3

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p0, :cond_4

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    return-object v1

    :cond_5
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    if-ge v4, v0, :cond_6

    move v4, v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_7

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, p1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    return-object v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static calculateSkinnedBoneBoundingRadius(LVg/b;)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queue"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_1f

    iget-object v5, v0, LVg/b;->p:LIc/s;

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, LIc/s;->size()I

    move-result v5

    if-gtz v5, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v5, v0, LVg/b;->p:LIc/s;

    invoke-virtual {v5}, LIc/s;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIc/s$a;

    invoke-virtual {v6}, LIc/s$a;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v6, :cond_1e

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneGlobalToLocalMap:Ljava/util/HashMap;

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v0, LVg/b;->k:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v8

    div-int/2addr v8, v3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getSkinningInfluenceStride(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)I

    move-result v9

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    invoke-static {v10, v8}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->getSkinningInfluenceStride(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-lez v8, :cond_1e

    if-gtz v11, :cond_3

    goto :goto_0

    :cond_3
    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneGlobalToLocalMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    :cond_5
    if-gtz v13, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-static {v6}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->findArmatureRoot(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v12

    if-nez v12, :cond_7

    iget-object v12, v0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_7
    const/16 v14, 0x10

    new-array v15, v14, [F

    invoke-static {v12, v15}, Lib/g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F

    move-result-object v15

    new-array v2, v14, [F

    invoke-static {v15, v2}, LNc/c;->d([F[F)V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneGlobalToLocalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneGlobalToLocalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-ltz v20, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v14, v13, :cond_9

    :cond_8
    :goto_3
    const/4 v3, 0x3

    const/16 v14, 0x10

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v12, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->findSkinJointByGlobalIndex(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    move-object/from16 v21, v4

    const/16 v14, 0x10

    new-array v4, v14, [F

    invoke-static {v1, v4}, Lib/g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F

    move-result-object v1

    new-array v4, v14, [F

    invoke-static {v4, v2, v1}, LNc/c;->f([F[F[F)V

    const/16 v1, 0xc

    aget v1, v4, v1

    const/16 v14, 0xd

    aget v14, v4, v14

    const/16 v22, 0xe

    aget v4, v4, v22

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    const/4 v5, 0x3

    new-array v12, v5, [F

    const/4 v5, 0x0

    aput v1, v12, v5

    const/4 v1, 0x1

    aput v14, v12, v1

    const/4 v1, 0x2

    aput v4, v12, v1

    invoke-virtual {v15, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v12, v23

    goto :goto_3

    :cond_b
    const/4 v3, 0x3

    goto :goto_2

    :cond_c
    move-object/from16 v22, v5

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_4
    move-object/from16 v5, v22

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object v1, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_e

    :goto_5
    const/16 v3, 0x10

    goto :goto_6

    :cond_e
    iget-object v1, v0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_5

    :goto_6
    new-array v4, v3, [F

    invoke-static {v1, v4}, Lib/g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F

    move-result-object v1

    new-array v3, v3, [F

    invoke-static {v3, v2, v1}, LNc/c;->f([F[F[F)V

    new-array v1, v13, [F

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v8, :cond_1c

    const/4 v12, 0x3

    mul-int/lit8 v14, v7, 0x3

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    const/16 v17, 0x1

    add-int/lit8 v0, v14, 0x1

    move/from16 v20, v8

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    move-object/from16 v21, v6

    const/16 v16, 0x2

    add-int/lit8 v6, v14, 0x2

    move-object/from16 v23, v1

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-static {v3, v12, v8, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->transformPointX([FFFF)F

    move-result v1

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    move/from16 v24, v1

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-static {v3, v8, v12, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->transformPointY([FFFF)F

    move-result v1

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-static {v3, v8, v0, v6}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->transformPointZ([FFFF)F

    move-result v0

    mul-int v6, v7, v9

    mul-int v8, v7, v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v12, v11, :cond_14

    move-object/from16 v25, v2

    add-int v2, v8, v12

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    const/16 v26, 0x0

    cmpg-float v2, v2, v26

    if-gtz v2, :cond_10

    :cond_f
    :goto_9
    move-object/from16 v26, v3

    goto :goto_a

    :cond_10
    add-int v2, v6, v12

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ltz v2, :cond_f

    if-lt v2, v13, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v26, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-nez v3, :cond_12

    goto :goto_a

    :cond_12
    const/16 v19, 0x0

    aget v14, v3, v19

    sub-float v14, v24, v14

    const/16 v17, 0x1

    aget v27, v3, v17

    sub-float v27, v1, v27

    const/16 v16, 0x2

    aget v3, v3, v16

    sub-float v3, v0, v3

    mul-float/2addr v14, v14

    mul-float v27, v27, v27

    add-float v14, v14, v27

    mul-float/2addr v3, v3

    add-float/2addr v14, v3

    aget v3, v23, v2

    cmpl-float v3, v14, v3

    if-lez v3, :cond_13

    aput v14, v23, v2

    :cond_13
    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_b

    :goto_a
    const/4 v2, 0x1

    :goto_b
    add-int/2addr v12, v2

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_8

    :cond_14
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    if-nez v14, :cond_1b

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :cond_15
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ltz v12, :cond_16

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v12, v13, :cond_17

    :cond_16
    :goto_d
    const/4 v14, 0x0

    const/16 v16, 0x2

    goto :goto_c

    :cond_17
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    if-nez v12, :cond_18

    goto :goto_d

    :cond_18
    const/4 v14, 0x0

    aget v19, v12, v14

    sub-float v19, v24, v19

    const/16 v17, 0x1

    aget v27, v12, v17

    sub-float v27, v1, v27

    const/16 v16, 0x2

    aget v12, v12, v16

    sub-float v12, v0, v12

    mul-float v19, v19, v19

    mul-float v27, v27, v27

    add-float v19, v19, v27

    mul-float/2addr v12, v12

    add-float v19, v19, v12

    cmpg-float v12, v19, v6

    if-gez v12, :cond_15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v6, v19

    goto :goto_c

    :cond_19
    const/4 v14, 0x0

    const/16 v16, 0x2

    if-ltz v3, :cond_1a

    aget v0, v23, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1a

    aput v6, v23, v3

    :cond_1a
    :goto_e
    const/4 v0, 0x1

    goto :goto_f

    :cond_1b
    const/4 v14, 0x0

    const/16 v16, 0x2

    goto :goto_e

    :goto_f
    add-int/2addr v7, v0

    move-object/from16 v0, p0

    move/from16 v8, v20

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v23, v1

    move-object/from16 v21, v6

    const/4 v14, 0x0

    const/16 v16, 0x2

    new-array v0, v13, [F

    iput-object v0, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneBoundingRadius:[F

    move v5, v14

    :goto_10
    if-ge v5, v13, :cond_1d

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->boneBoundingRadius:[F

    aget v1, v23, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    aput v1, v0, v5

    const/4 v0, 0x1

    add-int/2addr v5, v0

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1f
    :goto_11
    return-void
.end method

.method private static cleanupAnimation(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$j;

    invoke-direct {v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;

    invoke-direct {v4, v3}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    return-void
.end method

.method private static deleteInuteis(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "exec"
        }
    .end annotation

    if-nez p0, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->deleteInuteis(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    invoke-static {v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->isIdentityTransform(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    return v3

    :cond_7
    return p1
.end method

.method private static deleteUnusedModelAndTextureFiles(LVg/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queue"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LVg/b;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter$c;

    invoke-direct {v3, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$c;-><init>(Ljava/util/HashSet;)V

    new-instance v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$d;

    invoke-direct {v4, v2}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$d;-><init>(Ljava/util/HashSet;)V

    new-instance v5, Lorg/ITsMagic/ModelImporter/NativeModelImporter$e;

    invoke-direct {v5, v4}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$e;-><init>(Ljava/util/function/Consumer;)V

    new-instance v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$f;

    invoke-direct {v4, v3, v5, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$f;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;LVg/b;)V

    iget-object p0, p0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    array-length p0, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_9

    aget-object v5, v0, v4

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "thumb.png"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "thumb_manifest.json"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mesh"

    invoke-static {v8, v9}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v10, ".mwf"

    const-string v11, "_wf"

    if-eqz v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v6}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v6, v8}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".config"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method public static easyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "mixamorig:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "$AssimpFbx$_"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static enforceFileNameMaxLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "maxLength"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object p0

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p1, v4

    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v4, :cond_3

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static finalCheckTexture(Ljava/lang/String;LVg/b;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "queue"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, LVg/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static findArmatureRoot(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Armature:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    instance-of v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static findLightTargetObject(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->a0(Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findOrRegisterObjectID(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v1, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p0, v2, :cond_1

    return v0

    :cond_1
    iget-object v0, v1, LVg/b;->e:LIc/s;

    invoke-virtual {v0}, LIc/s;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIc/s$a;

    invoke-virtual {v1}, LIc/s$a;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, LIc/s$a;->b()I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v0, v0, LVg/b;->e:LIc/s;

    invoke-virtual {v0, p0}, LIc/s;->m(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static findSkinJointByGlobalIndex(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "globalBoneIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->findSkinJointByGlobalIndex(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static getOrCreateFrame(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeline",
            "frameTime"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getOrCreateTransformTimeline(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animation",
            "objectUID",
            "entryName",
            "type"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v2

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v2, v3}, LAc/b;->W(LAc/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v1, LAc/b;

    invoke-direct {v1, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSkinningInfluenceStride(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "vertexCount"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    if-lt v1, v2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    const/4 v1, 0x3

    mul-int/2addr p1, v1

    if-lt p0, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static internalImport()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$k;

    invoke-direct {v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$k;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static isIdentityTransform(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p0, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lpUpdate()V
    .locals 5

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->importing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->queueList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVg/b;

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    invoke-static {}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->internalImport()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public static native nativeImportFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filepath",
            "metaFolder",
            "metaFolderIPP",
            "scale",
            "importSkinningData",
            "boneCorrectionMode",
            "maxBonesPerChunk"
        }
    .end annotation
.end method

.method public static onFinish()V
    .locals 16

    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v11, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v11, LVg/b;->b:LVg/a;

    iget-object v0, v11, LVg/b;->a:Ljava/io/File;

    invoke-static {v0}, LTc/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v11, LVg/b;->g:LIc/s;

    invoke-virtual {v2}, LIc/s;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    array-length v3, v2

    move v4, v13

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v6, v7}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".config"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(F)V

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b2()V

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v13

    move v3, v2

    :goto_1
    sget-object v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v4, v4, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v4

    if-ge v2, v4, :cond_4

    sget-object v4, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v4, v4, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    move v3, v14

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    move v2, v13

    :goto_2
    sget-object v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v3, v3, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v2, v3, :cond_5

    sget-object v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v3, v3, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_6

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m3(Z)V

    goto :goto_3

    :cond_6
    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m3(Z)V

    :goto_3
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->deleteIdentityObjects:Z

    if-eqz v2, :cond_7

    move v2, v14

    :goto_4
    if-eqz v2, :cond_7

    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    iget-object v2, v2, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, v13}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->deleteInuteis(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Z

    move-result v2

    goto :goto_4

    :cond_7
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->explodePack:Z

    if-nez v3, :cond_8

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->generateCollision:Z

    if-eqz v2, :cond_8

    iget v2, v11, LVg/b;->x:I

    if-gtz v2, :cond_8

    invoke-static {v11}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildCollision(LVg/b;)V

    :cond_8
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowVertexFiles:Z

    if-eqz v2, :cond_9

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v11, LVg/b;->g:LIc/s;

    invoke-virtual {v2}, LIc/s;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v11, LVg/b;->g:LIc/s;

    new-instance v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter$n;

    invoke-direct {v3, v15}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$n;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v15}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v6, Lorg/ITsMagic/ModelImporter/NativeModelImporter$o;

    move-object v2, v6

    move-object v3, v11

    move-object v5, v9

    move-object v14, v6

    move-object v6, v1

    move-object v13, v8

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$o;-><init>(LVg/b;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;LVg/a;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v15}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, v11, LVg/b;->g:LIc/s;

    invoke-virtual {v2}, LIc/s;->clear()V

    goto :goto_5

    :cond_9
    iget-object v2, v11, LVg/b;->g:LIc/s;

    invoke-virtual {v2}, LIc/s;->clear()V

    :goto_5
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowTextureFiles:Z

    if-eqz v2, :cond_c

    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_b

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v14, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v8, v14}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".config"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Textures:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v1, v8, v3, v4, v7}, LVg/a;->c(ILjava/lang/String;II)V

    if-eqz v2, :cond_c

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/BaseStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/stream/Stream;

    new-instance v15, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;

    move-object v2, v15

    move-object v3, v12

    move-object v4, v11

    move-object v7, v9

    move-object v8, v1

    move-object v9, v13

    invoke-direct/range {v2 .. v10}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;-><init>(Ljava/io/File;LVg/b;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;LVg/a;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v14, v15}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_c
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowMaterialFiles:Z

    if-eqz v2, :cond_d

    iget-object v2, v11, LVg/b;->m:Ljava/util/HashMap;

    new-instance v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter$q;

    invoke-direct {v3}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$q;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_d
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowAnimFiles:Z

    if-eqz v2, :cond_e

    iget-object v2, v11, LVg/b;->q:LIc/s;

    new-instance v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter$r;

    invoke-direct {v3}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$r;-><init>()V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->setStatic:Z

    if-eqz v2, :cond_f

    iget v2, v11, LVg/b;->x:I

    if-gtz v2, :cond_f

    iget-object v2, v11, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    iget-object v2, v11, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/ITsMagic/ModelImporter/NativeModelImporter$s;

    invoke-direct {v3}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$s;-><init>()V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_f
    invoke-static {v11}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->calculateSkinnedBoneBoundingRadius(LVg/b;)V

    iget-object v2, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->explodePack:Z

    if-eqz v2, :cond_13

    iget-object v2, v11, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_7
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    goto :goto_7

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " objects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v4

    if-ge v8, v4, :cond_12

    invoke-virtual {v2, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    const/16 v5, 0x10

    new-array v5, v5, [F

    invoke-static {v4, v5}, Lib/g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->set([F)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "."

    const-string v10, "_"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".go"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    if-eqz v7, :cond_11

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->setFile(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;-><init>()V

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->setFile(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_9
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_12
    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$t;

    invoke-direct {v0, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$t;-><init>(LVg/a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".go"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->buildSafeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    iget-object v0, v11, LVg/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    iget-object v0, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->buildAtlas:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    move-object v2, v9

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;-><init>(Ljava/io/File;LVg/b;Ljava/io/File;LVg/a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v9}, LK8/a;->I(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_a
    iget-object v0, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowObjectFiles:Z

    if-eqz v0, :cond_15

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;

    invoke-direct {v0, v1, v8}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;-><init>(LVg/a;Ljava/io/File;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_15
    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$b;

    invoke-direct {v0, v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$b;-><init>(LVg/a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_b
    iget-object v0, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->buildAtlas:Z

    if-nez v1, :cond_16

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->ignoreUnusedFiles:Z

    if-eqz v0, :cond_16

    invoke-static {v11}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->deleteUnusedModelAndTextureFiles(LVg/b;)V

    :cond_16
    invoke-virtual {v11}, LVg/b;->e()V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v1, :cond_1c

    aget-object v2, v0, v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mat"

    invoke-static {v3, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowMaterialFiles:Z

    if-nez v3, :cond_17

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_d

    :cond_17
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v3, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowTextureFiles:Z

    if-nez v3, :cond_18

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mesh"

    invoke-static {v3, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowVertexFiles:Z

    if-nez v3, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_d

    :cond_19
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".go"

    invoke-static {v3, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowObjectFiles:Z

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_d

    :cond_1a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".anim"

    invoke-static {v3, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v11, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowAnimFiles:Z

    if-nez v3, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1b
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1c
    sget-object v2, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    sget-object v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->importing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->INVALID_FILENAME_CHARS:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v1, v1, v0

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static startImportOf(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;LVg/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "importOptions",
            "file",
            "listener"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "FileNotFoundException:null"

    invoke-interface {p2, p0}, LVg/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FileNotFoundException:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, LVg/a;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;-><init>()V

    :cond_3
    new-instance v0, LVg/b;

    invoke-direct {v0}, LVg/b;-><init>()V

    iput-object p1, v0, LVg/b;->a:Ljava/io/File;

    iput-object p2, v0, LVg/b;->b:LVg/a;

    iput-object p0, v0, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->block:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->queueList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static toProjectIpp(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static transformPointX([FFFF)F
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

    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x4

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/16 p1, 0x8

    aget p1, p0, p1

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    const/16 p1, 0xc

    aget p0, p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private static transformPointY([FFFF)F
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

    const/4 v0, 0x1

    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x5

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/16 p1, 0x9

    aget p1, p0, p1

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    const/16 p1, 0xd

    aget p0, p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private static transformPointZ([FFFF)F
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

    const/4 v0, 0x2

    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x6

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/16 p1, 0xa

    aget p1, p0, p1

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    const/16 p1, 0xe

    aget p0, p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private static varargs trySearchTexture(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "names"
        }
    .end annotation

    sget-object p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->activeQueue:LVg/b;

    invoke-virtual {p0}, LVg/b;->a()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "textures"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    array-length v6, p1

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, p1, v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "textures/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v4, p0, v1

    array-length v5, p1

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string p0, ""

    return-object p0
.end method
