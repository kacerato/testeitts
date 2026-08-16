.class public LVg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVg/c$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/itsmagic/engine/Engines/Engine/World/b$g;
    .locals 1

    invoke-static {}, LVg/c;->c()Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/io/File;ZLVg/c$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld",
            "importListener"
        }
    .end annotation

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;-><init>()V

    sget-object v0, LW7/b;->h:Lb8/f;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LVg/c$c;

    invoke-direct {v2, p3, p0, p1, p2}, LVg/c$c;-><init>(LVg/c$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;Z)V

    invoke-virtual {v0, v1, v2}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method

.method public static c()Lcom/itsmagic/engine/Engines/Engine/World/b$g;
    .locals 1

    new-instance v0, LVg/c$d;

    invoke-direct {v0}, LVg/c$d;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld"
        }
    .end annotation

    new-instance v0, LVg/c$a;

    invoke-direct {v0, p1, p2}, LVg/c$a;-><init>(Ljava/io/File;Z)V

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V

    return-void
.end method

.method public static e(Landroid/view/View;Ljava/io/File;ZLVg/c$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld",
            "importListener"
        }
    .end annotation

    new-instance v0, LVg/c$b;

    invoke-direct {v0, p3, p1, p2}, LVg/c$b;-><init>(LVg/c$e;Ljava/io/File;Z)V

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V

    return-void
.end method
