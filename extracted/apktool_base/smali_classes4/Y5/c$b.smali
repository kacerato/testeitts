.class public LY5/c$b;
.super LH7/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/c;-><init>(Ljava/util/List;Landroid/content/Context;LY5/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LY5/c;


# direct methods
.method public constructor <init>(LY5/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "layout"
        }
    .end annotation

    iput-object p1, p0, LY5/c$b;->e:LY5/c;

    invoke-direct {p0, p1, p2}, LH7/d$b;-><init>(LH7/d;I)V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;)LH7/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    new-instance v0, LY5/c$e;

    iget-object v1, p0, LY5/c$b;->e:LY5/c;

    invoke-direct {v0, v1, p1}, LY5/c$e;-><init>(LY5/c;Landroid/view/View;)V

    return-object v0
.end method
