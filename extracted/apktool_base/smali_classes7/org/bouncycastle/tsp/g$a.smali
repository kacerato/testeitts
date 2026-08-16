.class public Lorg/bouncycastle/tsp/g$a;
.super Loh/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Loh/c;->G(I)[B

    move-result-object v0

    invoke-static {p1}, Loh/c;->K(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Loh/r0;-><init>([BI)V

    return-void
.end method
