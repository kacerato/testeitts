.class public LOl/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final A:LOl/w;

.field public static final B:LOl/w;

.field public static final C:LOl/w;

.field public static final D:LOl/w;

.field public static final E:LOl/w;

.field public static final F:LOl/w;

.field public static final G:LOl/w;

.field public static final H:LOl/w;

.field public static final I:LOl/w;

.field public static final J:LOl/w;

.field public static final K:LOl/w;

.field public static final L:LOl/w;

.field public static final M:LOl/w;

.field public static final N:LOl/w;

.field public static final e:Ljava/lang/String; = "SHA256"

.field public static final f:Ljava/lang/String; = "SHA512"

.field public static final g:Ljava/lang/String; = "SHAKE128"

.field public static final h:Ljava/lang/String; = "SHAKE256"

.field public static final i:LOl/w;

.field public static final j:LOl/w;

.field public static final k:LOl/w;

.field public static final l:LOl/w;

.field public static final m:LOl/w;

.field public static final n:LOl/w;

.field public static final o:LOl/w;

.field public static final p:LOl/w;

.field public static final q:LOl/w;

.field public static final r:LOl/w;

.field public static final s:LOl/w;

.field public static final t:LOl/w;

.field public static final u:LOl/w;

.field public static final v:LOl/w;

.field public static final w:LOl/w;

.field public static final x:LOl/w;

.field public static final y:LOl/w;

.field public static final z:LOl/w;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, LOl/w;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const-string v3, "SHA256"

    invoke-direct {v0, v1, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->i:LOl/w;

    new-instance v0, LOl/w;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->j:LOl/w;

    new-instance v0, LOl/w;

    const/16 v5, 0x28

    invoke-direct {v0, v5, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->k:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->l:LOl/w;

    new-instance v0, LOl/w;

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->m:LOl/w;

    new-instance v0, LOl/w;

    const/16 v7, 0x3c

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->n:LOl/w;

    new-instance v0, LOl/w;

    const/4 v9, 0x6

    invoke-direct {v0, v7, v9, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->o:LOl/w;

    new-instance v0, LOl/w;

    const/16 v10, 0xc

    invoke-direct {v0, v7, v10, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->p:LOl/w;

    new-instance v0, LOl/w;

    const-string v3, "SHA512"

    invoke-direct {v0, v1, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->q:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v1, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->r:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->s:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->t:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v6, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->u:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v8, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->v:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v9, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->w:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v10, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->x:LOl/w;

    new-instance v0, LOl/w;

    const-string v3, "SHAKE128"

    invoke-direct {v0, v1, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->y:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v1, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->z:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->A:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->B:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v6, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->C:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v8, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->D:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v9, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->E:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v10, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->F:LOl/w;

    new-instance v0, LOl/w;

    const-string v3, "SHAKE256"

    invoke-direct {v0, v1, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->G:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v1, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->H:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v2, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->I:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v4, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->J:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v5, v6, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->K:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v8, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->L:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v9, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->M:LOl/w;

    new-instance v0, LOl/w;

    invoke-direct {v0, v7, v10, v3}, LOl/w;-><init>(IILjava/lang/String;)V

    sput-object v0, LOl/w;->N:LOl/w;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOl/w;->b:I

    iput p2, p0, LOl/w;->c:I

    iput-object p3, p0, LOl/w;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LOl/w;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LOl/w;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/w;->d:Ljava/lang/String;

    return-object v0
.end method
