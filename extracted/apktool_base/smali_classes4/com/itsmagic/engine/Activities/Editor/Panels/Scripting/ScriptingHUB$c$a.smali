.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->serializedSelectedPanelIndex:I

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->H0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->I0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
