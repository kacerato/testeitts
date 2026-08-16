.class public Ld6/b$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b$m;->e(Ljava/io/File;Ljava/lang/String;Z)LF7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld6/b$m;


# direct methods
.method public constructor <init>(Ld6/b$m;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$m$a;->b:Ld6/b$m;

    iput-object p2, p0, Ld6/b$m$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V
    .locals 6
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

    iget-object v1, p0, Ld6/b$m$a;->a:Ljava/lang/String;

    const v3, 0x7f0701ce

    sget-object v5, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    const v2, 0x7f0701ce

    move-object v0, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, LVc/e;->b0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method
