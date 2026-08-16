.class public LEi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/x;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LEi/e;-><init>([BI[B)V

    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEi/e;->a:[B

    iput p2, p0, LEi/e;->b:I

    iput-object p3, p0, LEi/e;->c:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, LEi/e;->c:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LEi/e;->b:I

    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, LEi/e;->a:[B

    return-object v0
.end method
