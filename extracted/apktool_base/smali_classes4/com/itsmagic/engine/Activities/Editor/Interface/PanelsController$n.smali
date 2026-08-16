.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LN7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->l0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i0()V

    :goto_0
    return-void
.end method
