.class public Lbl/q$a;
.super Lbl/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:LBi/Y;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, v0}, Lbl/q;-><init>(II)V

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/H;->s(LBi/f;)LTi/i;

    move-result-object v0

    iput-object v0, p0, Lbl/q$a;->c:LBi/Y;

    return-void
.end method


# virtual methods
.method public a([BS)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbl/q$a;->f([BS)V

    return-void
.end method

.method public b([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lbl/q$a;->e([BII)V

    return-void
.end method

.method public c([BS)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbl/q$a;->f([BS)V

    return-void
.end method

.method public d([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lbl/q$a;->e([BII)V

    return-void
.end method

.method public final e([BII)V
    .locals 6

    new-array v1, p3, [B

    iget-object v0, p0, Lbl/q$a;->c:LBi/Y;

    const/4 v2, 0x0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, LBi/Y;->f([BII[BI)I

    return-void
.end method

.method public final f([BS)V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    new-instance p2, LXi/w0;

    new-instance v3, LXi/o0;

    const/16 v4, 0x20

    invoke-direct {v3, p1, v2, v4}, LXi/o0;-><init>([BII)V

    invoke-direct {p2, v3, v0}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object p1, p0, Lbl/q$a;->c:LBi/Y;

    invoke-interface {p1, v1, p2}, LBi/Y;->a(ZLBi/k;)V

    return-void
.end method
