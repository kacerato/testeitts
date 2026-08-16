.class public Lcom/android/tools/r8/diagnostic/internal/e;
.super Lcom/android/tools/r8/diagnostic/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/diagnostic/internal/e$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/references/FieldReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/c;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/e;->b:Lcom/android/tools/r8/references/FieldReference;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/diagnostic/internal/e$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/e$a;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getFieldReference()Lcom/android/tools/r8/references/FieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/e;->b:Lcom/android/tools/r8/references/FieldReference;

    return-object v0
.end method
