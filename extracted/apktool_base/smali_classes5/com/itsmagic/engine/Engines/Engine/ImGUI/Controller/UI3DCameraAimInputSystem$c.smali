.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
