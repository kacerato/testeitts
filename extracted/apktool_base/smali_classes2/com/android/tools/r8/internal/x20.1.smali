.class public final Lcom/android/tools/r8/internal/x20;
.super Lcom/android/tools/r8/internal/B20;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/D20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/x20;->h:Lcom/android/tools/r8/internal/D20;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/B20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x20;->h:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B20;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
