.class public Lcom/android/tools/r8/graph/J0$b$a;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/J0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/J0$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    iput p1, p0, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J0$b$a;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/d9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/d9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/e9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/e9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/J0$b$a;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/graph/J0$b$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/c9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/c9;-><init>()V

    return-object v0
.end method
