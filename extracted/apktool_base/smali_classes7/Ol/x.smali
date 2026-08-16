.class public LOl/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final d:Ljava/lang/String; = "SHA256"

.field public static final e:Ljava/lang/String; = "SHA512"

.field public static final f:Ljava/lang/String; = "SHAKE128"

.field public static final g:Ljava/lang/String; = "SHAKE256"

.field public static final h:LOl/x;

.field public static final i:LOl/x;

.field public static final j:LOl/x;

.field public static final k:LOl/x;

.field public static final l:LOl/x;

.field public static final m:LOl/x;

.field public static final n:LOl/x;

.field public static final o:LOl/x;

.field public static final p:LOl/x;

.field public static final q:LOl/x;

.field public static final r:LOl/x;

.field public static final s:LOl/x;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOl/x;

    const/16 v1, 0xa

    const-string v2, "SHA256"

    invoke-direct {v0, v1, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->h:LOl/x;

    new-instance v0, LOl/x;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->i:LOl/x;

    new-instance v0, LOl/x;

    const/16 v4, 0x14

    invoke-direct {v0, v4, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->j:LOl/x;

    new-instance v0, LOl/x;

    const-string v2, "SHAKE128"

    invoke-direct {v0, v1, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->k:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v3, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->l:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v4, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->m:LOl/x;

    new-instance v0, LOl/x;

    const-string v2, "SHA512"

    invoke-direct {v0, v1, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->n:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v3, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->o:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v4, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->p:LOl/x;

    new-instance v0, LOl/x;

    const-string v2, "SHAKE256"

    invoke-direct {v0, v1, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->q:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v3, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->r:LOl/x;

    new-instance v0, LOl/x;

    invoke-direct {v0, v4, v2}, LOl/x;-><init>(ILjava/lang/String;)V

    sput-object v0, LOl/x;->s:LOl/x;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOl/x;->b:I

    iput-object p2, p0, LOl/x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LOl/x;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/x;->c:Ljava/lang/String;

    return-object v0
.end method
