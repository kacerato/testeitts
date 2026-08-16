.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d(La4/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La4/b;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;La4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$shortcut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;->a:La4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;->a:La4/b;

    invoke-virtual {v0}, La4/b;->e()La4/a;

    move-result-object v0

    invoke-interface {v0}, La4/a;->run()V

    :cond_0
    return-void
.end method
