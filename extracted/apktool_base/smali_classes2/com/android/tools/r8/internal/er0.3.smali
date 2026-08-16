.class public final Lcom/android/tools/r8/internal/er0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/er0;->b:[I

    iput-object v0, p0, Lcom/android/tools/r8/internal/er0;->c:[I

    iput p1, p0, Lcom/android/tools/r8/internal/er0;->a:I

    return-void
.end method
