.class public final Lcom/android/tools/r8/diagnostic/internal/h;
.super Lcom/android/tools/r8/diagnostic/internal/j;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingClassInfo;


# instance fields
.field public final b:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/j;-><init>(Lcom/android/tools/r8/internal/hC;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/h;->b:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method


# virtual methods
.method public final getClassReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/h;->b:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method
