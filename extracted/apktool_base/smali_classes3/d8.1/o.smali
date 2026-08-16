.class public Ld8/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:LJAVARuntime/Color;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;LJAVARuntime/Color;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "color",
            "fileName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/o;->a:Ljava/lang/String;

    iput-object p2, p0, Ld8/o;->b:LJAVARuntime/Color;

    iput-object p3, p0, Ld8/o;->c:Ljava/lang/String;

    return-void
.end method
