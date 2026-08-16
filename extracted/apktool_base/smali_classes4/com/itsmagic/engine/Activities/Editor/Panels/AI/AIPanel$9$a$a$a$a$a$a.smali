.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/AI/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;->d(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$6",
            "val$normalTexture"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;->a:Ljava/io/File;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const v1, 0x3f555556

    add-float/2addr p1, v1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->F:F

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public d(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallicTexture"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->J:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a$a$a$a$a;Ljava/io/File;)V

    const-string p1, "roughness"

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V

    return-void
.end method
