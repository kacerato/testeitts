.class public final synthetic LIc/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/webkit/JsPromptResult;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIc/P;->b:Landroid/webkit/JsPromptResult;

    iput-object p2, p0, LIc/P;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, LIc/P;->b:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, LIc/P;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$a;->e(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
