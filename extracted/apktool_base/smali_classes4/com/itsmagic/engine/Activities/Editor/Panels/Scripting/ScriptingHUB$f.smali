.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->v(Lo4/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$openScript"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->G0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Ljava/lang/String;Z)Z

    return-void
.end method
