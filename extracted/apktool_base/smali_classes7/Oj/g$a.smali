.class public final LOj/g$a;
.super LOj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "X25519"

    invoke-direct {p0, v0}, LOj/g;-><init>(Ljava/lang/String;)V

    return-void
.end method
