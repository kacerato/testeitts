.class public Lsh/i$a;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lsh/e;

.field public final c:Lsh/C;


# direct methods
.method public constructor <init>(Lsh/C;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lsh/i$a;-><init>(Lsh/e;Lsh/C;)V

    return-void
.end method

.method public constructor <init>(Lsh/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsh/i$a;-><init>(Lsh/e;Lsh/C;)V

    return-void
.end method

.method public constructor <init>(Lsh/e;Lsh/C;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/i$a;->b:Lsh/e;

    iput-object p2, p0, Lsh/i$a;->c:Lsh/C;

    return-void
.end method

.method public static synthetic u(Ljava/lang/Object;)Lsh/i$a;
    .locals 0

    invoke-static {p0}, Lsh/i$a;->v(Ljava/lang/Object;)Lsh/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lsh/i$a;
    .locals 3

    instance-of v0, p0, Lsh/i$a;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/i$a;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/s;

    if-eqz v1, :cond_1

    new-instance p0, Lsh/i$a;

    invoke-static {v0}, Lsh/e;->u(Ljava/lang/Object;)Lsh/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/i$a;-><init>(Lsh/e;)V

    return-object p0

    :cond_1
    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_2

    new-instance p0, Lsh/i$a;

    invoke-static {v0}, Lsh/C;->u(Ljava/lang/Object;)Lsh/C;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/i$a;-><init>(Lsh/C;)V

    return-object p0

    :cond_2
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
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lsh/i$a;->c:Lsh/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsh/C;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsh/i$a;->b:Lsh/e;

    invoke-virtual {v0}, Lsh/e;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lsh/i$a;->b:Lsh/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
