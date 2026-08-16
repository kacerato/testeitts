.class public final Lcom/android/tools/r8/diagnostic/internal/o;
.super Lcom/android/tools/r8/diagnostic/internal/j;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingFieldInfo;


# instance fields
.field public final b:Lcom/android/tools/r8/references/FieldReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/j;-><init>(Lcom/android/tools/r8/internal/hC;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/o;->b:Lcom/android/tools/r8/references/FieldReference;

    return-void
.end method


# virtual methods
.method public final getFieldReference()Lcom/android/tools/r8/references/FieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/o;->b:Lcom/android/tools/r8/references/FieldReference;

    return-object v0
.end method
