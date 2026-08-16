.class public LZ5/f$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f$p;->e(Ljava/io/File;Ljava/lang/String;Z)LF7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LZ5/f$p;


# direct methods
.method public constructor <init>(LZ5/f$p;Ljava/lang/String;)V
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

    iput-object p1, p0, LZ5/f$p$a;->b:LZ5/f$p;

    iput-object p2, p0, LZ5/f$p$a;->a:Ljava/lang/String;

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

    iget-object p3, p0, LZ5/f$p$a;->a:Ljava/lang/String;

    const p4, 0x7f0701ce

    invoke-static {p2, p3, p4, p4, p1}, LVc/e;->a0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;)V

    return-void
.end method
