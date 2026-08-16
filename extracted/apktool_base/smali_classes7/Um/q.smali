.class public LUm/q;
.super LUm/b;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->L(LUm/q;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LUm/q;->f:Ljava/lang/String;

    return-void
.end method
