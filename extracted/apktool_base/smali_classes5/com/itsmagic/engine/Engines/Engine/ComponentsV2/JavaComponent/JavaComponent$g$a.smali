.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->className:Ljava/lang/String;

    invoke-static {p1}, Ld8/j;->J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, Ln4/c;

    iget-object p1, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-direct {v1, p1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    :cond_0
    return-void
.end method
