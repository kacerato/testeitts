.class public LHj/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LHj/v;

.field public b:I

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LHj/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, LHj/u$b;->b:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LHj/u$b;->c:Ljava/util/Set;

    iput-object p1, p0, LHj/u$b;->a:LHj/v;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, LHj/u$b;->b:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LHj/u$b;->c:Ljava/util/Set;

    new-instance v0, LHj/v$b;

    invoke-direct {v0, p1}, LHj/v$b;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, LHj/v$b;->q()LHj/v;

    move-result-object v0

    iput-object v0, p0, LHj/u$b;->a:LHj/v;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, LHj/u$b;->b:I

    return-void
.end method

.method public static synthetic a(LHj/u$b;)LHj/v;
    .locals 0

    iget-object p0, p0, LHj/u$b;->a:LHj/v;

    return-object p0
.end method

.method public static synthetic b(LHj/u$b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LHj/u$b;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(LHj/u$b;)I
    .locals 0

    iget p0, p0, LHj/u$b;->b:I

    return p0
.end method


# virtual methods
.method public d(Ljava/util/Set;)LHj/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "LHj/u$b;"
        }
    .end annotation

    iget-object v0, p0, LHj/u$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public e()LHj/u;
    .locals 2

    new-instance v0, LHj/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LHj/u;-><init>(LHj/u$b;LHj/u$a;)V

    return-object v0
.end method

.method public f(I)LHj/u$b;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, LHj/u$b;->b:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The maximum path length parameter can not be less than -1."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
