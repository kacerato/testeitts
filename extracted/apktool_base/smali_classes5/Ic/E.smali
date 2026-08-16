.class public LIc/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "f8YqV2tCym2TK2TTX5p3nP5n9f0Vft4mRadq3Ry8TaojSB2tksr0kSjOpC2jXwuSFSbPF1XVObXO441704AuFgcqwgv0dmK1y9kXGNSN72jQjyGN5bgJeMEmzkHM3lDVpeY8pXYmqGlRHT8qwBuGbNpkUwDhi6ig"

.field public static final b:[B

.field public static final c:[B

.field public static final d:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ITsMagicSalt666"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, LIc/E;->b:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, LIc/E;->c:[B

    :try_start_0
    const-string v1, "f8YqV2tCym2TK2TTX5p3nP5n9f0Vft4mRadq3Ry8TaojSB2tksr0kSjOpC2jXwuSFSbPF1XVObXO441704AuFgcqwgv0dmK1y9kXGNSN72jQjyGN5bgJeMEmzkHM3lDVpeY8pXYmqGlRHT8qwBuGbNpkUwDhi6ig"

    invoke-static {v1, v0}, LIc/b;->c(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, LIc/E;->d:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        0x12t
        0x34t
        0x56t
        0x78t
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptedBase64"
        }
    .end annotation

    :try_start_0
    sget-object v0, LIc/E;->d:Ljavax/crypto/SecretKey;

    sget-object v1, LIc/E;->c:[B

    invoke-static {p0, v0, v1}, LIc/b;->b(Ljava/lang/String;Ljavax/crypto/SecretKey;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENCRYPTED TEXT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method
