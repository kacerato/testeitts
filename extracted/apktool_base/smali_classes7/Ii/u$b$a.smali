.class public LIi/u$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIi/u$b;
    .locals 2

    new-instance v0, LIi/u$b;

    invoke-direct {v0}, LIi/u$b;-><init>()V

    iget-object v1, p0, LIi/u$b$a;->a:[B

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, LIi/u$b;->a(LIi/u$b;[B)[B

    :cond_0
    return-object v0
.end method

.method public b([B)LIi/u$b$a;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LIi/u$b$a;->a:[B

    return-object p0
.end method
