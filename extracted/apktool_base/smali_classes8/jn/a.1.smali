.class public Ljn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Ljn/a;->a:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ljn/a;->b:[I

    return-void
.end method
