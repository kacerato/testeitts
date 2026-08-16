.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda"
        }
    .end annotation

    iget-object p4, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    iget-object p4, p4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object p4, p4, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->f:LVg/a;

    float-to-int p3, p3

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->a:Ljava/lang/String;

    invoke-interface {p4, p3, v0, p1, p2}, LVg/a;->c(ILjava/lang/String;II)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->f:LVg/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v1, v1}, LVg/a;->c(ILjava/lang/String;II)V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    invoke-direct {v0, p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;-><init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
