.class public Ljn/A$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>([F[FII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "fromType",
            "toType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn/A$b;->a:[F

    iput-object p2, p0, Ljn/A$b;->b:[F

    iput p3, p0, Ljn/A$b;->c:I

    iput p4, p0, Ljn/A$b;->d:I

    return-void
.end method
