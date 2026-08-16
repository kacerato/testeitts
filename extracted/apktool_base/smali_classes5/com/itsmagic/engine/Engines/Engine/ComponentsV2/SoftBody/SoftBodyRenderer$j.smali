.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    return-void
.end method
