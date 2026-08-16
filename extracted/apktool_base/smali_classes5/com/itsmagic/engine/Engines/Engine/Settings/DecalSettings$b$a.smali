.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    const/16 v1, 0xff

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->c(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;I)I

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->b(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/a;-><init>()V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
