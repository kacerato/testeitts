.class public final Lcom/android/tools/r8/naming/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/L;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[C

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/naming/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/naming/e;->d:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/naming/e;->e:I

    iput-object p2, p0, Lcom/android/tools/r8/naming/e;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p3, ""

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "L"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/e;->c:[C

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/naming/e;->d:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/e;->d:I

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/e;->e:I

    return v0
.end method
