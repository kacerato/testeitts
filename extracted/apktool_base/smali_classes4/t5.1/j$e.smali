.class public Lt5/j$e;
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

    iput-object p1, p0, Lt5/j$e;->c:Lt5/j;

    iput-object p2, p0, Lt5/j$e;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lt5/j$e;->c:Lt5/j;

    invoke-static {p1}, Lt5/j;->v1(Lt5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    iget-object v0, p0, Lt5/j$e;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->q(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    iget-object p1, p0, Lt5/j$e;->c:Lt5/j;

    invoke-static {p1}, Lt5/j;->v1(Lt5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    iget-object p1, p0, Lt5/j$e;->c:Lt5/j;

    invoke-static {p1}, Lt5/j;->t1(Lt5/j;)V

    iget-object p1, p0, Lt5/j$e;->c:Lt5/j;

    invoke-static {p1}, Lt5/j;->w1(Lt5/j;)V

    return-void
.end method
