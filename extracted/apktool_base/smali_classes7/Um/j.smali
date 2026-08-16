.class public LUm/j;
.super LUm/v;
.source "SourceFile"

# interfaces
.implements LUm/h;


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
    iput-object p1, p0, LUm/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->t(LUm/j;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LUm/j;->f:Ljava/lang/String;

    return-void
.end method
