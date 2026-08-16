.class public Lcom/android/tools/r8/graph/J0$b;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/J0$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/J0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[Lcom/android/tools/r8/graph/J0$b;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:[Lcom/android/tools/r8/graph/J0$b$a;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/J0$b;

    sput-object v0, Lcom/android/tools/r8/graph/J0$b;->d:[Lcom/android/tools/r8/graph/J0$b;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/J0$b$a;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    iput p2, p0, Lcom/android/tools/r8/graph/J0$b;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J0$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/J0$b;->c:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Z8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Z8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/a9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/a9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/J0$b;)[Lcom/android/tools/r8/graph/J0$b$a;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/graph/J0$b;->e:Z

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

.method public final hashCode()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/iA;->c:Z

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/iA;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/b9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/b9;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "\n"

    const/4 v5, 0x2

    if-ge v3, v2, :cond_0

    aget-object v6, v1, v3

    const-string v7, "       "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/graph/J0$b;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "       default -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/graph/J0$b;->c:I

    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "     ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
