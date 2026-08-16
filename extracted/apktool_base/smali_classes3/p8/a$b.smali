.class public Lp8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/a;->a(Ljava/io/File;Landroid/widget/ImageView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lp8/a;


# direct methods
.method public constructor <init>(Lp8/a;[ZLjava/io/File;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$icon",
            "val$file",
            "val$imageView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp8/a$b;->d:Lp8/a;

    iput-object p2, p0, Lp8/a$b;->a:[Z

    iput-object p3, p0, Lp8/a$b;->b:Ljava/io/File;

    iput-object p4, p0, Lp8/a$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lp8/a$b;->a:[Z

    iget-object v1, p0, Lp8/a$b;->d:Lp8/a;

    invoke-static {v1}, Lp8/a;->d(Lp8/a;)LJAVARuntime/FilesPanelCustomIcon;

    move-result-object v1

    new-instance v2, LJAVARuntime/File;

    iget-object v3, p0, Lp8/a$b;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LJAVARuntime/File;-><init>(Ljava/lang/String;Z)V

    iget-object v3, p0, Lp8/a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, LJAVARuntime/FilesPanelCustomIcon;->applyIcon(LJAVARuntime/File;Landroid/widget/ImageView;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
