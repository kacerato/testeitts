.class public final Lcom/android/tools/r8/naming/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/L;


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/naming/k0;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/naming/k0;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/naming/k0;->b:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/k0;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/k0;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/k0;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/k0;->c:I

    return v0
.end method
