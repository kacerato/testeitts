.class public Lv3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lv3/l;


# direct methods
.method public constructor <init>(ILv3/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/h;->a:I

    iput-object p2, p0, Lv3/h;->b:Lv3/l;

    return-void
.end method
