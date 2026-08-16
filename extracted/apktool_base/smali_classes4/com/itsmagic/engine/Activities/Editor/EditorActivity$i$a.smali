.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Utils/LegalInformation;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
