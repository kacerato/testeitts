.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$5"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;->buildBakedOf(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$e;)V

    const-string v0, "Done"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature$c$a$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
