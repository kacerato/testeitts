.class public final Lcom/google/common/collect/b1;
.super Lcom/google/common/collect/C0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/A;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LI2/j;
    containerOf = {
        "B"
    }
.end annotation

.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/C0<",
        "Ljava/lang/Class<",
        "+TB;>;TB;>;",
        "Lcom/google/common/collect/A<",
        "TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final c:Lcom/google/common/collect/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/b1;

    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/b1;-><init>(Lcom/google/common/collect/i1;)V

    sput-object v0, Lcom/google/common/collect/b1;->c:Lcom/google/common/collect/b1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/C0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/b1;->b:Lcom/google/common/collect/i1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/b1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/b1;-><init>(Lcom/google/common/collect/i1;)V

    return-void
.end method

.method public static B0()Lcom/google/common/collect/b1$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/b1$b<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b1$b;

    invoke-direct {v0}, Lcom/google/common/collect/b1$b;-><init>()V

    return-object v0
.end method

.method public static C0(Ljava/util/Map;)Lcom/google/common/collect/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "S:TB;>(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TS;>;+TS;>;)",
            "Lcom/google/common/collect/b1<",
            "TB;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/b1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/b1;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/b1$b;

    invoke-direct {v0}, Lcom/google/common/collect/b1$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/b1$b;->d(Ljava/util/Map;)Lcom/google/common/collect/b1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/b1$b;->a()Lcom/google/common/collect/b1;

    move-result-object p0

    return-object p0
.end method

.method public static D0()Lcom/google/common/collect/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/b1<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/b1;->c:Lcom/google/common/collect/b1;

    return-object v0
.end method

.method public static E0(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/b1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/common/collect/b1<",
            "TB;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/b1;

    invoke-direct {p1, p0}, Lcom/google/common/collect/b1;-><init>(Lcom/google/common/collect/i1;)V

    return-object p1
.end method


# virtual methods
.method public F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/C0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/b1;->D0()Lcom/google/common/collect/b1;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public a2(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->m0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k2(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b1;->b:Lcom/google/common/collect/i1;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b1;->b:Lcom/google/common/collect/i1;

    return-object v0
.end method
