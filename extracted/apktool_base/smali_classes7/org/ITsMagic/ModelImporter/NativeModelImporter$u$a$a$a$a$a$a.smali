.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$5"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->c:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iatlas_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".go"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compound_collision.mesh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a$a;->c:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u$a;->b:Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;

    iget-object v0, v0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$u;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
