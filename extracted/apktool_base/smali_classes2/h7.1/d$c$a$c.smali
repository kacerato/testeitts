.class public Lh7/d$c$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/d$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/d$c$a;


# direct methods
.method public constructor <init>(Lh7/d$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lh7/d$c$a$c;->a:Lh7/d$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lh7/d$c$a$c;->a:Lh7/d$c$a;

    iget-object p1, p1, Lh7/d$c$a;->b:Lh7/d$c;

    iget-object p1, p1, Lh7/d$c;->b:Lh7/d;

    invoke-virtual {p1}, Lh7/d;->G()V

    return-void
.end method
