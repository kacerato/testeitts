.class public Lnet/jpountz/xxhash/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/jpountz/xxhash/c;->c()Ljava/util/zip/Checksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/jpountz/xxhash/c;


# direct methods
.method public constructor <init>(Lnet/jpountz/xxhash/c;)V
    .locals 0

    iput-object p1, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 4

    iget-object v0, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0}, Lnet/jpountz/xxhash/c;->d()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0}, Lnet/jpountz/xxhash/c;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0}, Lnet/jpountz/xxhash/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {v0, v2, v3, v1}, Lnet/jpountz/xxhash/c;->f([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/jpountz/xxhash/c$a;->a:Lnet/jpountz/xxhash/c;

    invoke-virtual {v0, p1, p2, p3}, Lnet/jpountz/xxhash/c;->f([BII)V

    return-void
.end method
