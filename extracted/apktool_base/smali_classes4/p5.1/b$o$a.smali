.class public Lp5/b$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b$o;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/b$o;


# direct methods
.method public constructor <init>(Lp5/b$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$o$a;->a:Lp5/b$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingBar"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lp5/b$o$a$a;

    invoke-direct {v0, p0, p1}, Lp5/b$o$a$a;-><init>(Lp5/b$o$a;Lq7/a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->j(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method
