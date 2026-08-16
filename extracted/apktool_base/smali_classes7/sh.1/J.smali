.class public Lsh/J;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lsh/J;->b:I

    iput-object p1, p0, Lsh/J;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Lsh/H;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsh/J;->b:I

    iput-object p1, p0, Lsh/J;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Lwh/e;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lsh/J;->b:I

    iput-object p1, p0, Lsh/J;->c:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lsh/J;
    .locals 3

    instance-of v0, p0, Lsh/J;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/J;

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_4

    check-cast p0, Loh/g;

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Lsh/J;

    invoke-static {p0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/J;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lsh/J;

    invoke-static {p0, v1}, Lwh/e;->x(Loh/M;Z)Lwh/e;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/J;-><init>(Lwh/e;)V

    return-object v0

    :cond_3
    new-instance v0, Lsh/J;

    invoke-static {p0, v1}, Lsh/H;->x(Loh/M;Z)Lsh/H;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/J;-><init>(Lsh/H;)V

    return-object v0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lsh/J;->u(Ljava/lang/Object;)Lsh/J;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown encoding in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, Lsh/J;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, Lsh/J;->b:I

    iget-object v2, p0, Lsh/J;->c:Loh/g;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lsh/J;->c:Loh/g;

    return-object v0
.end method
