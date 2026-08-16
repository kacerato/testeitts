.class public Ld6/b$h;
.super Lh7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b;->E1(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic y:Ld6/b;


# direct methods
.method public constructor <init>(Ld6/b;Landroid/app/Activity;Ln7/e;Ln7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$h;->y:Ld6/b;

    invoke-direct {p0, p2, p3, p4}, Lh7/d;-><init>(Landroid/app/Activity;Ln7/e;Ln7/d;)V

    return-void
.end method


# virtual methods
.method public s(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public t(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public u(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Ld6/b$h;->y:Ld6/b;

    invoke-static {p2}, Ld6/b;->s1(Ld6/b;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ld6/e;->C1(Lo4/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    return-void
.end method

.method public v(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    return-void
.end method
