.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method
