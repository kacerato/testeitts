.class public LAk/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/t;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Loh/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LAk/t;->b:Ljava/lang/String;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LAk/t;
    .locals 1

    instance-of v0, p0, LAk/t;

    if-eqz v0, :cond_0

    check-cast p0, LAk/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/t;

    invoke-static {p0}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/t;-><init>(Loh/q;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/z0;

    iget-object v1, p0, LAk/t;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Loh/z0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LAk/t;->b:Ljava/lang/String;

    return-object v0
.end method
