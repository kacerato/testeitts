.class public LZ5/f$m;
.super Lh7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f;->c2(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic y:LZ5/f;


# direct methods
.method public constructor <init>(LZ5/f;Landroid/app/Activity;Ln7/e;Ln7/d;)V
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

    iput-object p1, p0, LZ5/f$m;->y:LZ5/f;

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
    .locals 1
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

    iget-object v0, p0, LZ5/f$m;->y:LZ5/f;

    invoke-static {v0}, LZ5/f;->T1(LZ5/f;)LZ5/f$p;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ5/f$p;->h(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZ5/f$m;->y:LZ5/f;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LZ5/f;->U1(LZ5/f;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, LZ5/f$m;->y:LZ5/f;

    invoke-static {v0, p1, p2}, LZ5/f;->r1(LZ5/f;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V

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
