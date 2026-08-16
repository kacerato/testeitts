.class public LUm/e;
.super LUm/v;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LUm/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LUm/v;-><init>()V

    .line 3
    iput-object p1, p0, LUm/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->e(LUm/e;)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LUm/e;->f:Ljava/lang/String;

    return-void
.end method
