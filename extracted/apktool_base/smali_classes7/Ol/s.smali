.class public LOl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/s;

.field public static final d:LOl/s;

.field public static final e:LOl/s;

.field public static final f:LOl/s;

.field public static final g:LOl/s;

.field public static final h:LOl/s;

.field public static final i:LOl/s;

.field public static final j:LOl/s;

.field public static final k:LOl/s;

.field public static l:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->f:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->c:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->g:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->d:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->h:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->e:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->i:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->f:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->j:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->g:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->k:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->h:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->l:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->i:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->m:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->j:LOl/s;

    new-instance v0, LOl/s;

    sget-object v1, Lml/h;->n:Lml/h;

    invoke-direct {v0, v1}, LOl/s;-><init>(Lml/h;)V

    sput-object v0, LOl/s;->k:LOl/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LOl/s;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lml/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lml/h;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/s;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/s;
    .locals 1

    sget-object v0, LOl/s;->l:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/s;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/s;->b:Ljava/lang/String;

    return-object v0
.end method
