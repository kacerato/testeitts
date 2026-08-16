.class public Lhi/z;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public b:Loh/g;

.field public c:I


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lhi/z;->c:I

    iput-object p2, p0, Lhi/z;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/F;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lhi/z;-><init>(ILoh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, Lhi/z;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lhi/z;->b:Loh/g;

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lhi/z;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lhi/z;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/z;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, Lhi/z;-><init>(Loh/M;)V

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
    check-cast p0, Lhi/z;

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/z;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Loh/M;->W(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0}, Lhi/z;->v(Ljava/lang/Object;)Lhi/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, Lhi/z;->c:I

    iget-object v2, p0, Lhi/z;->b:Loh/g;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lhi/z;->c:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lhi/z;->b:Loh/g;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    :goto_0
    invoke-direct {p0, v1, v0, v3, v2}, Lhi/z;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lhi/z;->b:Loh/g;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    goto :goto_0

    :goto_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lhi/z;->b:Loh/g;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lhi/z;->c:I

    return v0
.end method
