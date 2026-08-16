.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/AI/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->d(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$7",
            "val$metallicTexture"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const v1, 0x3f6aaaab

    add-float/2addr p1, v1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->F:F

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->u1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public d(Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughnessTexture"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    iget-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->L:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iget-object v5, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->K:Ljava/lang/String;

    iget-object v6, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->J:Ljava/lang/String;

    iget-object v7, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v8, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->a:Ljava/io/File;

    iget-object v9, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;->a:Ljava/io/File;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->a:Ljava/io/File;

    iget-object v11, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->a:Ljava/io/File;

    move-object v12, p1

    invoke-static/range {v4 .. v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->F:F

    return-void
.end method
