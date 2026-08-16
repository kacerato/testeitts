.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->h(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)LP7/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->h(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)LP7/c;

    move-result-object v0

    invoke-virtual {v0}, LP7/c;->H()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->i(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
