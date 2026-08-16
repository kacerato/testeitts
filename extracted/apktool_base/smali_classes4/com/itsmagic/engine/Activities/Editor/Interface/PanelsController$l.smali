.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/d;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj4/a;
    .locals 1

    sget-object v0, Lj4/a;->None:Lj4/a;

    return-object v0
.end method

.method public b()Lj4/b;
    .locals 1

    sget-object v0, Lj4/b;->None:Lj4/b;

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toggle()V
    .locals 0

    return-void
.end method
