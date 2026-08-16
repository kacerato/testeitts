.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$c;->a:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$c;->a:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->h(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)LP7/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$c;->a:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->h(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)LP7/c;

    move-result-object v0

    invoke-virtual {v0}, LP7/c;->m()V

    :cond_0
    return-void
.end method
