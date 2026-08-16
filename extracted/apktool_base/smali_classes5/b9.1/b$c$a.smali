.class public Lb9/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9/b$c;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lb9/b$c;


# direct methods
.method public constructor <init>(Lb9/b$c;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb9/b$c$a;->c:Lb9/b$c;

    iput-object p2, p0, Lb9/b$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LuaClassInspector - set boolean"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lb9/b$c$a;->c:Lb9/b$c;

    iget-object v2, v1, Lb9/b$c;->a:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lb9/b$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lb9/b$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    sget-object v3, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    :goto_1
    invoke-virtual {v2, v1, v3}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
