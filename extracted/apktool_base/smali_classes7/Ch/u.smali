.class public LCh/u;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/u;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([LCh/t;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, LCh/u;->b:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LCh/u;
    .locals 1

    instance-of v0, p0, LCh/u;

    if-eqz v0, :cond_0

    check-cast p0, LCh/u;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LCh/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LCh/u;->b:Loh/E;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LCh/u;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    return v0
.end method

.method public u(I)LCh/t;
    .locals 1

    iget-object v0, p0, LCh/u;->b:Loh/E;

    invoke-virtual {v0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LCh/t;->u(Ljava/lang/Object;)LCh/t;

    move-result-object p1

    return-object p1
.end method
