.class public LFk/A0;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/A0$a;
    }
.end annotation


# instance fields
.field public final b:LFk/p0;

.field public final c:LFk/i;


# direct methods
.method public constructor <init>(LFk/p0;LFk/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/A0;->b:LFk/p0;

    iput-object p2, p0, LFk/A0;->c:LFk/i;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/p0;->x(Ljava/lang/Object;)LFk/p0;

    move-result-object v0

    iput-object v0, p0, LFk/A0;->b:LFk/p0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/i;->w(Ljava/lang/Object;)LFk/i;

    move-result-object p1

    iput-object p1, p0, LFk/A0;->c:LFk/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/A0$a;
    .locals 1

    new-instance v0, LFk/A0$a;

    invoke-direct {v0}, LFk/A0$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LFk/A0;
    .locals 1

    instance-of v0, p0, LFk/A0;

    if-eqz v0, :cond_0

    check-cast p0, LFk/A0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/A0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/A0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LFk/A0;->b:LFk/p0;

    iget-object v2, p0, LFk/A0;->c:LFk/i;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidityPeriod["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LFk/A0;->b:LFk/p0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LFk/A0;->c:LFk/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()LFk/i;
    .locals 1

    iget-object v0, p0, LFk/A0;->c:LFk/i;

    return-object v0
.end method

.method public x()LFk/p0;
    .locals 1

    iget-object v0, p0, LFk/A0;->b:LFk/p0;

    return-object v0
.end method
