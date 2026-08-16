.class public LIb/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tid",
            "tvertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LIb/f$b;->a:I

    iput p2, p0, LIb/f$b;->b:I

    return-void
.end method

.method public static synthetic a(LIb/f$b;)I
    .locals 0

    iget p0, p0, LIb/f$b;->b:I

    return p0
.end method

.method public static synthetic b(LIb/f$b;I)I
    .locals 0

    iput p1, p0, LIb/f$b;->b:I

    return p1
.end method

.method public static synthetic c(LIb/f$b;)I
    .locals 0

    iget p0, p0, LIb/f$b;->a:I

    return p0
.end method

.method public static synthetic d(LIb/f$b;I)I
    .locals 0

    iput p1, p0, LIb/f$b;->a:I

    return p1
.end method
