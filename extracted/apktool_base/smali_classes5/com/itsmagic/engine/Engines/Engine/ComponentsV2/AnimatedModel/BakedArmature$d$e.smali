.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "adapterPosition"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d$e;)V

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;LJAVARuntime/Runnable;)V

    return-void
.end method
