.class public Loi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lwh/e;


# direct methods
.method public constructor <init>(Lwh/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lwh/d;->v()[Lwh/e;

    move-result-object p1

    iput-object p1, p0, Loi/e;->a:[Lwh/e;

    return-void
.end method

.method public static a(Lth/C;)Loi/e;
    .locals 3

    invoke-virtual {p0}, Lth/C;->x()I

    move-result v0

    invoke-static {v0}, Loi/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Loi/e;

    invoke-virtual {p0}, Lth/C;->v()Loh/g;

    move-result-object p0

    invoke-static {p0}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0

    invoke-direct {v0, p0}, Loi/e;-><init>(Lwh/d;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content of PKIBody wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lth/C;->x()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public b()[Loi/g;
    .locals 5

    iget-object v0, p0, Loi/e;->a:[Lwh/e;

    array-length v0, v0

    new-array v1, v0, [Loi/g;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Loi/g;

    iget-object v4, p0, Loi/e;->a:[Lwh/e;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Loi/g;-><init>(Lwh/e;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public d()Lwh/d;
    .locals 2

    new-instance v0, Lwh/d;

    iget-object v1, p0, Loi/e;->a:[Lwh/e;

    invoke-direct {v0, v1}, Lwh/d;-><init>([Lwh/e;)V

    return-object v0
.end method
