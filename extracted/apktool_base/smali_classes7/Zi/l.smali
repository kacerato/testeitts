.class public LZi/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZi/l$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)[B
    .locals 2

    new-instance v0, LZi/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZi/l$b;-><init>(LZi/l$a;)V

    invoke-virtual {v0, p1, p2}, LZi/l$b;->a(IZ)[B

    move-result-object p1

    return-object p1
.end method
