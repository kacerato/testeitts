.class public Lck/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Ljava/security/PublicKey;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lck/p;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/p;->b:Ljava/security/PublicKey;

    iput-object p2, p0, Lck/p;->c:Ljava/lang/String;

    iput p3, p0, Lck/p;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lck/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lck/p;->d:I

    return v0
.end method

.method public c()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lck/p;->b:Ljava/security/PublicKey;

    return-object v0
.end method
