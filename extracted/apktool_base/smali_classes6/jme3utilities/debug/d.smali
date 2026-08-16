.class public Ljme3utilities/debug/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final o:Ljava/util/logging/Logger;

.field public static final synthetic p:Z


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljme3utilities/debug/c;

.field public l:I

.field public final m:Ljava/io/PrintStream;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljme3utilities/debug/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/d;->o:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljme3utilities/debug/d;->b:Z

    .line 3
    iput-boolean v0, p0, Ljme3utilities/debug/d;->c:Z

    .line 4
    iput-boolean v0, p0, Ljme3utilities/debug/d;->d:Z

    .line 5
    iput-boolean v0, p0, Ljme3utilities/debug/d;->e:Z

    .line 6
    iput-boolean v0, p0, Ljme3utilities/debug/d;->f:Z

    .line 7
    iput-boolean v0, p0, Ljme3utilities/debug/d;->g:Z

    .line 8
    iput-boolean v0, p0, Ljme3utilities/debug/d;->h:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Ljme3utilities/debug/d;->i:Z

    .line 10
    iput-boolean v0, p0, Ljme3utilities/debug/d;->j:Z

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Ljme3utilities/debug/d;->l:I

    .line 12
    const-string v0, "  "

    iput-object v0, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    .line 13
    new-instance v0, Ljme3utilities/debug/c;

    invoke-direct {v0}, Ljme3utilities/debug/c;-><init>()V

    iput-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Ljme3utilities/debug/d;->b:Z

    .line 17
    iput-boolean v0, p0, Ljme3utilities/debug/d;->c:Z

    .line 18
    iput-boolean v0, p0, Ljme3utilities/debug/d;->d:Z

    .line 19
    iput-boolean v0, p0, Ljme3utilities/debug/d;->e:Z

    .line 20
    iput-boolean v0, p0, Ljme3utilities/debug/d;->f:Z

    .line 21
    iput-boolean v0, p0, Ljme3utilities/debug/d;->g:Z

    .line 22
    iput-boolean v0, p0, Ljme3utilities/debug/d;->h:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Ljme3utilities/debug/d;->i:Z

    .line 24
    iput-boolean v0, p0, Ljme3utilities/debug/d;->j:Z

    const v0, 0x7fffffff

    .line 25
    iput v0, p0, Ljme3utilities/debug/d;->l:I

    .line 26
    const-string v0, "  "

    iput-object v0, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    .line 27
    const-string v0, "print stream"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 28
    new-instance v0, Ljme3utilities/debug/c;

    invoke-direct {v0}, Ljme3utilities/debug/c;-><init>()V

    iput-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    .line 29
    iput-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->c:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->d:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->e:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->f:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->g:Z

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->h:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->i:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->j:Z

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Ljme3utilities/debug/d;->l:I

    return v0
.end method

.method public J(Ljme3utilities/debug/c;)Ljme3utilities/debug/d;
    .locals 1

    const-string v0, "new describer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    return-object p0
.end method

.method public K(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->b:Z

    return-object p0
.end method

.method public L(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->c:Z

    return-object p0
.end method

.method public M(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->d:Z

    return-object p0
.end method

.method public N(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->e:Z

    return-object p0
.end method

.method public O(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->f:Z

    return-object p0
.end method

.method public P(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->g:Z

    return-object p0
.end method

.method public Q(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->h:Z

    return-object p0
.end method

.method public R(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->i:Z

    return-object p0
.end method

.method public S(Z)Ljme3utilities/debug/d;
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/d;->j:Z

    return-object p0
.end method

.method public T(Ljava/lang/String;)Ljme3utilities/debug/d;
    .locals 1

    const-string v0, "increment"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    return-object p0
.end method

.method public U(I)Ljme3utilities/debug/d;
    .locals 1

    const-string v0, "newLimit"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/d;->l:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "description"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "indent"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljme3utilities/debug/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/d;

    iget-object v1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v1}, Ljme3utilities/debug/c;->a()Ljme3utilities/debug/c;

    move-result-object v1

    iput-object v1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljme3utilities/debug/d;->c()Ljme3utilities/debug/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/jme3/anim/AnimClip;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lif/t;->t(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "s"

    :goto_0
    filled-new-array {p1, v3, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "AnimClip%s with %d track%s:"

    invoke-virtual {v2, v1, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p0, p1}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    instance-of v4, v3, Lcom/jme3/anim/MorphTrack;

    const-string v5, "times"

    if-eqz v4, :cond_1

    check-cast v3, Lcom/jme3/anim/MorphTrack;

    invoke-virtual {v3}, Lcom/jme3/anim/MorphTrack;->getTarget()Lcom/jme3/scene/Geometry;

    move-result-object v4

    iget-object v6, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v6, v4}, Ljme3utilities/debug/c;->N(Lcom/jme3/anim/util/HasLocalTransform;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/anim/MorphTrack;->getTimes()[F

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v5, v4}, Ljme3utilities/debug/c;->C([F)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "weights"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/anim/MorphTrack;->getWeights()[F

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v4, v3}, Ljme3utilities/debug/c;->C([F)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lcom/jme3/anim/TransformTrack;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {v3}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v4

    iget-object v6, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v6, v4}, Ljme3utilities/debug/c;->N(Lcom/jme3/anim/util/HasLocalTransform;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/anim/TransformTrack;->getTimes()[F

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v4, v3}, Ljme3utilities/debug/c;->C([F)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public e(Lcom/jme3/anim/Armature;Ljava/lang/String;)V
    .locals 3

    const-string v0, "armature"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->b(Lcom/jme3/anim/Armature;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Ljme3utilities/debug/d;->f(Lcom/jme3/anim/Joint;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public f(Lcom/jme3/anim/Joint;Ljava/lang/String;)V
    .locals 2

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->c(Lcom/jme3/anim/Joint;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    invoke-virtual {p0, v0, p2}, Ljme3utilities/debug/d;->f(Lcom/jme3/anim/Joint;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lcom/jme3/animation/Bone;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bone"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->d(Lcom/jme3/animation/Bone;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    invoke-virtual {p0, v0, p2}, Ljme3utilities/debug/d;->g(Lcom/jme3/animation/Bone;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lcom/jme3/animation/Skeleton;Ljava/lang/String;)V
    .locals 3

    const-string v0, "skeleton"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->e(Lcom/jme3/animation/Skeleton;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(C)V

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Ljme3utilities/debug/d;->g(Lcom/jme3/animation/Bone;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V
    .locals 3

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " en"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " dis"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "abled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    instance-of v0, p1, Lif/v;

    if-eqz v0, :cond_4

    check-cast p1, Lif/v;

    invoke-virtual {p1}, Lif/v;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "  influences["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/state/AppState;

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    invoke-interface {v0}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    invoke-static {v1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j(Lcom/jme3/app/state/AppStateManager;)V
    .locals 11

    const/4 v0, 0x1

    const-class v1, Lcom/jme3/app/state/AppStateManager;

    :try_start_0
    const-string v2, "getInitializing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getStates"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getTerminating"

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jme3/app/state/AppState;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/jme3/app/state/AppState;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/app/state/AppState;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    array-length p1, v2

    array-length v3, v4

    array-length v5, v1

    add-int v6, p1, v3

    add-int/2addr v6, v5

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, " with %d state"

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    if-nez v6, :cond_0

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v0, "s."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne v6, v0, :cond_1

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, "s:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-lez p1, :cond_2

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, " %d initializing"

    invoke-virtual {v6, v8, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string v6, ","

    goto :goto_0

    :cond_2
    const-string v6, ""

    :goto_0
    if-lez v3, :cond_3

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s %d active"

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    if-lez v5, :cond_4

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "%s %d terminating"

    invoke-virtual {v7, v8, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_4
    :goto_1
    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, p1, :cond_5

    iget-object v8, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%n initializing[%d]: "

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    aget-object v8, v2, v7

    iget-object v9, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Ljme3utilities/debug/d;->i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V

    add-int/2addr v7, v0

    goto :goto_2

    :cond_5
    move p1, v6

    :goto_3
    if-ge p1, v3, :cond_6

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%n active[%d]: "

    invoke-virtual {v2, v8, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    aget-object v2, v4, p1

    iget-object v7, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Ljme3utilities/debug/d;->i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V

    add-int/2addr p1, v0

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v6, v5, :cond_7

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%n terminating[%d]: "

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    aget-object p1, v1, v6

    iget-object v2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljme3utilities/debug/d;->i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V

    add-int/2addr v6, v0

    goto :goto_4

    :cond_7
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public k(Lcom/jme3/light/Light;Ljava/lang/String;)V
    .locals 1

    const-string v0, "light"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {p2, p1}, Ljme3utilities/debug/c;->j(Lcom/jme3/light/Light;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lcom/jme3/renderer/Camera;)V
    .locals 1

    const-string v0, "camera"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljme3utilities/debug/d;->m(Lcom/jme3/renderer/Camera;Ljava/lang/String;)V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public m(Lcom/jme3/renderer/Camera;Ljava/lang/String;)V
    .locals 2

    const-string v0, "camera"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->r(Lcom/jme3/renderer/Camera;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {p2, p1}, Ljme3utilities/debug/c;->F(Lcom/jme3/renderer/Camera;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public n(Lcom/jme3/renderer/RenderManager;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " renderer="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getDefaultAnisotropicFilter()I

    move-result v1

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getAlphaToCoverage()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "NO"

    :goto_0
    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[aniso=%d, %satoc]"

    invoke-virtual {v3, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getPreViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getMainViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getPostViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "s"

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v8

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-ne v4, v9, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v8

    :goto_2
    filled-new-array {v7, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v7

    const-string v10, " with %d preView%s, %d mainView%s, and "

    invoke-virtual {v6, v10, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v5, v9, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v8

    :goto_3
    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "%d postView%s%n"

    invoke-virtual {v6, v7, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v2, 0x0

    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_4

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "preView %d:%n"

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/renderer/ViewPort;

    iget-object v8, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Ljme3utilities/debug/d;->p(Lcom/jme3/renderer/ViewPort;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_5

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mainView %d:%n"

    invoke-virtual {v1, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    iget-object v6, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Ljme3utilities/debug/d;->p(Lcom/jme3/renderer/ViewPort;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    if-ge v2, v5, :cond_6

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "postView %d:%n"

    invoke-virtual {v0, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljme3utilities/debug/d;->p(Lcom/jme3/renderer/ViewPort;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public o(Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    const-string v0, "view port"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljme3utilities/debug/d;->p(Lcom/jme3/renderer/ViewPort;Ljava/lang/String;)V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public p(Lcom/jme3/renderer/ViewPort;Ljava/lang/String;)V
    .locals 3

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->t(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s %s "

    invoke-virtual {v2, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "enabled "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->B(Lcom/jme3/renderer/ViewPort;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getBackgroundColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljf/e;->a(Lcom/jme3/math/ColorRGBA;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, " bg(%s)"

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljme3utilities/debug/d;->m(Lcom/jme3/renderer/Camera;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getProcessors()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljme3utilities/debug/d;->w(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljme3utilities/debug/d;->s(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string p2, "disabled"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public q(Lcom/jme3/scene/Spatial;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljme3utilities/debug/d;->r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V
    .locals 3

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getTriangleCount()I

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    iget-object v2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v2, p1}, Ljme3utilities/debug/c;->O(Lcom/jme3/scene/Spatial;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%c[%d] "

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lif/t;->t(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " (has parent)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->y(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v1, v0}, Ljme3utilities/debug/c;->k(Lcom/jme3/light/LightList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljme3utilities/debug/d;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->E(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->G(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->K(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Ljme3utilities/debug/d;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " bound["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v1, v0}, Ljme3utilities/debug/c;->i(Lcom/jme3/bounding/BoundingVolume;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    :cond_3
    iget-boolean v0, p0, Ljme3utilities/debug/d;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->P(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_4
    instance-of v0, p1, Lcom/jme3/audio/AudioNode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->w(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Ljme3utilities/debug/d;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->x(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Ljme3utilities/debug/d;->g:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->L(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Ljme3utilities/debug/d;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->z(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Ljme3utilities/debug/d;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v0, p1}, Ljme3utilities/debug/c;->H(Lcom/jme3/scene/Spatial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    :cond_9
    :goto_0
    instance-of v0, p1, Lcom/jme3/font/BitmapText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapText;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v0, p2}, Ljme3utilities/debug/d;->v(Lcom/jme3/scene/Geometry;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/jme3/scene/Node;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljme3utilities/debug/d;->u(Lcom/jme3/scene/Node;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public s(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "no scenes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "one scene:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d scenes:"

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljme3utilities/debug/d;->r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final t(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    new-instance v0, Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    iget-object v2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v2, v1}, Ljme3utilities/debug/c;->l(Lcom/jme3/material/MatParam;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Lcom/jme3/scene/Node;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ljme3utilities/debug/d;->l:I

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0, p2}, Ljme3utilities/debug/d;->r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    div-int/lit8 v2, v1, 0x3

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v4, p2}, Ljme3utilities/debug/d;->r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sub-int v1, v0, v1

    sub-int/2addr v1, v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    const-string v1, "s"

    :goto_2
    filled-new-array {p2, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%s... %d child spatial%s"

    invoke-virtual {v3, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " skipped ..."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sub-int v1, v0, v2

    :goto_3
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v2, p2}, Ljme3utilities/debug/d;->r(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final v(Lcom/jme3/scene/Geometry;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v2, v0}, Ljme3utilities/debug/c;->n(Lcom/jme3/material/Material;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, " mat"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Ljme3utilities/debug/d;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getParamsMap()Lcom/jme3/util/ListMap;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljme3utilities/debug/d;->t(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    iget-object v2, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v2, p1}, Ljme3utilities/debug/c;->s(Lcom/jme3/scene/Mesh;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    iget-boolean p2, p0, Ljme3utilities/debug/d;->j:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v3

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "index["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v4, v2

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    if-lez v4, :cond_4

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-ne v3, v5, :cond_1

    rem-int/lit8 v5, v4, 0x3

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    if-ne v3, v5, :cond_3

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(C)V

    :cond_4
    :goto_1
    invoke-virtual {p2, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(C)V

    :cond_6
    move p2, v2

    :goto_2
    if-ge p2, v0, :cond_7

    invoke-virtual {p0, v1}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v3, p1, p2}, Ljme3utilities/debug/c;->Q(Lcom/jme3/scene/Mesh;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object p2

    move v3, v2

    :goto_3
    array-length v4, p2

    if-ge v3, v4, :cond_b

    invoke-virtual {p0, v1}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/jme3/scene/mesh/MorphTarget;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lif/t;->t(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffers()Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/EnumMap;->size()I

    move-result v4

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    const-string v4, ""

    goto :goto_4

    :cond_8
    const-string v4, "s"

    :goto_4
    filled-new-array {v7, v5, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "target%d%s with %d buffer%s"

    invoke-virtual {v6, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v4, p0, Ljme3utilities/debug/d;->j:Z

    if-eqz v4, :cond_a

    if-lez v0, :cond_9

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_5
    if-ge v5, v0, :cond_a

    invoke-virtual {p0, v4}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v6, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v6, p1, v5}, Ljme3utilities/debug/c;->Q(Lcom/jme3/scene/Mesh;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public final w(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/post/SceneProcessor;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string p2, "no scene processors"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "one SceneProcessor:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d scene processors:"

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/post/SceneProcessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    invoke-virtual {v1, v0}, Ljme3utilities/debug/c;->q(Lcom/jme3/post/SceneProcessor;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public x()Ljme3utilities/debug/c;
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/d;->k:Ljme3utilities/debug/c;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/d;->b:Z

    return v0
.end method
