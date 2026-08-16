.class public Lth/D;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Loh/A0;->c:Loh/A0;

    iput-object v0, p0, Lth/D;->b:Loh/t;

    return-void
.end method

.method public constructor <init>(Loh/t;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/D;->b:Loh/t;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/D;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lth/D;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/t;

    if-eqz v0, :cond_1

    new-instance v0, Lth/D;

    check-cast p0, Loh/t;

    invoke-direct {v0, p0}, Lth/D;-><init>(Loh/t;)V

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
    check-cast p0, Lth/D;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lth/D;->b:Loh/t;

    return-object v0
.end method
