.class public Lu5/d$h;
.super Lu5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->p2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;Lu5/d$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/d$v;

.field public final synthetic b:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;Lu5/d$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$h;->b:Lu5/d;

    iput-object p2, p0, Lu5/d$h;->a:Lu5/d$v;

    invoke-direct {p0}, Lu5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    iget-object p3, p0, Lu5/d$h;->a:Lu5/d$v;

    invoke-virtual {p3}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, LIc/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
