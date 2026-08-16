.class public Lp5/b$l;
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

.field public final synthetic c:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$worldText"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$l;->c:Lp5/b;

    iput-object p2, p0, Lp5/b$l;->b:Landroid/widget/TextView;

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
            "v"
        }
    .end annotation

    new-instance p1, Lp5/b$l$a;

    invoke-direct {p1, p0}, Lp5/b$l$a;-><init>(Lp5/b$l;)V

    const-string v0, ".world"

    invoke-static {v0, p1}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    return-void
.end method
