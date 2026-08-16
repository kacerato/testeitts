.class public Lil/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lam/e;

.field public final b:Lam/e;


# direct methods
.method public constructor <init>(Lam/e;Lam/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil/m;->a:Lam/e;

    iput-object p2, p0, Lil/m;->b:Lam/e;

    return-void
.end method


# virtual methods
.method public a()Lam/e;
    .locals 1

    iget-object v0, p0, Lil/m;->a:Lam/e;

    return-object v0
.end method

.method public b()Lam/e;
    .locals 1

    iget-object v0, p0, Lil/m;->b:Lam/e;

    return-object v0
.end method

.method public c()Lam/e;
    .locals 1

    iget-object v0, p0, Lil/m;->b:Lam/e;

    return-object v0
.end method

.method public d()Lam/e;
    .locals 1

    iget-object v0, p0, Lil/m;->a:Lam/e;

    return-object v0
.end method
