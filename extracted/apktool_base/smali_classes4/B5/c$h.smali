.class public LB5/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/c;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:LB5/c;


# direct methods
.method public constructor <init>(LB5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
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

    iput-object p1, p0, LB5/c$h;->c:LB5/c;

    iput-object p2, p0, LB5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LB5/c$h;->c:LB5/c;

    invoke-static {v0}, LB5/c;->i(LB5/c;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LB5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, LB5/c$h;->c:LB5/c;

    iget-object v1, p0, LB5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {v0, v1}, LB5/c;->j(LB5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, LB5/c$h;->c:LB5/c;

    iget-object v2, v2, LB5/c;->g:LC5/c;

    invoke-virtual {v2}, LC5/c;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LB5/c$h;->c:LB5/c;

    iget-object v2, v2, LB5/c;->g:LC5/c;

    invoke-virtual {v2, v1}, LC5/c;->i(I)LC5/d;

    move-result-object v2

    iget-object v2, v2, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v3, p0, LB5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LB5/c$h;->c:LB5/c;

    iget-object v2, v2, LB5/c;->g:LC5/c;

    invoke-virtual {v2, v1, v0}, LC5/c;->n(ILC5/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
