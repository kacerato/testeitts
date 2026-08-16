.class public Lkn/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:[F

.field public d:F

.field public final e:[F

.field public final f:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/n$b;->a:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/n$b;->b:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/n$b;->c:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/n$b;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/n$b;->f:[F

    return-void
.end method
