.class public Led/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhd/d;


# direct methods
.method public constructor <init>(Lhd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/e;->a:Lhd/d;

    return-void
.end method

.method public static synthetic a(Led/e;)Lhd/d;
    .locals 0

    iget-object p0, p0, Led/e;->a:Lhd/d;

    return-object p0
.end method


# virtual methods
.method public b(Lhd/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    new-instance v0, Led/e$a;

    invoke-direct {v0, p0, p1}, Led/e$a;-><init>(Led/e;Lhd/e;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
