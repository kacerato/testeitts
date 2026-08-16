.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$d;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$d;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Li4/e;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    return-void
.end method
