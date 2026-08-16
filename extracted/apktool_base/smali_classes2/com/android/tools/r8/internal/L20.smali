.class public final Lcom/android/tools/r8/internal/L20;
.super Lcom/android/tools/r8/internal/K20;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/M20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/M20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/L20;->g:Lcom/android/tools/r8/internal/M20;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/K20;-><init>(Lcom/android/tools/r8/internal/M20;)V

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/L20;->g:Lcom/android/tools/r8/internal/M20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/L20;->g:Lcom/android/tools/r8/internal/M20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->d()I

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
