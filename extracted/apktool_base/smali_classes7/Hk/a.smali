.class public LHk/a;
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

.field public static final j:Lyk/f$b;

.field public static final k:Lyk/f$b;

.field public static final l:Lyk/f$b;

.field public static final m:Lyk/f$b;

.field public static final n:Lyk/f$b;

.field public static final o:Lyk/f$b;

.field public static final p:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    sget-object v0, LJk/a;->i:Lyk/f$b;

    const-string v1, "EnrolmentRequestMessage"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/a;->a:Lyk/f$b;

    const-string v1, "EnrolmentResponseMessage"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/a;->b:Lyk/f$b;

    sget-object v1, LJk/a;->h:Lyk/f$b;

    const-string v2, "AuthorizationRequestMessage"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/a;->c:Lyk/f$b;

    const-string v1, "AuthorizationRequestMessageWithPop"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/a;->d:Lyk/f$b;

    const-string v1, "AuthorizationResponseMessage"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/a;->e:Lyk/f$b;

    sget-object v1, LJk/a;->d:Lyk/f$b;

    const-string v2, "CertificateRevocationListMessage"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->f:Lyk/f$b;

    const-string v2, "TlmCertificateTrustListMessage"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->g:Lyk/f$b;

    const-string v2, "RcaCertificateTrustListMessage"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->h:Lyk/f$b;

    const-string v2, "RcaSingleSignedLinkCertificateMessage"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->i:Lyk/f$b;

    sget-object v3, LHk/f;->d:Lyk/f$b;

    const-string v4, "enrolmentRequest"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    sget-object v3, LHk/f;->b:Lyk/f$b;

    const-string v4, "enrolmentResponse"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v3, LHk/c;->d:Lyk/f$b;

    const-string v4, "authorizationRequest"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    sget-object v3, LHk/c;->b:Lyk/f$b;

    const-string v4, "authorizationResponse"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    sget-object v3, LHk/b;->c:Lyk/f$b;

    const-string v4, "certificateRevocationList"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    sget-object v3, LHk/b;->r:Lyk/f$b;

    const-string v4, "certificateTrustListTlm"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    sget-object v3, LHk/b;->s:Lyk/f$b;

    const-string v4, "certificateTrustListRca"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    sget-object v3, LHk/d;->b:Lyk/f$b;

    const-string v4, "authorizationValidationRequest"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    sget-object v3, LHk/d;->c:Lyk/f$b;

    const-string v4, "authorizationValidationResponse"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    sget-object v3, LHk/e;->a:Lyk/f$b;

    const-string v4, "caCertificateRequest"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    sget-object v3, LHk/g;->b:Lyk/f$b;

    const-string v4, "linkCertificateTlm"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sget-object v4, LHk/g;->c:Lyk/f$b;

    const-string v15, "singleSignedLinkCertificateRca"

    invoke-virtual {v4, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    const-string v15, "doubleSignedlinkCertificateRca"

    invoke-virtual {v2, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v15

    filled-new-array/range {v5 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v3, "EtsiTs102941DataContent"

    invoke-virtual {v2, v3}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->j:Lyk/f$b;

    sget-object v3, LIk/a;->e:Lyk/f$b;

    const-string v4, "version"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v3, "EtsiTs102941Data"

    invoke-virtual {v2, v3}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/a;->k:Lyk/f$b;

    const-string v2, "AuthorizationValidationRequestMessage"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/a;->l:Lyk/f$b;

    const-string v0, "CaCertificateRequestMessage"

    invoke-virtual {v1, v0}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/a;->m:Lyk/f$b;

    const-string v0, "CaCertificateRekeyingMessage"

    invoke-virtual {v1, v0}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/a;->n:Lyk/f$b;

    const-string v0, "TlmLinkCertificateMessage"

    invoke-virtual {v1, v0}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/a;->o:Lyk/f$b;

    const-string v0, "RcaDoubleSignedLinkCertificateMessage"

    invoke-virtual {v1, v0}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/a;->p:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
