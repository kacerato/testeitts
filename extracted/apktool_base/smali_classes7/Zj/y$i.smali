.class public LZj/y$i;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v2, LXh/t;->c1:Loh/x;

    const/16 v6, 0x40

    const/16 v7, 0x40

    const-string v1, "PBEwithMD2andRC2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;-><init>(Ljava/lang/String;Loh/x;ZIIII)V

    return-void
.end method
