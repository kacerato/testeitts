.class public Lck/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lck/r$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/security/spec/AlgorithmParameterSpec;

.field public final e:Lhi/b;

.field public f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lhi/b;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/r;->b:Ljava/lang/String;

    iput p2, p0, Lck/r;->c:I

    iput-object p3, p0, Lck/r;->d:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p4, p0, Lck/r;->e:Lhi/b;

    iput-object p5, p0, Lck/r;->f:[B

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lck/r;->e:Lhi/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lck/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lck/r;->c:I

    return v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lck/r;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lck/r;->d:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method
