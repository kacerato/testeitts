.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Utils/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/i;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/i;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    invoke-static {v0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
