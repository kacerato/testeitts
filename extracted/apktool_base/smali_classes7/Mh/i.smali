.class public LMh/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lfi/b;


# direct methods
.method public constructor <init>(Lfi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LMh/i;->b:Lfi/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lfi/b;

    invoke-direct {v0, p1}, Lfi/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LMh/i;->b:Lfi/b;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LMh/i;
    .locals 1

    instance-of v0, p0, LMh/i;

    if-eqz v0, :cond_0

    check-cast p0, LMh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LMh/i;

    invoke-static {p0}, Lfi/b;->u(Ljava/lang/Object;)Lfi/b;

    move-result-object p0

    invoke-direct {v0, p0}, LMh/i;-><init>(Lfi/b;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LMh/i;->b:Lfi/b;

    invoke-virtual {v0}, Lfi/b;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public v()Lfi/b;
    .locals 1

    iget-object v0, p0, LMh/i;->b:Lfi/b;

    return-object v0
.end method
