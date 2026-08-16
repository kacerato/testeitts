.class public LFk/z;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/z;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Loh/J;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-interface {p1}, Loh/J;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LFk/z;->b:Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LFk/z;
    .locals 1

    instance-of v0, p0, LFk/z;

    if-eqz v0, :cond_0

    check-cast p0, LFk/z;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/z;

    invoke-static {p0}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/z;-><init>(Loh/J;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/M0;

    iget-object v1, p0, LFk/z;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LFk/z;->b:Ljava/lang/String;

    return-object v0
.end method
