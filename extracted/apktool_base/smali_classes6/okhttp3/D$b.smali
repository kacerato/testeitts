.class public Lokhttp3/D$b;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/D;->g(Lokhttp3/x;[BII)Lokhttp3/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/x;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lokhttp3/x;I[BI)V
    .locals 0

    iput-object p1, p0, Lokhttp3/D$b;->a:Lokhttp3/x;

    iput p2, p0, Lokhttp3/D$b;->b:I

    iput-object p3, p0, Lokhttp3/D$b;->c:[B

    iput p4, p0, Lokhttp3/D$b;->d:I

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lokhttp3/D$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/D$b;->a:Lokhttp3/x;

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/D$b;->c:[B

    iget v1, p0, Lokhttp3/D$b;->d:I

    iget v2, p0, Lokhttp3/D$b;->b:I

    invoke-interface {p1, v0, v1, v2}, LTg/d;->write([BII)LTg/d;

    return-void
.end method
