.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$cascades"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f$a$a;->b:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->setShadowCascades(I)V

    return-void
.end method
