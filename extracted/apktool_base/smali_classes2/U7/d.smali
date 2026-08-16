.class public LU7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    new-instance p3, Ljava/io/File;

    iget-object p4, p4, LF7/i;->a:Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, p1}, LVc/e;->G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method
