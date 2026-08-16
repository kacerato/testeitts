.class public Lsh/B;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:[Lsh/I;

.field public static final f:[Lsh/y;


# instance fields
.field public final b:Loh/E;

.field public final c:Loh/E;

.field public final d:Loh/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lsh/I;

    sput-object v1, Lsh/B;->e:[Lsh/I;

    new-array v0, v0, [Lsh/y;

    sput-object v0, Lsh/B;->f:[Lsh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lsh/B;->b:Loh/E;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lsh/B;->c:Loh/E;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lsh/B;->d:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/G;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lsh/B;->b:Loh/E;

    new-instance p1, Loh/G0;

    invoke-direct {p1}, Loh/G0;-><init>()V

    iput-object p1, p0, Lsh/B;->c:Loh/E;

    new-instance p1, Loh/G0;

    invoke-direct {p1}, Loh/G0;-><init>()V

    iput-object p1, p0, Lsh/B;->d:Loh/E;

    return-void
.end method

.method public constructor <init>([Lsh/G;[Lsh/I;[Lsh/y;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lsh/B;->b:Loh/E;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lsh/B;->c:Loh/E;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p3}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lsh/B;->d:Loh/E;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lsh/B;
    .locals 1

    instance-of v0, p0, Lsh/B;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/B;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/B;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/B;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lsh/B;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lsh/B;->w(Ljava/lang/Object;)Lsh/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/B;->b:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/B;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/B;->d:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/E;
    .locals 1

    iget-object v0, p0, Lsh/B;->c:Loh/E;

    return-object v0
.end method

.method public v()Loh/E;
    .locals 1

    iget-object v0, p0, Lsh/B;->b:Loh/E;

    return-object v0
.end method

.method public y()Loh/E;
    .locals 1

    iget-object v0, p0, Lsh/B;->d:Loh/E;

    return-object v0
.end method
