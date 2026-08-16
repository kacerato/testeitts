.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIFunctionCall - set boolean value"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->q(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a$a;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f$a;Ljava/lang/Exception;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
