.class public final Lcom/android/tools/r8/synthesis/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/Q;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/Q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/Q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    iget v1, p1, Lcom/android/tools/r8/synthesis/S$b;->b:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    .line 5
    iget p1, p1, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid synthetic kind id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 3

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/synthesis/Q;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/synthesis/U;

    .line 9
    iget v1, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/synthesis/V;

    iget v1, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/synthesis/V;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/synthesis/V;

    iget v1, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/synthesis/V;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method
