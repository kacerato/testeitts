.class public Lhi/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/c;


# direct methods
.method public constructor <init>(Loh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/d;->b:Loh/c;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/r0;

    invoke-direct {v0, p1}, Loh/r0;-><init>([B)V

    iput-object v0, p0, Lhi/d;->b:Loh/c;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/d;
    .locals 1

    sget-object v0, Lhi/B;->M:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/d;->v(Ljava/lang/Object;)Lhi/d;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lhi/d;
    .locals 1

    instance-of v0, p0, Lhi/d;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/d;

    invoke-static {p0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/d;-><init>(Loh/c;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/d;
    .locals 0

    invoke-static {p0, p1}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object p0

    invoke-static {p0}, Lhi/d;->v(Ljava/lang/Object;)Lhi/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/d;->b:Loh/c;

    return-object v0
.end method

.method public x()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/d;->b:Loh/c;

    return-object v0
.end method
