.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;

    const v1, 0x3dcccccd    # 0.1f

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v1, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    :cond_0
    return-void
.end method
