.class public Lu5/b$f;
.super Lm7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b;->X1(Ljava/util/List;LYc/d;Ljava/lang/String;Lu5/b$q;Lu5/b$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/b$r;

.field public final synthetic b:Lu5/b;


# direct methods
.method public constructor <init>(Lu5/b;Lu5/b$r;)V
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

    iput-object p1, p0, Lu5/b$f;->b:Lu5/b;

    iput-object p2, p0, Lu5/b$f;->a:Lu5/b$r;

    invoke-direct {p0}, Lm7/a;-><init>()V

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

    iget-object p3, p0, Lu5/b$f;->a:Lu5/b$r;

    invoke-virtual {p3}, Lu5/b$r;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, LIc/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
