.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->F:F

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objFile"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->J:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->u1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
