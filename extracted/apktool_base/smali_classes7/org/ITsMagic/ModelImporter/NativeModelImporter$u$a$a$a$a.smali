.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;

    invoke-direct {v0, p0}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;-><init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
