.class public Lt5/f$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/f;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt5/f;


# direct methods
.method public constructor <init>(Lt5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt5/f$c;->b:Lt5/f;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lt5/f$c;->b:Lt5/f;

    invoke-static {p1}, Lt5/f;->v1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iget-object v0, p0, Lt5/f$c;->b:Lt5/f;

    invoke-static {v0}, Lt5/f;->w1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object p1, p0, Lt5/f$c;->b:Lt5/f;

    invoke-static {p1}, Lt5/f;->v1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lt5/f;->x1(Lt5/f;IZ)V

    return-void
.end method
