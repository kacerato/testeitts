.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;
.super Lfb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfb/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->R:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UIFitParent"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "UI/Fit"

    return-object v0
.end method

.method public h(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translate"
        }
    .end annotation

    const-string p1, "Fit parent"

    return-object p1
.end method

.method public i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfb/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
