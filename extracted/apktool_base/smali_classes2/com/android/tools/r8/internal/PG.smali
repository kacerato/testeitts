.class public final Lcom/android/tools/r8/internal/PG;
.super Lcom/android/tools/r8/internal/OG;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/QG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/PG;->g:Lcom/android/tools/r8/internal/QG;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/OG;-><init>(Lcom/android/tools/r8/internal/QG;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
