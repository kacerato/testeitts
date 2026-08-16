.class public Lorg/ITsMagic/Atlas/g$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/g$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LUg/k;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:Lorg/ITsMagic/Atlas/g$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/g$a$a;Ljava/lang/String;LUg/k;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$finalAlbedoFile",
            "val$buildedAtlas",
            "val$finalVertexFile",
            "val$countDownLatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->c:LUg/k;

    iput-object p4, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v1, "Spawning objects"

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v1, :cond_0

    const-string v1, "albedo"

    iget-object v2, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iatlas_material_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v4, v4, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v4, v4, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v4}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->c:LUg/k;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".mat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->F()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Bake/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v3}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILED TO SAVE MATERIAL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->f:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->g(Lorg/ITsMagic/Atlas/g;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$c;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
