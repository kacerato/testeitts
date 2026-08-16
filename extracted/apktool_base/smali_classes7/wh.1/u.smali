.class public Lwh/u;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public b:I

.field public c:Loh/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lwh/u;->b:I

    sget-object v0, Loh/A0;->c:Loh/A0;

    iput-object v0, p0, Lwh/u;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(ILwh/r;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lwh/u;->b:I

    iput-object p2, p0, Lwh/u;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, Lwh/u;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwh/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1, v1}, Lwh/r;->v(Loh/M;Z)Lwh/r;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lwh/u;->c:Loh/g;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lwh/s;->w(Loh/M;Z)Lwh/s;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Loh/A0;->c:Loh/A0;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Lwh/s;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lwh/u;->b:I

    iput-object p1, p0, Lwh/u;->c:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/u;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lwh/u;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lwh/u;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, Lwh/u;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

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

    :cond_2
    :goto_0
    check-cast p0, Lwh/u;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, Lwh/u;->b:I

    iget-object v2, p0, Lwh/u;->c:Loh/g;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/u;->c:Loh/g;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lwh/u;->b:I

    return v0
.end method
