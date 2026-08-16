.class public Lvi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/n;


# instance fields
.field public a:Ljava/util/Set;

.field public b:Ljava/util/Set;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lvi/d;->b:Ljava/util/Set;

    iput-object p1, p0, Lvi/d;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Loh/x;)V
    .locals 1

    iget-object v0, p0, Lvi/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lvi/d;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lvi/d;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lvi/d;->c:Z

    return v0
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 3

    new-instance v0, Lvi/d;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lvi/d;->a:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lvi/d;-><init>(Ljava/util/Set;)V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lvi/d;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lvi/d;->b:Ljava/util/Set;

    iget-boolean v1, p0, Lvi/d;->c:Z

    iput-boolean v1, v0, Lvi/d;->c:Z

    iget v1, p0, Lvi/d;->d:I

    iput v1, v0, Lvi/d;->d:I

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lvi/d;->c:Z

    return-void
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 2

    check-cast p1, Lvi/d;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lvi/d;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lvi/d;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lvi/d;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lvi/d;->b:Ljava/util/Set;

    iget-boolean v0, p1, Lvi/d;->c:Z

    iput-boolean v0, p0, Lvi/d;->c:Z

    iget p1, p1, Lvi/d;->d:I

    iput p1, p0, Lvi/d;->d:I

    return-void
.end method
