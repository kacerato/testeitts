.class public Lu5/e;
.super Lj7/d;
.source "SourceFile"


# instance fields
.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "path"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lj7/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lu5/e;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public o(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LF7/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, LF7/m;

    const v0, 0x7f0c01c5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LF7/m;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Ll7/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, Ll7/a;

    const v0, 0x7f0c007b

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ll7/a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
