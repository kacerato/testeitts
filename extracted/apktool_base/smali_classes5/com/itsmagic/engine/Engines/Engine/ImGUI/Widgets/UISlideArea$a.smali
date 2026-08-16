.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$a;
.super Lfb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;
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

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->W:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UISlideArea"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "UI/Widgets"

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

    const-string p1, "SlideArea"

    return-object p1
.end method
