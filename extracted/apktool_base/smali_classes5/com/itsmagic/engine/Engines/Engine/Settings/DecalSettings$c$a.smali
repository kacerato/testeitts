.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$tittle",
            "val$context",
            "val$colorImage"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;)V

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, p1}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    return-void
.end method
