.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->D(Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, LN7/c;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n0()V

    :cond_0
    invoke-static {}, LN7/c;->H()Ld7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->H()Ld7/a;

    move-result-object v0

    invoke-virtual {v0}, Ld7/a;->z()V

    :cond_1
    return-void
.end method
