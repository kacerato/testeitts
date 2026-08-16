.class public Lokhttp3/D$a;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/D;->c(Lokhttp3/x;LTg/f;)Lokhttp3/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/x;

.field public final synthetic b:LTg/f;


# direct methods
.method public constructor <init>(Lokhttp3/x;LTg/f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/D$a;->a:Lokhttp3/x;

    iput-object p2, p0, Lokhttp3/D$a;->b:LTg/f;

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->b:LTg/f;

    invoke-virtual {v0}, LTg/f;->S()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->a:Lokhttp3/x;

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->b:LTg/f;

    invoke-interface {p1, v0}, LTg/d;->D(LTg/f;)LTg/d;

    return-void
.end method
