.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->J0(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lw4/a;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;ZLw4/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$focus",
            "val$panel",
            "val$inProjectPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->b:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->c:Lw4/a;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Li4/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    invoke-interface {v0}, Li4/e;->a()V

    invoke-static {p0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->c:Lw4/a;

    invoke-interface {v0, v1}, Li4/e;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->c:Lw4/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lw4/a;->q1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
