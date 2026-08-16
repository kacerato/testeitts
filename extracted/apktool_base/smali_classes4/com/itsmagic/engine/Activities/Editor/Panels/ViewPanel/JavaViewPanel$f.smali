.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->E0()V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$f;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$f;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)LJAVARuntime/ViewPanel;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/ViewPanel;->onBindView()V

    return-void
.end method
