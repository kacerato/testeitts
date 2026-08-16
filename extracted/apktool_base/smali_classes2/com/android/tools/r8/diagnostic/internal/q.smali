.class public final Lcom/android/tools/r8/diagnostic/internal/q;
.super Lcom/android/tools/r8/diagnostic/internal/j;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingMethodInfo;


# instance fields
.field public final b:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/j;-><init>(Lcom/android/tools/r8/internal/hC;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/q;->b:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method


# virtual methods
.method public final getMethodReference()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/q;->b:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method
