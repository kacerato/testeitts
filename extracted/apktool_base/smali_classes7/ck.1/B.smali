.class public Lck/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final f:Ljava/lang/String; = "master secret"

.field public static final g:Ljava/lang/String; = "key expansion"


# instance fields
.field public final b:[B

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:[B


# direct methods
.method public varargs constructor <init>([BLjava/lang/String;I[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lck/B;->b:[B

    iput-object p2, p0, Lck/B;->c:Ljava/lang/String;

    iput p3, p0, Lck/B;->d:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->E([[B)[B

    move-result-object p1

    iput-object p1, p0, Lck/B;->e:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lck/B;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lck/B;->d:I

    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lck/B;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lck/B;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
