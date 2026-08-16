.class public Lorg/bouncycastle/tsp/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LDh/c;

.field public b:LDh/d;


# direct methods
.method public constructor <init>(LDh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/h$a;->a:LDh/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tsp/h$a;->b:LDh/d;

    return-void
.end method

.method public constructor <init>(LDh/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/h$a;->b:LDh/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tsp/h$a;->a:LDh/c;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->a:LDh/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LDh/c;->u()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->b:LDh/d;

    invoke-virtual {v0}, LDh/d;->u()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lhi/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->a:LDh/c;

    if-eqz v0, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->b:LDh/d;

    invoke-virtual {v0}, LDh/d;->v()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lhi/K;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->a:LDh/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LDh/c;->x()Lhi/K;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/h$a;->b:LDh/d;

    invoke-virtual {v0}, LDh/d;->x()Lhi/K;

    move-result-object v0

    return-object v0
.end method
