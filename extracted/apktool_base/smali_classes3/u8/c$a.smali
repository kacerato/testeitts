.class public Lu8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/c;->c(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

.field public final synthetic c:Lu8/c;


# direct methods
.method public constructor <init>(Lu8/c;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$buildConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/c$a;->c:Lu8/c;

    iput-object p2, p0, Lu8/c$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lu8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "area"
        }
    .end annotation

    iget-object p2, p0, Lu8/c$a;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Z(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Led/c;

    new-instance v0, Lu8/c$a$a;

    invoke-direct {v0, p0, p1}, Lu8/c$a$a;-><init>(Lu8/c$a;LZ6/g;)V

    invoke-direct {p2, v0}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu8/c$a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_EDITOR/APP/Settings/Icon/512x.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    new-instance v0, Lu8/c$a$b;

    const-string v1, ""

    invoke-direct {v0, p0, p1, v1}, Lu8/c$a$b;-><init>(Lu8/c$a;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LW7/b;->f:LC8/a;

    iget-object p1, p1, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    iget-object v1, p0, Lu8/c$a;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Lhd/e;

    const-string v1, "backend/view/compiller/"

    const-string v2, "request.php"

    invoke-static {v1, v2}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lu8/c$a;->a:Landroid/app/Activity;

    invoke-direct {p1, v1, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Led/c;->d(Lhd/e;)V

    :cond_1
    return-void
.end method
