.class public LB5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/d;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:LB5/d;


# direct methods
.method public constructor <init>(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LB5/d$b;->c:LB5/d;

    iput-object p2, p0, LB5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LB5/d$b;->c:LB5/d;

    invoke-static {v0}, LB5/d;->i(LB5/d;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LB5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, LB5/d$b;->c:LB5/d;

    iget-object v2, p0, LB5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {v1, v2}, LB5/d;->j(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, LB5/d$b;->c:LB5/d;

    iget-object v2, v2, LB5/d;->h:LC5/c;

    invoke-virtual {v2}, LC5/c;->getItemCount()I

    move-result v2

    iget-object v3, p0, LB5/d$b;->c:LB5/d;

    invoke-static {v3}, LB5/d;->k(LB5/d;)I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_0

    iget-object v2, p0, LB5/d$b;->c:LB5/d;

    iget-object v3, v2, LB5/d;->h:LC5/c;

    invoke-static {v2}, LB5/d;->k(LB5/d;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v0, v1}, LC5/c;->n(ILC5/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
