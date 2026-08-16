.class public Lcom/google/common/reflect/p$i$e;
.super Lcom/google/common/reflect/p$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/p$i<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/reflect/p$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/p$i<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/p$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p$i<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/p$i;-><init>(Lcom/google/common/reflect/p$a;)V

    iput-object p1, p0, Lcom/google/common/reflect/p$i$e;->c:Lcom/google/common/reflect/p$i;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$i$e;->c:Lcom/google/common/reflect/p$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p$i;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$i$e;->c:Lcom/google/common/reflect/p$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p$i;->f(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$i$e;->c:Lcom/google/common/reflect/p$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p$i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
