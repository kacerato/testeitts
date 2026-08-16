.class public Lp5/b$m;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$formatText",
            "val$exportToPlayStore"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$m;->d:Lp5/b;

    iput-object p2, p0, Lp5/b$m;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lp5/b$m;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v0, Lp5/b$m$a;

    invoke-direct {v0, p0}, Lp5/b$m$a;-><init>(Lp5/b$m;)V

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
