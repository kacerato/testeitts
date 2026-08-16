.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    iget-object v1, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->c:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;

    iget-object v1, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    iget-object v1, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v1, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->c:Ljava/io/File;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LX7/a;->h(Ljava/io/File;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;

    invoke-direct {v0, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;-><init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
