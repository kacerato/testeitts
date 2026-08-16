.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->h0(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

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
            "list"
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;)V

    const-string v2, "Top-left"

    const-class v3, LU9/b;

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->m(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;)V

    const-string v2, "Top-right"

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->x(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;)V

    const-string v2, "Bottom-right"

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;)V

    const-string v2, "Bottom-left"

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
