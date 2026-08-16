.class public final Lcom/android/tools/r8/dex/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/dex/I;->a:I

    iput p2, p0, Lcom/android/tools/r8/dex/I;->b:I

    iput p3, p0, Lcom/android/tools/r8/dex/I;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/dex/I;->b:I

    return v0
.end method
