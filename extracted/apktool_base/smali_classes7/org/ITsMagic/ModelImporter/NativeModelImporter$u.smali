.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LVg/b;

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:LVg/a;

.field public final synthetic g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/io/File;LVg/b;Ljava/io/File;LVg/a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$goFile",
            "val$queue",
            "val$meta",
            "val$listener",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->c:Ljava/io/File;

    iput-object p2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->d:LVg/b;

    iput-object p3, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->e:Ljava/io/File;

    iput-object p4, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->f:LVg/a;

    iput-object p5, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->T(Ljava/lang/String;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    invoke-direct {v0, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;-><init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
