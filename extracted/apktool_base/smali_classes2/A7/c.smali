.class public final synthetic LA7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/c;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, LA7/c;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;Landroid/view/View;Z)V

    return-void
.end method
