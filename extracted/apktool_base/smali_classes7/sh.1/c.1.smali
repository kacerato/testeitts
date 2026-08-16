.class public Lsh/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Lsh/a;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lsh/K;->c(Loh/E;)[Lsh/a;

    move-result-object p1

    iput-object p1, p0, Lsh/c;->b:[Lsh/a;

    return-void
.end method

.method public constructor <init>(Lsh/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [Lsh/a;

    move-result-object p1

    iput-object p1, p0, Lsh/c;->b:[Lsh/a;

    return-void
.end method

.method public constructor <init>([Lsh/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lsh/K;->b([Lsh/a;)[Lsh/a;

    move-result-object p1

    iput-object p1, p0, Lsh/c;->b:[Lsh/a;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lsh/c;
    .locals 1

    instance-of v0, p0, Lsh/c;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lsh/c;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lsh/c;->v(Ljava/lang/Object;)Lsh/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lsh/c;->b:[Lsh/a;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()[Lsh/a;
    .locals 1

    iget-object v0, p0, Lsh/c;->b:[Lsh/a;

    invoke-static {v0}, Lsh/K;->b([Lsh/a;)[Lsh/a;

    move-result-object v0

    return-object v0
.end method
