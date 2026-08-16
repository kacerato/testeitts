.class public LCh/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/q;


# direct methods
.method public constructor <init>(Loh/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCh/s;->a:Loh/q;

    return-void
.end method

.method public static a(Ljava/lang/Object;)LCh/s;
    .locals 1

    instance-of v0, p0, LCh/s;

    if-eqz v0, :cond_0

    check-cast p0, LCh/s;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/q;

    if-eqz v0, :cond_1

    new-instance v0, LCh/s;

    invoke-static {p0}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/s;-><init>(Loh/q;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()Loh/q;
    .locals 1

    iget-object v0, p0, LCh/s;->a:Loh/q;

    return-object v0
.end method

.method public c()Loh/B;
    .locals 1

    iget-object v0, p0, LCh/s;->a:Loh/q;

    invoke-virtual {v0}, Loh/B;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method
