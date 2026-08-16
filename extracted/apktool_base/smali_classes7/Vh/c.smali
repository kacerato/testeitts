.class public LVh/c;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:I

.field public c:Loh/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LVh/c;->b:I

    sget-object v0, Loh/A0;->c:Loh/A0;

    iput-object v0, p0, LVh/c;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LVh/c;->b:I

    iput-object p2, p0, LVh/c;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(LVh/m;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LVh/c;->b:I

    iput-object p1, p0, LVh/c;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {p1, v1}, Loh/t;->G(Loh/M;Z)Loh/t;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LVh/c;->c:Loh/g;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1, v1}, LVh/m;->v(Loh/M;Z)LVh/m;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput v0, p0, LVh/c;->b:I

    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/c;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, LVh/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, LVh/c;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, LVh/c;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
    check-cast p0, LVh/c;

    return-object p0
.end method

.method public static v(Loh/M;Z)LVh/c;
    .locals 0

    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object p0

    invoke-static {p0}, LVh/c;->u(Ljava/lang/Object;)LVh/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, LVh/c;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, LVh/c;->b:I

    iget-object v2, p0, LVh/c;->c:Loh/g;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LVh/c;->c:Loh/g;

    return-object v0
.end method
