.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->J()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
