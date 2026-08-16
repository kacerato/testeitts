.class public final enum LE2/h$b$a;
.super LE2/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LE2/h$b;-><init>(Ljava/lang/String;ILE2/h$a;)V

    return-void
.end method


# virtual methods
.method public b(JJJ)J
    .locals 0

    mul-long/2addr p1, p3

    rem-long/2addr p1, p5

    return-wide p1
.end method

.method public d(JJ)J
    .locals 0

    mul-long/2addr p1, p1

    rem-long/2addr p1, p3

    return-wide p1
.end method
