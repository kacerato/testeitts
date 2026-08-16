.class public LE2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LE2/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE2/a$a;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)D
    .locals 1

    sget-object v0, LE2/a$a;->a:LE2/a$a;

    invoke-virtual {v0, p0, p1}, LE2/p;->b(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    move-result-wide p0

    return-wide p0
.end method
