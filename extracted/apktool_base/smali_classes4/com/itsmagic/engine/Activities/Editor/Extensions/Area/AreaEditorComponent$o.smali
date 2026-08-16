.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->generateBake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->padding:I

    iput v2, v0, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->texelsPerUnit:I

    int-to-float v2, v2

    iput v2, v0, Lorg/ITsMagic/Atlas/BakeOptions;->texelsPerUnit:F

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-boolean v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeLight:Z

    iput-boolean v2, v0, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-boolean v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeLight:Z

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$102(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Z)Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;-><init>(Ljava/util/List;Lorg/ITsMagic/Atlas/BakeOptions;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LLb/k;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bake/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lid/a;->g(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->u(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->t(Z)V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-object v5, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->resolutionTarget:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;->Auto:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o$a;

    invoke-direct {v3, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;Ljava/io/File;)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;ZLcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;)V

    return-void
.end method
