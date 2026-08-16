.class public final LW/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LW/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LW/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:LW/a;


# direct methods
.method public constructor <init>(LW/a;LW/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LW/a$a;->b:LW/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LW/a$a;->a:LW/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LW/f$a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LW/f$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, LW/f$a;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, LW/a$a;->b:LW/a;

    invoke-virtual {v2, p1}, LW/a;->b(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, LW/a$a;->a:LW/f;

    invoke-interface {p1, v1, p2}, LW/f;->a(Ljava/lang/Object;LW/f$a;)Z

    move-result p1

    return p1
.end method
