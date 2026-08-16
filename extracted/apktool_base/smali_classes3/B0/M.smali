.class public final LB0/M;
.super LB0/L;
.source "SourceFile"


# instance fields
.field public final f:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, LB0/L;-><init>([B)V

    iput-object p1, p0, LB0/M;->f:[B

    return-void
.end method


# virtual methods
.method public final l0()[B
    .locals 1

    iget-object v0, p0, LB0/M;->f:[B

    return-object v0
.end method
