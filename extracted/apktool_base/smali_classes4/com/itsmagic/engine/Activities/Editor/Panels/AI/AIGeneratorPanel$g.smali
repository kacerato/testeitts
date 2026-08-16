.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->C1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Lq7/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading",
            "val$prompt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->a:Lq7/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskTag"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "Ops!"

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;->a:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method
