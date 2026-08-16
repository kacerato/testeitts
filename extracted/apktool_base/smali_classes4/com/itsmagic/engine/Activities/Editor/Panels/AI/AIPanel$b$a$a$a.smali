.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, LW7/b;->h:Lb8/f;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
