.class public abstract LAh/n;
.super Loh/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    return-void
.end method

.method public static u(Ljava/lang/Object;)LAh/n;
    .locals 2

    instance-of v0, p0, LAh/n;

    if-eqz v0, :cond_0

    check-cast p0, LAh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    sget-object v1, LAh/h;->r:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LAh/k;

    invoke-direct {v0, p0}, LAh/k;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, LAh/o;

    invoke-direct {v0, p0}, LAh/o;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract v()Loh/x;
.end method
