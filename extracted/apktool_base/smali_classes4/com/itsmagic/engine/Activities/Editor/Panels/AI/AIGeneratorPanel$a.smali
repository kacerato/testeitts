.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->z1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;)V

    return-void
.end method
