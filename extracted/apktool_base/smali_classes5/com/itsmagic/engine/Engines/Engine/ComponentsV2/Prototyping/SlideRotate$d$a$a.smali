.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method
