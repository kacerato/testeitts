.class public LZj/b$g;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v2, LXh/t;->e4:Loh/x;

    const/16 v6, 0x28

    const/4 v7, 0x0

    const-string v1, "PBEWithSHAAnd128BitRC4"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;-><init>(Ljava/lang/String;Loh/x;ZIIII)V

    return-void
.end method
