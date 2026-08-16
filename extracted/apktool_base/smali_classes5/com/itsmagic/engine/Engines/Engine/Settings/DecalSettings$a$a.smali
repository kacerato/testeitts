.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;->b:I

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;I)I

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/a;-><init>()V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
