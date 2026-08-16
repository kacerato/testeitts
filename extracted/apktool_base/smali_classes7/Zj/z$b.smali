.class public LZj/z$b;
.super Lak/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5 IV"

    return-object v0
.end method
