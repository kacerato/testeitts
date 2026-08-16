.class LJAVARuntime/PropertiesButton$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PropertiesButton$1;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PropertiesButton$1;

.field final synthetic val$finalVar:LJAVARuntime/PropertiesButton;


# direct methods
.method public constructor <init>(LJAVARuntime/PropertiesButton$1;LJAVARuntime/PropertiesButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PropertiesButton$1$1;->this$0:LJAVARuntime/PropertiesButton$1;

    iput-object p2, p0, LJAVARuntime/PropertiesButton$1$1;->val$finalVar:LJAVARuntime/PropertiesButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    :try_start_0
    new-instance p1, LJAVARuntime/PropertiesButton$1$1$1;

    invoke-direct {p1, p0}, LJAVARuntime/PropertiesButton$1$1$1;-><init>(LJAVARuntime/PropertiesButton$1$1;)V

    invoke-static {p1}, LJAVARuntime/Thread;->runOnEngine(LJAVARuntime/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
