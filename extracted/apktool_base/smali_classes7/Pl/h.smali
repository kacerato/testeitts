.class public LPl/h;
.super LPl/d;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>([BLPl/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, LPl/d;-><init>(ZLPl/f;)V

    iput-object p1, p0, LPl/h;->d:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, LPl/h;->d:[B

    return-object v0
.end method
