.class public Lt5/j$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/j;->C1(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

.field public final synthetic c:Lt5/j;


# direct methods
.method public constructor <init>(Lt5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    iput-object p1, p0, Lt5/j$d;->c:Lt5/j;

    iput-object p2, p0, Lt5/j$d;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lt5/j$d;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget-object v1, p0, Lt5/j$d;->c:Lt5/j;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v3, Lt5/j$d$a;

    invoke-direct {v3, p0}, Lt5/j$d$a;-><init>(Lt5/j$d;)V

    invoke-static {v0, p1, v1, v2, v3}, Lt5/f;->L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V

    return-void
.end method
