.class public LP8/f$C$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f$C;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP8/f$C;


# direct methods
.method public constructor <init>(LP8/f$C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP8/f$C$e;->b:LP8/f$C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LP8/f$C$e;->b:LP8/f$C;

    iget-object v0, v0, LP8/f$C;->b:LP8/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LP8/p;->b()V

    :cond_0
    return-void
.end method
