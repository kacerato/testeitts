.class public LHk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LMk/a;->n:Lyk/f$b;

    const-string v1, "expiryTime"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v1, LLk/a;->c:Lyk/f$b;

    const-string v2, "certificateHash"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "ToBeSignedLinkCertificate"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/g;->a:Lyk/f$b;

    const-string v1, "ToBeSignedLinkCertificateTlm"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/g;->b:Lyk/f$b;

    const-string v1, "ToBeSignedLinkCertificateRca"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/g;->c:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
