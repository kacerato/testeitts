.class public final Lck/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lck/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/security/spec/AlgorithmParameterSpec;

.field public d:Lhi/b;

.field public e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/r$a;->a:Ljava/lang/String;

    iput p2, p0, Lck/r$a;->b:I

    new-instance p1, Lhi/b;

    sget-object p2, Lki/r;->P6:Loh/x;

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-direct {p1, p2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object p1, p0, Lck/r$a;->d:Lhi/b;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lck/r$a;->e:[B

    return-void
.end method


# virtual methods
.method public a()Lck/r;
    .locals 7

    new-instance v6, Lck/r;

    iget-object v1, p0, Lck/r$a;->a:Ljava/lang/String;

    iget v2, p0, Lck/r$a;->b:I

    iget-object v3, p0, Lck/r$a;->c:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, p0, Lck/r$a;->d:Lhi/b;

    iget-object v5, p0, Lck/r$a;->e:[B

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lck/r;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lhi/b;[B)V

    return-object v6
.end method

.method public b(Lhi/b;)Lck/r$a;
    .locals 0

    iput-object p1, p0, Lck/r$a;->d:Lhi/b;

    return-object p0
.end method

.method public c()Lck/r$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lck/r$a;->d:Lhi/b;

    return-object p0
.end method

.method public d(Ljava/security/spec/AlgorithmParameterSpec;)Lck/r$a;
    .locals 0

    iput-object p1, p0, Lck/r$a;->c:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method
