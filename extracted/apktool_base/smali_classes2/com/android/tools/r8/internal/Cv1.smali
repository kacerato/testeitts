.class public final synthetic Lcom/android/tools/r8/internal/Cv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Cv1;->a:Z

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Cv1;->a:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/ur0;->b(Z)Z

    move-result v0

    return v0
.end method
