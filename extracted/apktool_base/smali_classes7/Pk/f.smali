.class public LPk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LPk/f;->a:Ldk/f;

    return-void
.end method

.method public static synthetic a(LPk/f;)Ldk/f;
    .locals 0

    iget-object p0, p0, LPk/f;->a:Ldk/f;

    return-object p0
.end method


# virtual methods
.method public b([C)LQk/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, LPk/f$a;

    invoke-direct {v0, p0, p1}, LPk/f$a;-><init>(LPk/f;[C)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LPk/f;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPk/f;->a:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)LPk/f;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LPk/f;->a:Ldk/f;

    return-object p0
.end method
