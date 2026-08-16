.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->parallelUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "done",
            "error"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->F:F

    if-eqz p2, :cond_0

    const p1, -0x3b864000    # -999.0f

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->E:F

    iget-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->J:Ljava/lang/String;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;)V

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "Something went wrong, you have been refunded"

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
