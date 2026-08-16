.class public Lhi/p;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;


# direct methods
.method public constructor <init>(Loh/x;)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/p;->b:Loh/x;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lhi/p;
    .locals 1

    instance-of v0, p0, Lhi/p;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/p;

    invoke-static {p0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/p;-><init>(Loh/x;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/p;->b:Loh/x;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhi/p;->b:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
