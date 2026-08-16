.class public abstract Lcom/android/tools/r8/internal/ae0;
.super Lcom/android/tools/r8/internal/pu0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Zd0;

.field public static final d:Lcom/android/tools/r8/internal/Zd0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/p10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Zd0;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Zd0;-><init>(Lcom/android/tools/r8/internal/p10;)V

    sput-object v0, Lcom/android/tools/r8/internal/ae0;->c:Lcom/android/tools/r8/internal/Zd0;

    new-instance v0, Lcom/android/tools/r8/internal/Zd0;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Zd0;-><init>(Lcom/android/tools/r8/internal/p10;)V

    sput-object v0, Lcom/android/tools/r8/internal/ae0;->d:Lcom/android/tools/r8/internal/Zd0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/p10;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pu0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    return-void
.end method


# virtual methods
.method public final B()Lcom/android/tools/r8/internal/p10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public D()Lcom/android/tools/r8/internal/pu0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
.end method

.method public b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/android/tools/r8/internal/ae0;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should be implemented on each sub type"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should be implemented on each sub type"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
