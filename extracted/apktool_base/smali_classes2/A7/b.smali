.class public final synthetic LA7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, LA7/b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-static {v0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
