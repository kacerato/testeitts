.class public Lcom/android/tools/r8/diagnostic/internal/f;
.super Lcom/android/tools/r8/diagnostic/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/diagnostic/internal/f$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/c;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/f;->b:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/diagnostic/internal/f$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/f$a;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/f$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getMethodReference()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/f;->b:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method
