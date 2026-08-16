.class public Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->l()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
