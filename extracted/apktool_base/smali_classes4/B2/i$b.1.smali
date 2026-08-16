.class public final LB2/i$b;
.super LB2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/zip/Checksum;

.field public final synthetic c:LB2/i;


# direct methods
.method public constructor <init>(LB2/i;Ljava/util/zip/Checksum;)V
    .locals 0

    .line 2
    iput-object p1, p0, LB2/i$b;->c:LB2/i;

    invoke-direct {p0}, LB2/a;-><init>()V

    .line 3
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/Checksum;

    iput-object p1, p0, LB2/i$b;->b:Ljava/util/zip/Checksum;

    return-void
.end method

.method public synthetic constructor <init>(LB2/i;Ljava/util/zip/Checksum;LB2/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LB2/i$b;-><init>(LB2/i;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public h()LB2/p;
    .locals 4

    iget-object v0, p0, LB2/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    iget-object v2, p0, LB2/i$b;->c:LB2/i;

    invoke-static {v2}, LB2/i;->l(LB2/i;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    long-to-int v0, v0

    invoke-static {v0}, LB2/p;->i(I)LB2/p;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, LB2/p;->j(J)LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public k(B)V
    .locals 1

    iget-object v0, p0, LB2/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method public n([BII)V
    .locals 1

    iget-object v0, p0, LB2/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
