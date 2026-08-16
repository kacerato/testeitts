.class public Lbl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lbl/e;

.field public static final e:Lbl/e;

.field public static final f:Lbl/e;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbl/e;

    const-string v1, "dilithium2"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbl/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbl/e;->d:Lbl/e;

    new-instance v0, Lbl/e;

    const-string v1, "dilithium3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lbl/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbl/e;->e:Lbl/e;

    new-instance v0, Lbl/e;

    const-string v1, "dilithium5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbl/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbl/e;->f:Lbl/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl/e;->b:Ljava/lang/String;

    iput p2, p0, Lbl/e;->a:I

    iput-boolean p3, p0, Lbl/e;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/security/SecureRandom;)Lbl/a;
    .locals 3

    new-instance v0, Lbl/a;

    iget v1, p0, Lbl/e;->a:I

    iget-boolean v2, p0, Lbl/e;->c:Z

    invoke-direct {v0, v1, p1, v2}, Lbl/a;-><init>(ILjava/security/SecureRandom;Z)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbl/e;->b:Ljava/lang/String;

    return-object v0
.end method
