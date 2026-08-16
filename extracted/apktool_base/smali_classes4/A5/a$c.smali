.class public LA5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LA5/a;


# direct methods
.method public constructor <init>(LA5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LA5/a$c;->a:LA5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LA5/a$c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1}, LA5/a$c;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LA5/a$c$d;

    invoke-direct {v1, p0}, LA5/a$c$d;-><init>(LA5/a$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LA5/b;

    invoke-direct {v1, p0, p1}, LA5/b;-><init>(LA5/a$c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S0()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, LA5/a;->r1()V

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LA5/a$c$b;

    invoke-direct {v0, p0, p1}, LA5/a$c$b;-><init>(LA5/a$c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LA5/a$c$c;

    invoke-direct {v1, p0}, LA5/a$c$c;-><init>(LA5/a$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInstance()LA5/a;
    .locals 1

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    return-object v0
.end method

.method public final synthetic h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0, p1}, LA5/a;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->focusOnPropertiesAfterObjectSelection:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LA5/a$c;->d()V

    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LA5/a$c;->a:LA5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LA5/a$c$a;

    invoke-direct {v1, p0, p1}, LA5/a$c$a;-><init>(LA5/a$c;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
