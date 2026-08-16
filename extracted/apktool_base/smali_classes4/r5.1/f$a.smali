.class public Lr5/f$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/f;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lr5/f;


# direct methods
.method public constructor <init>(Lr5/f;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$icon"
        }
    .end annotation

    iput-object p1, p0, Lr5/f$a;->c:Lr5/f;

    iput-object p2, p0, Lr5/f$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Lr5/f$a$a;

    invoke-direct {p1, p0}, Lr5/f$a$a;-><init>(Lr5/f$a;)V

    invoke-static {p1}, Lw3/f;->e(Lw3/f$c;)V

    return-void
.end method
