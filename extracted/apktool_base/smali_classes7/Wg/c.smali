.class public LWg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:LXg/o;

.field public b:LWg/a;


# direct methods
.method public constructor <init>(LXg/o;LWg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "mtl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWg/c;->a:LXg/o;

    iput-object p2, p0, LWg/c;->b:LWg/a;

    return-void
.end method
