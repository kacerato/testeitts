.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "canceled"
        }
    .end annotation

    if-nez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;F)V

    const/4 p1, 0x1

    invoke-static {p1, p2}, Lq7/a;->u1(ZLq7/a$d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;->buildBakedOf(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;)V

    :cond_1
    :goto_0
    return-void
.end method
