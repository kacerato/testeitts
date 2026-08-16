.class public Lwh/o;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1, v2}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lwh/o;->b:Loh/g;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/o;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lwh/l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/o;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Loh/e;->I(Z)Loh/e;

    move-result-object p1

    iput-object p1, p0, Lwh/o;->b:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/o;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lwh/o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lwh/o;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/o;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lwh/o;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lwh/o;->b:Loh/g;

    instance-of v1, v0, Lwh/l;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    invoke-direct {v1, v2, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Loh/y;

    if-eqz v1, :cond_1

    new-instance v1, Loh/K0;

    invoke-direct {v1, v3, v2, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1

    :cond_1
    new-instance v1, Loh/K0;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lwh/o;->b:Loh/g;

    instance-of v1, v0, Lwh/l;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v0, v0, Loh/y;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/o;->b:Loh/g;

    return-object v0
.end method
