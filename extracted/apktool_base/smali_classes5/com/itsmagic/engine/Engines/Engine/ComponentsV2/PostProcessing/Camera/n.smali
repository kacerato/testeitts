.class public final synthetic Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:LVb/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/n;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/n;->c:LVb/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/n;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/n;->c:LVb/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ProcessingGraph$g;->a(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V

    return-void
.end method
