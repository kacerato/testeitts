.class public LUj/y$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xc0

    const/4 v7, 0x0

    const-string v1, "PBEwithHmacTiger"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;-><init>(Ljava/lang/String;Loh/x;ZIIII)V

    return-void
.end method
