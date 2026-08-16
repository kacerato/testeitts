.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e$a;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e$a;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->H(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
