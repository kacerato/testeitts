.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;
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
.field public final synthetic b:LVg/a;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(LVg/a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$goFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;->b:LVg/a;

    iput-object p2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;->b:LVg/a;

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$a;->c:Ljava/io/File;

    invoke-interface {v0, v1}, LVg/a;->b(Ljava/io/File;)V

    return-void
.end method
