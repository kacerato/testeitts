.class public LIc/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:LIc/v;


# direct methods
.method public constructor <init>(FLIc/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeOut",
            "invokeListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LIc/u;->a:F

    iput-object p2, p0, LIc/u;->b:LIc/v;

    return-void
.end method
