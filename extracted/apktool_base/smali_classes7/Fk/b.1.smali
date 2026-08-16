.class public LFk/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/C0;


# direct methods
.method public constructor <init>(Loh/C0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/b;->b:Loh/C0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/b;->b:Loh/C0;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LFk/b;
    .locals 1

    instance-of v0, p0, LFk/b;

    if-eqz v0, :cond_0

    check-cast p0, LFk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/b;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-direct {v0, p0}, LFk/b;-><init>([B)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LFk/b;->b:Loh/C0;

    return-object v0
.end method

.method public v()Loh/C0;
    .locals 1

    iget-object v0, p0, LFk/b;->b:Loh/C0;

    return-object v0
.end method
