.class public Lkn/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lkn/m$b;->a:[F

    return-void
.end method

.method public synthetic constructor <init>(Lkn/m$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lkn/m$b;-><init>()V

    return-void
.end method
