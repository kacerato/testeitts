.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj4/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    return-object v0
.end method

.method public b()Lj4/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitDirection:Lj4/b;

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->P(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->Q(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Lk4/d;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->R(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Landroid/widget/FrameLayout;Lk4/d;)Z

    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v1, Lj4/a;->None:Lj4/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->S(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    sget-object v1, Lj4/a;->CloseUp:Lj4/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toggle()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v1, Lj4/a;->None:Lj4/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v1, Lj4/a;->CloseUp:Lj4/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->S(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    return-void
.end method
