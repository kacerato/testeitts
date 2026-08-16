.class public final synthetic LIc/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/webkit/JsPromptResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIc/Q;->b:Landroid/webkit/JsPromptResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, LIc/Q;->b:Landroid/webkit/JsPromptResult;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$a;->c(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method
