.class public Lz2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lz2/e;
.end annotation


# instance fields
.field public final a:Lz2/f;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lz2/f;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/f;

    iput-object p1, p0, Lz2/k;->a:Lz2/f;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz2/k;->b:Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz2/k;->c:Ljava/lang/Object;

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    iput-object p1, p0, Lz2/k;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lz2/f;
    .locals 1

    iget-object v0, p0, Lz2/k;->a:Lz2/f;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/k;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lz2/k;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method
