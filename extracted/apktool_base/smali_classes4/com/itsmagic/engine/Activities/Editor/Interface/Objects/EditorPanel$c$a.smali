.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->d()V

    :cond_0
    return-void
.end method
