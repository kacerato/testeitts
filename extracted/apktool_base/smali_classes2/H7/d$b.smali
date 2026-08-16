.class public LH7/d$b;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:LH7/d;


# direct methods
.method public constructor <init>(LH7/d;I)V
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

    iput-object p1, p0, LH7/d$b;->d:LH7/d;

    invoke-direct {p0}, LIc/m;-><init>()V

    iput p2, p0, LH7/d$b;->b:I

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;)LH7/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
