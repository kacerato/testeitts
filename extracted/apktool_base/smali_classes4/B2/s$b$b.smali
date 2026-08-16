.class public final enum LB2/s$b$b;
.super LB2/s$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/s$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LB2/s$b;-><init>(Ljava/lang/String;ILjava/lang/String;LB2/s$a;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/zip/Checksum;
    .locals 1

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LB2/s$b$b;->b()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method
