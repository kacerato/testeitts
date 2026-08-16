.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;->i()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;-><init>(ZZ)V

    return-object p1
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1

    const-string v0, "Fit height"

    return-object v0
.end method
