.class public LJk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;

.field public static final e:Lyk/f$b;

.field public static final f:Lyk/f$b;

.field public static final g:Lyk/f$b;

.field public static final h:Lyk/f$b;

.field public static final i:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LLk/a;->H:Lyk/f$b;

    const-string v1, "EtsiTs103097Certificate"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LJk/a;->a:Lyk/f$b;

    sget-object v0, LLk/a;->Q:Lyk/f$b;

    const-string v1, "EtsiTs103097Data"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LJk/a;->b:Lyk/f$b;

    const-string v1, "EtsiTs103097DataUnsecured"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->c:Lyk/f$b;

    const-string v1, "EtsiTs103097DataSigned"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->d:Lyk/f$b;

    const-string v1, "EtsiTs103097DataSignedExternalPayload"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->e:Lyk/f$b;

    const-string v1, "EtsiTs103097DataEncrypted"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->f:Lyk/f$b;

    const-string v1, "EtsiTs103097DataSignedAndEncrypted"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->g:Lyk/f$b;

    const-string v1, "EtsiTs103097DataEncryptedUnicast"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LJk/a;->h:Lyk/f$b;

    const-string v1, "EtsiTs103097DataSignedAndEncryptedUnicast"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LJk/a;->i:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
