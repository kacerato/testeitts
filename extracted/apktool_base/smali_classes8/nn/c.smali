.class public Lnn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lnn/c;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lnn/c;->b:[F

    return-void
.end method
