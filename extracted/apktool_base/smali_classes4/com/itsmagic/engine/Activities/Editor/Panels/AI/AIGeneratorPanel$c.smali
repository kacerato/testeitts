.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->G1(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries",
            "val$content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method
