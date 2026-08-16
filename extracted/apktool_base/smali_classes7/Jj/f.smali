.class public LJj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/MessageDigest;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LJj/c;

    invoke-direct {v0, p0}, LJj/c;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static b(Ljava/security/Signature;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LJj/g;

    invoke-direct {v0, p0}, LJj/g;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public static c(Ljavax/crypto/Mac;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LJj/e;

    invoke-direct {v0, p0}, LJj/e;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
