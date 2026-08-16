.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lorg/ITsMagic/Atlas/g;

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v2, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->d:LVg/b;

    iget-object v1, v1, LVg/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->bakeOptions:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {v0, v2, v1}, Lorg/ITsMagic/Atlas/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/ITsMagic/Atlas/BakeOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ITsMagic/Atlas/g;->t(Z)V

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v1, v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/ITsMagic/Atlas/g;->u(Ljava/io/File;)V

    new-instance v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;

    invoke-direct {v1, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;-><init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;)V

    invoke-virtual {v0, v1}, Lorg/ITsMagic/Atlas/g;->p(Lorg/ITsMagic/Atlas/g$b;)V

    return-void
.end method
