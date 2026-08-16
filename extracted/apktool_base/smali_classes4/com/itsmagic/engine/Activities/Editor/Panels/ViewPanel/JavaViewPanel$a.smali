.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJAVARuntime/ViewPanel;Ljava/lang/Class;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "classAddress",
            "javaMetaInfo"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-static {p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;LJAVARuntime/ViewPanel;)LJAVARuntime/ViewPanel;

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    iput-object p2, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->a0:Ljava/lang/Class;

    invoke-virtual {p1, p3}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->r1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
