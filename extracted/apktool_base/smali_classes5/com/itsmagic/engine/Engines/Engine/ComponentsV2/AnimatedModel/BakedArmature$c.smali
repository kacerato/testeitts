.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
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

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c;)V

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
