.class public LZj/j$p;
.super LZj/i$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v2, LXh/t;->g4:Loh/x;

    const/16 v6, 0xc0

    const/16 v7, 0x40

    const-string v1, "PBEwithSHAandDES3Key-CBC"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, LZj/i$j;-><init>(Ljava/lang/String;Loh/x;ZIIII)V

    return-void
.end method
