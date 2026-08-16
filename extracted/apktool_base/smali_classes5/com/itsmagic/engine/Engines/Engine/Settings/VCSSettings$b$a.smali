.class public Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;->maximumVCSDiskUsage:I

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
