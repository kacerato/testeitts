.class public Lg6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg6/a;


# direct methods
.method public constructor <init>(Lg6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg6/a$d;->a:Lg6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LF7/i;Landroid/content/Context;LF7/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eElement",
            "context",
            "textViewAppearance"
        }
    .end annotation

    instance-of p2, p1, Lg6/a;

    if-eqz p2, :cond_4

    check-cast p1, Lg6/a;

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    const-class p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getMode()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->BakePreview:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    if-ne p2, v0, :cond_0

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void

    :cond_0
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p2, :cond_1

    iget p1, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p3, LF7/e;->a:I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lg6/a$d;->a:Lg6/a;

    invoke-static {p2, p1}, Lg6/a;->u(Lg6/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    :goto_0
    return-void

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void

    :cond_4
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void
.end method
