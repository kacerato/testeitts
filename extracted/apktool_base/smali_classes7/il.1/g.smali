.class public Lil/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/e;


# static fields
.field public static final d:Lil/g;

.field public static final e:Lil/g;

.field public static final f:Lil/g;

.field public static final g:Lil/g;

.field public static final h:Lil/g;

.field public static final i:Lil/g;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lbm/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lil/g;

    new-instance v1, Lbm/a;

    invoke-direct {v1}, Lbm/a;-><init>()V

    const-string v2, "ntruhps2048509"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->d:Lil/g;

    new-instance v0, Lil/g;

    new-instance v1, Lbm/b;

    invoke-direct {v1}, Lbm/b;-><init>()V

    const-string v2, "ntruhps2048677"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->e:Lil/g;

    new-instance v0, Lil/g;

    new-instance v1, Lbm/d;

    invoke-direct {v1}, Lbm/d;-><init>()V

    const-string v2, "ntruhps4096821"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->f:Lil/g;

    new-instance v0, Lil/g;

    new-instance v1, Lbm/c;

    invoke-direct {v1}, Lbm/c;-><init>()V

    const-string v2, "ntruhps40961229"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->g:Lil/g;

    new-instance v0, Lil/g;

    new-instance v1, Lbm/g;

    invoke-direct {v1}, Lbm/g;-><init>()V

    const-string v2, "ntruhrss701"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->h:Lil/g;

    new-instance v0, Lil/g;

    new-instance v1, Lbm/f;

    invoke-direct {v1}, Lbm/f;-><init>()V

    const-string v2, "ntruhrss1373"

    invoke-direct {v0, v2, v1}, Lil/g;-><init>(Ljava/lang/String;Lbm/i;)V

    sput-object v0, Lil/g;->i:Lil/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbm/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lil/g;->c:Lbm/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lil/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lil/g;->c:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->t()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
