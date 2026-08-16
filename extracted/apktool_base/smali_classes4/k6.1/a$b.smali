.class public Lk6/a$b;
.super LH7/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/a;-><init>(Ljava/util/List;Landroid/content/Context;Lk6/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lk6/a;


# direct methods
.method public constructor <init>(Lk6/a;I)V
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

    iput-object p1, p0, Lk6/a$b;->e:Lk6/a;

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

    new-instance v0, Lk6/a$f;

    iget-object v1, p0, Lk6/a$b;->e:Lk6/a;

    invoke-direct {v0, v1, p1}, Lk6/a$f;-><init>(Lk6/a;Landroid/view/View;)V

    return-object v0
.end method
