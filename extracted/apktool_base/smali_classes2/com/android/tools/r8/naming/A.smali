.class public final Lcom/android/tools/r8/naming/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/L;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/naming/B;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/naming/A;->b:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/tools/r8/naming/A;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/B;II)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p3, p0, Lcom/android/tools/r8/naming/A;->b:I

    .line 6
    iput p2, p0, Lcom/android/tools/r8/naming/A;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/naming/A;->b:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/A;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/A;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/A;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/A;->c:I

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/naming/A;

    iget-object v1, p0, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    iget v2, p0, Lcom/android/tools/r8/naming/A;->c:I

    iget v3, p0, Lcom/android/tools/r8/naming/A;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/naming/A;-><init>(Lcom/android/tools/r8/naming/B;II)V

    return-object v0
.end method
