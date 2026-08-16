.class public Lhi/l0;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public b:Lhi/E;

.field public c:Lhi/E;


# direct methods
.method public constructor <init>(ILhi/E;)V
    .locals 1

    .line 1
    new-instance v0, Loh/K0;

    invoke-direct {v0, p1, p2}, Loh/K0;-><init>(ILoh/g;)V

    invoke-direct {p0, v0}, Lhi/l0;-><init>(Loh/M;)V

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1, v1}, Lhi/E;->w(Loh/M;Z)Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lhi/l0;->c:Lhi/E;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v1}, Lhi/E;->w(Loh/M;Z)Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lhi/l0;->b:Lhi/E;

    :goto_0
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/l0;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lhi/l0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/l0;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, Lhi/l0;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lhi/l0;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lhi/l0;->b:Lhi/E;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v2, p0, Lhi/l0;->c:Lhi/E;

    invoke-direct {v0, v1, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public v()Lhi/E;
    .locals 1

    iget-object v0, p0, Lhi/l0;->c:Lhi/E;

    return-object v0
.end method

.method public x()Lhi/E;
    .locals 1

    iget-object v0, p0, Lhi/l0;->b:Lhi/E;

    return-object v0
.end method
