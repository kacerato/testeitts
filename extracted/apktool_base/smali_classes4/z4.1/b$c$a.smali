.class public Lz4/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/b$c;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz4/b$c;


# direct methods
.method public constructor <init>(Lz4/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz4/b$c$a;->a:Lz4/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent",
            "activity"
        }
    .end annotation

    new-instance p1, Lz4/b$c$a$a;

    invoke-direct {p1, p0, p3}, Lz4/b$c$a$a;-><init>(Lz4/b$c$a;Landroid/content/Intent;)V

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void
.end method
