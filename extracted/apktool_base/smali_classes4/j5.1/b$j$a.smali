.class public Lj5/b$j$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$j;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Le4/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj5/b$j;


# direct methods
.method public constructor <init>(Lj5/b$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$j$a;->a:Lj5/b$j;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Le4/d;

    invoke-virtual {p0, p1}, Lj5/b$j$a;->e(Le4/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Le4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lj5/b$j$a;->a:Lj5/b$j;

    iget-object v0, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->setProceduralHeightmapBrushType(Le4/d;)V

    iget-object p1, p0, Lj5/b$j$a;->a:Lj5/b$j;

    iget-object p1, p1, Lj5/b$j;->a:Lj5/b;

    invoke-virtual {p1}, Lf5/d;->A()V

    return-void
.end method

.method public e(Le4/d;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Le4/d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Le4/d;

    invoke-virtual {p0, p1}, Lj5/b$j$a;->d(Le4/d;)V

    return-void
.end method
