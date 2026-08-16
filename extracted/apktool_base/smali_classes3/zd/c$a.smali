.class public Lzd/c$a;
.super Lzd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzd/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 0

    return p1
.end method

.method public b(F)F
    .locals 0

    return p1
.end method
