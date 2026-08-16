.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "Left"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;)V

    const-string v3, "Top"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;)V

    const-string v3, "Right"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;)V

    const-string v3, "Bottom"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
