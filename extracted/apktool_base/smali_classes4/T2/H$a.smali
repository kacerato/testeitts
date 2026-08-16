.class public LT2/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT2/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:LX2/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;LX2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "LX2/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/H$a;->a:Ljava/util/Set;

    iput-object p2, p0, LT2/H$a;->b:LX2/c;

    return-void
.end method


# virtual methods
.method public c(LX2/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX2/a<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, LT2/H$a;->a:Ljava/util/Set;

    invoke-virtual {p1}, LX2/a;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LT2/H$a;->b:LX2/c;

    invoke-interface {v0, p1}, LX2/c;->c(LX2/a;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    const-string v1, "Attempting to publish an undeclared event %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
