.class public Lp5/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b;->E1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$versionName",
            "val$versionCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$h;->c:Lp5/b;

    iput-object p2, p0, Lp5/b$h;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lp5/b$h;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lp5/b$h;->c:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p2, p0, Lp5/b$h;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionName:Ljava/lang/String;

    iget-object p1, p0, Lp5/b$h;->c:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p2, p0, Lp5/b$h;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionCode:Ljava/lang/String;

    iget-object p1, p0, Lp5/b$h;->c:Lp5/b;

    invoke-static {p1}, Lp5/b;->p1(Lp5/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
